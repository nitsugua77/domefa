<?php

namespace Application\Controllers;

use \Ascmvc\AbstractApp;
use \Ascmvc\Mvc\Controller;
use Application\Services\SessionProService;
use Application\Models\Entity\Medecins;


class SessionProController extends Controller
{


    public static function config(AbstractApp &$app)
    {
        IndexController::config($app);
    }


    public static function postboot(AbstractApp &$app)

    {

        $em = $app->getServiceManager()->getRegisteredService('em1');

        $users = new Medecins();

        $sessionProService = new SessionProService($users, $em);

        $app->getServiceManager()->addRegisteredService('SessionProService', $sessionProService);
    }


    public function indexAction()
    {
        if (isset($_SESSION['LOGGEDIN']) && $_SESSION['LOGGEDIN'] === TRUE)
        {
            $this->view['username'] = $_SESSION['REMOTE_USER'];

            $this->view['typeuser'] = $_SESSION['TYPE_USER'];

            $this->viewObject->assign('view', $this->view);

            $this->viewObject->display('index_account_management_medecin.tpl');
        }
        else {
            if (isset($GLOBALS['errormessage'])) {
                echo $GLOBALS['errormessage'];
                $this->view['errormessage'] = $GLOBALS['errormessage'];

                if ($GLOBALS['errormessage'] == 1 || $GLOBALS['errormessage'] == 3) {
                    $this->viewObject->assign('view', $this->view);

                    $this->viewObject->display('index_mdp_incorrect.tpl');
                } else if ($GLOBALS['errormessage'] == 2) {
                    $this->viewObject->assign('view', $this->view);

                    $this->viewObject->display('logout.tpl');
                }
            } else {
                $this->viewObject->assign('view', $this->view);

                $this->viewObject->display('index_index.tpl');
            }
        }
    }

}