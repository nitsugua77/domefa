<?php

namespace Application\Controllers;

use \Ascmvc\AbstractApp;
use \Ascmvc\Mvc\Controller;
use Application\Services\SessionService;
use Application\Models\Entity\Users;


class SessionController extends Controller
{


    public static function config(AbstractApp &$app)
    {
        IndexController::config($app);
    }


    public static function postboot(AbstractApp &$app)

    {

        $em = $app->getServiceManager()->getRegisteredService('em1');

        $users = new Users();

        $sessionService = new SessionService($users, $em);

        $app->getServiceManager()->addRegisteredService('SessionService', $sessionService);
    }

    /*public function predispatch()
    {

        $em = $this->serviceManager->getRegisteredService('em1');

        $users = new Users();

        $sessionService = new SessionService($users, $em);

        $this->serviceManager->addRegisteredService('sessionService', $sessionService);

    }*/



    public function indexAction()
    {
        if (isset($_SESSION['LOGGEDIN']) && $_SESSION['LOGGEDIN'] === TRUE)
        {
            $this->view['username'] = $_SESSION['REMOTE_USER'];

            $this->viewObject->assign('view', $this->view);

            $this->viewObject->display('index_logged.tpl');
        }
        else
        {
            if (isset($GLOBALS['errormessage']))
            {
                $this->view['errormessage'] = $GLOBALS['errormessage'];
            }

            $this->viewObject->assign('view', $this->view);

            $this->viewObject->display('index_index.tpl');
        }
    }

}