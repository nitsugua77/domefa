<?php

namespace Application\Controllers;

use \Ascmvc\AbstractApp;
use \Ascmvc\Mvc\Controller;

class IndexController extends Controller
{

    public static function config(AbstractApp &$app)
    {
        $baseConfig = $app->getBaseConfig();

        $view = [
            'urlbaseaddr' => $baseConfig['URLBASEADDR'],
            'logo' => $baseConfig['URLBASEADDR'] . 'img/smile_logo.svg',
            'favicon' => $baseConfig['URLBASEADDR'] . 'img/smile_logo.svg',
            'appname' => $baseConfig['appName'],
            'title' => "Domefa",
            'errormessage' => 0,
            'author' => 'Les Pingouins du Désert',
            'username' => null,
            'description' => 'Small application',
            'css' =>
            [
                /*$baseConfig['URLBASEADDR'] . 'css/bootstrap.min.css',
                $baseConfig['URLBASEADDR'] . 'css/dashboard.css',
                $baseConfig['URLBASEADDR'] . 'css/bootstrap.custom.css',
                $baseConfig['URLBASEADDR'] . 'css/dashboard.css',*/
                $baseConfig['URLBASEADDR'] . 'css/home.css',
                $baseConfig['URLBASEADDR'] . 'css/header.css',
                $baseConfig['URLBASEADDR'] . 'css/recherche.css',
                $baseConfig['URLBASEADDR'] . 'css/account_management_patient.css',
            ],
            'js' =>
            [
                $baseConfig['URLBASEADDR'] . 'js/jquery.min.js',
                $baseConfig['URLBASEADDR'] . 'js/bootstrap.min.js',

            ],
            'links' =>
            [
                'Home' => $baseConfig['URLBASEADDR'] . 'index.php/index',
                'Voyages_Park_Omega' => $baseConfig['URLBASEADDR'] . 'index.php/index/voyages_park_omega',
                'Index_pro' => $baseConfig['URLBASEADDR'] . 'index.php/index/index_pro',
                'Image' => $baseConfig['URLBASEADDR'] . 'img',
                'HomePatient' => $baseConfig['URLBASEADDR'] . 'index.php/recherche/account_patient',
                'HomePro' => $baseConfig['URLBASEADDR'] . 'index.php/recherche/account_medecin',
            ],

        ];

        $app->appendBaseConfig('view', $view);
    }

    public function indexAction()
    {
        $this->view['bodyjs'] = 1;

        if (isset($_SESSION['REMOTE_USER']))
        {
            $this->view['username'] = $_SESSION['REMOTE_USER'];
        }

        $this->viewObject->assign('view', $this->view);

        $this->viewObject->display('index_index.tpl');
    }

    public function index_proAction()
    {
        if (isset($_SESSION['REMOTE_USER']))
        {
            $this->view['username'] = $_SESSION['REMOTE_USER'];
        }

        $this->viewObject->assign('view', $this->view);

        $this->viewObject->display('index_index_pro.tpl');
    }


    public function signedAction()
    {
        if (isset($_SESSION['REMOTE_USER']))
        {
            $this->view['username'] = $_SESSION['REMOTE_USER'];

            $this->viewObject->assign('view', $this->view);

            $this->viewObject->display('index_index.tpl');

        }
        else
        {
            $this->viewObject->assign('view', $this->view);

            $this->viewObject->display('index_signed.tpl');
        }
    }

    public function voyages_Park_OmegaAction()
    {
        if (isset($_SESSION['REMOTE_USER']))
        {
            $this->view['username'] = $_SESSION['REMOTE_USER'];

            $this->viewObject->assign('view', $this->view);

            $this->viewObject->display('index_voyages_park_omega.tpl');

        }
        else
        {
            $this->viewObject->assign('view', $this->view);

            $this->viewObject->display('index_warning.tpl');
        }
    }

}
