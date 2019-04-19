<?php

namespace Application\Services;

use Application\Models\Entity\Users;
use Application\Models\Traits\DoctrineTrait;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\Mapping\ClassMetadata;

class SessionService
{

    use DoctrineTrait;

    protected $loginCheck;

    protected $validSession;

    protected $postLoginForm;

    protected $users;

    protected $redirectCounter;

    public function __construct(Users $users, EntityManager $em)
    {
        $this->users = $users;

        $this->em = $em;

        // Set flags.
        $this->loginCheck = FALSE;

        $this->validSession = FALSE;

        $this->postLoginForm = TRUE;

        // Initialize application business and frontend messages.
        $GLOBALS['errormessage'] = 0;

        $this->redirectCounter = 0;

        // Check if user is already logged in.
        if (isset($_COOKIE['loggedin'])) {

            if ($this->validSession === FALSE) {

                $this->validSession = $this->session_secure_init();

            }

            //  Check for cookie tampering.
            if ($this->validSession === TRUE && isset($_SESSION['LOGGEDIN'])) {

                $this->postLoginForm = FALSE;

            } else {

                $this->validSession = $this->session_obliterate();

                $GLOBALS['errormessage'] = 3;

                $this->postLoginForm = TRUE;

            }

            // Cookie login check done.
            $this->loginCheck = TRUE;

        }

        // Sign up verification
        if (isset($_POST['submit'])
            && $_POST['submit'] == 4
            && !empty($_POST['username'])
            && !empty($_POST['password'])) {

            if ($this->validSession === FALSE) {

                $this->validSession = $this->session_secure_init();

            }

            $username = (string) $_POST['username'];

            $password = (string) $_POST['password'];

            if (!ctype_alpha($username)) {

                $username = preg_replace("/[^a-zA-Z]+/", "", $username);

            }

            if (strlen($username) > 40) {

                $username = substr($username, 0, 39);

            }

            $password = preg_replace("/[^_a-zA-Z0-9]+/", "", $password);

            if (strlen($password) > 40) {

                $password = substr($password, 0, 39);

            }

            $password = password_hash($password, PASSWORD_DEFAULT);
            $userArray['username'] = (string) $username;
            $userArray['password'] = (string) $password;

            if ($this->signUp($userArray)) {
                if ($this->validSession === TRUE) {

                    //  Check for cookie tampering.
                    if (isset($_SESSION['LOGGEDIN'])) {

                        $this->validSession = $this->session_obliterate();
                        $GLOBALS['errormessage'] = 3;
                        $this->postLoginForm = TRUE;

                    }
                } else {

                    $this->validSession = $this->session_obliterate();
                    $GLOBALS['errormessage'] = 3;
                    $this->postLoginForm = TRUE;

                }
                header("Location: http://127.0.0.2/index.php/index/signed");

            }
            else {

                $this->validSession = $this->session_obliterate();
                $GLOBALS['errormessage'] = 1;
                $this->postLoginForm = TRUE;

            }

        }

        // Login verification.
        if (isset($_POST['submit'])
            && $_POST['submit'] == 1
            && !empty($_POST['username'])
            && !empty($_POST['password'])) {

            if ($this->validSession === FALSE) {

                $this->validSession = $this->session_secure_init();

            }

            $username = (string) $_POST['username'];

            $password = (string) $_POST['password'];

            if (!ctype_alpha($username)) {

                $username = preg_replace("/[^a-zA-Z]+/", "", $username);

            }

            if (strlen($username) > 40) {

                $username = substr($username, 0, 39);

            }

            $password = preg_replace("/[^_a-zA-Z0-9]+/", "", $password);

            if (strlen($password) > 40) {

                $password = substr($password, 0, 39);

            }

            // Check credentials.
            if ($this->checkLogin($username, $password)) {

                if ($this->validSession === TRUE) {

                    //  Check for cookie tampering.
                    if (isset($_SESSION['LOGGEDIN'])) {

                        $this->validSession = $this->session_obliterate();
                        $GLOBALS['errormessage'] = 3;
                        $this->postLoginForm = TRUE;

                    } else {

                        setcookie('loggedin', TRUE, time()+ 4200, '/');
                        $_SESSION['LOGGEDIN'] = TRUE;
                        $_SESSION['REMOTE_USER'] = $username;
                        $this->postLoginForm = FALSE;
                    }

                } else {

                    $this->validSession = $this->session_obliterate();
                    $GLOBALS['errormessage'] = 3;
                    $this->postLoginForm = TRUE;

                }

            } else {

                $this->validSession = $this->session_obliterate();
                $GLOBALS['errormessage'] = 1;
                $this->postLoginForm = TRUE;

            }

            // Username-password login check done.
            $this->loginCheck = TRUE;

        }

        // Intercept logout POST.
        if (isset($_POST['logout'])) {

            if ($this->validSession === FALSE) {

                $this->session_secure_init();

            }

            $this->validSession = $this->session_obliterate();
            $GLOBALS['errormessage'] = 2;
            $this->postLoginForm = TRUE;

        }

        // Intercept invalid sessions and redirect to login page.
        if ($this->loginCheck === TRUE && $this->validSession === FALSE && $GLOBALS['errormessage'] === 0) {

            if ($this->validSession === FALSE) {

                $this->validSession = $this->session_secure_init();
                $this->validSession = $this->session_obliterate();

            }

            $GLOBALS['errormessage'] = 3;
            $this->postLoginForm = TRUE;

        }

        /*
        // Prepare view output.
        if ($this->postLoginForm === TRUE) {

        }
        else {

        }
        */
    }

