<?php

namespace Application\Controllers;


use \Ascmvc\AbstractApp;
use \Ascmvc\Mvc\Controller;
use Application\Services\RechercheService;
use Application\Services\RechercheServiceTrait;
use Application\Models\Entity\Users;


class RechercheController extends Controller
{

    use RechercheServiceTrait;

    public static function config(AbstractApp &$app)
    {
        IndexController::config($app);
    }

    public function predispatch()
    {

        $em = $this->serviceManager->getRegisteredService('em1');

        $users = new Users();

        $rechercheService = new RechercheService($users, $em);

        $this->serviceManager->addRegisteredService('rechercheService', $rechercheService);

        $this->setUsers($this->serviceManager->getRegisteredService('rechercheService'));

        $this->view['saved'] = 0;

        $this->view['error'] = 0;

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
            if (!empty($_POST['username']) && !empty($_POST['prenom']) && isset($_POST['submit'])
                && $_POST['submit'] == 10) {
                $results = $this->getUsers()->read($_POST['username'],$_POST['prenom']);
                if (is_object($results)) {
                    $results = [$this->hydrateArray($results)];
                } else {
                    for ($i = 0; $i < count($results); $i++) {
                        $results[$i] = $this->hydrateArray($results[$i]);
                    }
                }
            }
            else if (!empty($_POST['numerocartevitale']) && isset($_POST['submit'])
                && $_POST['submit'] == 8) {
                $results = $this->getUsers()->readCV($_POST['numerocartevitale']);
                if (is_object($results)) {
                    $results = [$this->hydrateArray($results)];
                }
            }

            $this->view['results'] = $results;

            $this->view['username'] = $_SESSION['REMOTE_USER'];

            $this->viewObject->assign('view', $this->view);

            $this->viewObject->display('index_resultats.tpl');
        }
        else
        {
            $this->viewObject->assign('view', $this->view);

            $this->viewObject->display('index_warning.tpl');
        }
    }

    public function account_patientAction()
    {
        if (isset($_SESSION['REMOTE_USER']))
        {
            $results = $this->getUsers()->readCV($_SESSION['REMOTE_USER']);
            if (is_object($results)) {
                $results = $this->hydrateArray($results);
            }
            $this->view['results'] = $results;

            $this->view['username'] = $_SESSION['REMOTE_USER'];

            $this->viewObject->assign('view', $this->view);

            $this->viewObject->display('index_account_management.tpl');

        }
        else
        {
            $this->viewObject->assign('view', $this->view);

            $this->viewObject->display('index_warning.tpl');
        }
    }

    protected function hydrateArray(Users $object)
    {
        $array['nom'] = $object->getNom();
        $array['prenom'] = $object->getPrenom();
        $array['numerocartevitale'] = $object->getNumerocartevitale();
        $array['telephone'] = $object->getTelephone();
        $array['email'] = $object->getAdressemail();
        $array['datenaissance'] = ($object->getDatenaissance())->format('Y-m-d');
        $array['groupesanguin'] = $object->getGroupesanguin();
        $array['medecintraitant'] = $this->getUsers()->findNomPrenomMedecin($object->getIdmedecin());
        $array['idmedecin'] = $object->getIdmedecin();

        $arrayAdresse = $this->getUsers()->findAdresse($object->getIdpatient());
        $array['adresse'] = $arrayAdresse['adresse'];
        $array['codepostal'] = $arrayAdresse['codepostal'];
        $array['ville'] = $arrayAdresse['ville'];

        return $array;
    }
}