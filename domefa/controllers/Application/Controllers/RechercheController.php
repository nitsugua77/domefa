<?php

namespace Application\Controllers;


use \Ascmvc\AbstractApp;
use \Ascmvc\Mvc\Controller;
use Application\Services\RechercheService;
use Application\Services\RechercheServiceTrait;
use Application\Models\Entity\Users;


class RechercheController extends Controller
{
    public static function config(AbstractApp &$app)
    {
        IndexController::config($app);
    }

    public function indexAction()
    {
        if (isset($_SESSION['REMOTE_USER']))
        {

            $this->view['username'] = $_SESSION['REMOTE_USER'];

            $this->viewObject->assign('view', $this->view);

            $this->viewObject->display('index_recherche_patient.tpl');
        }
        else
        {
            $this->viewObject->assign('view', $this->view);

            $this->viewObject->display('index_warning.tpl');
        }
    }

    public function rechercheAction()
    {
        if (isset($_SESSION['REMOTE_USER']))
        {

            $this->view['username'] = $_SESSION['REMOTE_USER'];

            $this->viewObject->assign('view', $this->view);

            $this->viewObject->display('index_resultat.tpl');
        }
        else
        {
            $this->viewObject->assign('view', $this->view);

            $this->viewObject->display('index_warning.tpl');
        }
    }
}