    public function checkLogin($username, $password)
    {
        try {
            if (isset($username)) {

                $results = $this->getEm()->getRepository('Application\Models\Entity\Users')->findOneBy(array('username' => $username));
            }
        } catch (\Exception $e) {
            return false;
        }

        if (isset($results)) {
            $passwordVerified = password_verify($password, $results->getPassword());
            return $passwordVerified;
        }
        else {
            return false;
        }
    }

    public function signUp(array $array)
    {
        try {
            $this->getEm()->getRepository('Application\Models\Entity\Users')->save($array);
        } catch (\Exception $e) {
            return false;
        }

        return true;
    }


    function session_obliterate()
    {

        $_SESSION = array();
        setcookie(session_name(),'', time() - 3600, '/');
        setcookie('loggedin', '', time() - 3600, '/');
        session_destroy();   // Destroy session data in storage.
        session_unset();     // Unset $_SESSION variable for the runtime.
        $this->validSession = FALSE;
        return $this->validSession;

    }

    function session_secure_init()
    {
        session_set_cookie_params(4200);

        $this->validSession = TRUE;

        if (!defined('OURUNIQUEKEY')) {

            define('OURUNIQUEKEY', 'phpi');

        }

        // Avoid session prediction.
        $this->sessionname = OURUNIQUEKEY;

        if (session_name() != $this->sessionname) {

            session_name($this->sessionname);

        } else {

            session_name();

        }

        // Start session.
        session_start();

        if ((!isset($_COOKIE['loggedin']) && isset($_SESSION['LOGGEDIN']))
            ^ (isset($_COOKIE['loggedin']) && !isset($_SESSION['LOGGEDIN']))) {

            $this->validSession = FALSE;

        }

        if ($this->validSession == TRUE) {

            // Avoid session fixation.
            if (!isset($_SESSION['INITIATED'])) {

                session_regenerate_id();
                $_SESSION['INITIATED'] = TRUE;

            }

            if (!isset($_SESSION['CREATED'])) {

                $_SESSION['CREATED'] = time();

            }

            if (time() - $_SESSION['CREATED'] > 3600) {

                // Session started more than 60 minutes ago.
                session_regenerate_id();    // Change session ID for the current session an invalidate old session ID.
                $_SESSION['CREATED'] = time();  // Update creation time.

            }

            // Avoid session hijacking.
            $this->useragent = $_SERVER['HTTP_USER_AGENT'];

            $this->useragent .= OURUNIQUEKEY;

            if (isset($_SESSION['HTTP_USER_AGENT'])) {

                if ($_SESSION['HTTP_USER_AGENT'] != md5($this->useragent)) {

                    $this->validSession = FALSE;

                }

            } else {

                $_SESSION['HTTP_USER_AGENT'] = md5($this->useragent);

            }

            // Avoid session fixation in case of an inactive session.
            if ($this->validSession == TRUE && isset($_SESSION['LAST_ACTIVITY']) && (time() - $_SESSION['LAST_ACTIVITY']) > 3600) {

                // Last request was more than 60 minutes ago.
                $this->validSession = FALSE;

            } else {

                $_SESSION['LAST_ACTIVITY'] = time(); // Update last activity timestamp.

            }

        }

        return $this->validSession;

    }

}
