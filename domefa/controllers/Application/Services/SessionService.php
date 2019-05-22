<?php

namespace Application\Services;

use Application\Models\Entity\Users;
use Application\Models\Traits\DoctrineTrait;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\Mapping\ClassMetadata;
use http\Exception;

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
        if (!isset($_SESSION['REMOTE_USER']))
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

            // Sign up patient verification
                if (isset($_POST['submit'])
                    && $_POST['submit'] == 4
                && !empty($_POST['username'])
                && !empty($_POST['password'])
                && !empty($_POST['prenom'])
                && !empty($_POST['email'])
                && !empty($_POST['telephone'])
                && !empty($_POST['numeroCarteVitale'])
                && !empty($_POST['groupeSanguin'])
                && !empty($_POST['sexe'])
                && !empty($_POST['dateNaissance'])
                && !empty($_POST['RPPSTraitant'])
                && !empty($_POST['numerores'])
                && !empty($_POST['rue'])
                && !empty($_POST['nomville'])
                && !empty($_POST['codepostal']))
            {

                if ($this->validSession === FALSE) {

                    $this->validSession = $this->session_secure_init();

                }

                $username = (string) $_POST['username'];

                $prenom = (string) $_POST['prenom'];

                $email = (string) $_POST['email'];

                $password = (string) $_POST['password'];

                $telephone = (integer) $_POST['telephone'];

                $numeroCarteVitale = (integer) $_POST['numeroCarteVitale'];

                $groupeSanguin = (string) $_POST['groupeSanguin'];

                $sexe = (string) $_POST['sexe'];

                $dateNaissance = $_POST['dateNaissance'];

                $rppstraitant = (integer) $_POST['RPPSTraitant'];

                $rue = (string) $_POST['rue'];

                $numerores = (integer) $_POST['numerores'];

                $numeroappart = (integer) $_POST['numeroappart'];

                $ville = (string) $_POST['nomville'];

                $codepostal = (integer) $_POST['codepostal'];

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

                $userArray['prenom'] = (string) $prenom;

                $userArray['email'] = (string) $email;

                $userArray['password'] = (string) $password;

                $userArray['telephone'] = (integer) $telephone;

                $userArray['numeroCarteVitale'] = (integer) $numeroCarteVitale;

                $userArray['groupeSanguin'] = (string) $groupeSanguin;

                $userArray['sexe'] = (string) $sexe;

                $userArray['dateNaissance'] = \DateTime::createFromFormat('Y-m-d', $dateNaissance);

                $data = file_get_contents($_FILES['carteMutuelle']['tmp_name']);

                $userArray['carteMutuelle'] = $data;

                $userArray['numeroappart'] = $numeroappart;

                $userArray['numerores'] = $numerores;

                $userArray['rue'] = $rue;

                $userArray['nomville'] = $ville;

                $userArray['codepostal'] = $codepostal;


                // On recherche un médecin qui possède le RPPS saisis
                $results = $this->getEm()->getRepository('Application\Models\Entity\Medecins')->findOneBy(array('rpps' => $rppstraitant));

                if(isset($results)){
                    $userArray['Idmedecin'] = $results->getIdmedecin();
                }

                if (isset($results) && $this->signUp($userArray)) {

                    // On récupère l'objet patient que l'on vient de créer
                    $resultsUser = $this->getEm()->getRepository('Application\Models\Entity\Users')->findOneBy(array('numerocartevitale' => $userArray['numeroCarteVitale']));
                    $userArray['idpatient'] = $resultsUser->getIdpatient();

                    // On regarde si la ville est déjà présente dans la BDD
                    $resultsVille = $this->getEm()->getRepository('Application\Models\Entity\Ville')->findOneBy(array('nom' => $userArray['nomville'], 'codepostal' => $userArray['codepostal']));
                    // Si elle est déjà présente ont récupère son ID
                    if (isset($resultsVille)){
                        $userArray['idville'] = $resultsVille->getIdville();
                    }
                    // Sinon on la save
                    else {
                        $this->getEm()->getRepository('Application\Models\Entity\Ville')->save($userArray);
                        // On recherche maintenant l'ID de la ville que l'on vient d'ajouter à la BDD
                        $resultsNewVille = $this->getEm()->getRepository('Application\Models\Entity\Ville')->findOneBy(array('nom' => $userArray['nomville'], 'codepostal' => $userArray['codepostal']));
                        $userArray['idville'] = $resultsNewVille->getIdville();
                    }

                    // Save l'adresse
                    $this->getEm()->getRepository('Application\Models\Entity\Adresse')->save($userArray);

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
                && !empty($_POST['numeroCarteVitale'])
                && !empty($_POST['password'])) {

                if ($this->validSession === FALSE) {

                    $this->validSession = $this->session_secure_init();

                }

                $username = (string) $_POST['numeroCarteVitale'];

                $password = (string) $_POST['password'];

                if (!ctype_alpha($username)) {

                    $username = preg_replace("/[^0-9]+/", "", $username);

                }

                if (strlen($username) > 20) {

                    $username = substr($username, 0, 19);

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
        }


    }

    public function checkLogin($username, $password)
    {
        try {
            if (isset($username)) {
                $results = $this->getEm()->getRepository('Application\Models\Entity\Users')->findOneBy(array('numerocartevitale' => $username));

            }
        } catch (\Exception $e) {
            return false;
        }

        if (isset($results)) {
            $passwordVerified = password_verify($password, $results->getMotdepasse());

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
