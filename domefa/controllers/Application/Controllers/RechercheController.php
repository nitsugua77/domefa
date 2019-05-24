<?php

namespace Application\Controllers;


use Application\Models\Entity\Compterendu;
use Application\Models\Entity\Medecins;
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

            $this->view['typeuser'] = $_SESSION['TYPE_USER'];

            $this->viewObject->assign('view', $this->view);

            $this->viewObject->display('index_recherche_patient.tpl');
        }
        else
        {
            $this->viewObject->assign('view', $this->view);

            $this->viewObject->display('index_warning.tpl');
        }
    }

    public function indexMedecinAction()
    {
        if (isset($_SESSION['REMOTE_USER']))
        {

            $this->view['username'] = $_SESSION['REMOTE_USER'];

            $this->view['typeuser'] = $_SESSION['TYPE_USER'];

            $this->viewObject->assign('view', $this->view);

            $this->viewObject->display('index_recherche_medecin.tpl');
        }
        else
        {
            $this->viewObject->assign('view', $this->view);

            $this->viewObject->display('index_warning.tpl');
        }
    }

    public function imcAction()
    {
        if (isset($_SESSION['REMOTE_USER']))
        {
            $this->view['username'] = $_SESSION['REMOTE_USER'];

            $this->view['typeuser'] = $_SESSION['TYPE_USER'];

            $this->viewObject->assign('view', $this->view);

            $this->viewObject->display('index_imc.tpl');
        }
        else
        {
            $this->viewObject->assign('view', $this->view);

            $this->viewObject->display('index_warning.tpl');
        }
    }

    public function ajout_compte_renduAction()
    {
        if (isset($_SESSION['REMOTE_USER']))
        {
            if (!empty($_POST['numerocartevitale']) && !empty($_POST['datecompterendu']) && !empty($_POST['description']) && isset($_POST['submit'])
                && $_POST['submit'] == 4){
                $resultP = $this->getUsers()->readCV($_POST['numerocartevitale']);
                $crArray['idpatient'] = $resultP->getIdpatient();
                $crArray['datecompterendu'] = \DateTime::createFromFormat('Y-m-d', $_POST['datecompterendu']);
                $crArray['description'] = (string) $_POST['description'];
                if (!empty($_POST['docummentannexe'])) {
                    $data = file_get_contents($_FILES['documentannexe']['tmp_name']);
                    $crArray['documentannexe'] = $data;
                }
                $crArray['idmedecin'] = ($this->getUsers()->readMedecin($_SESSION['REMOTE_USER']))->getIdmedecin();

                if($this->getUsers()->saveCompteRendu($crArray)){
                    $this->view['message'] = "Ajout du compte rendu réussi";
                }
                else {
                    $this->view['message'] = "Erreur lors de l'ajout";
                }
            }
            if (!empty($_POST['numerocartevitale']) && !empty($_POST['nbrjours']) && !empty($_POST['nbrprises']) && !empty($_POST['nommedic']) && isset($_POST['submit'])
                && $_POST['submit'] == 5){
                $resultP = $this->getUsers()->readCV($_POST['numerocartevitale']);
                $orArray['idpatient'] =(integer) $resultP->getIdpatient();
                $orArray['nbrjours'] = (integer) $_POST['nbrjours'];
                $orArray['nbrprises'] = (integer) $_POST['nbrprises'];
                $orArray['nommedic'] = (string) $_POST['nommedic'];

                if($this->getUsers()->saveOrdonnance($orArray)){
                    $this->view['message2'] = "Ajout de l'ordonnance réussi";
                }
                else {
                    $this->view['message2'] = "Erreur lors de l'ajout";
                }
            }
            $this->view['username'] = $_SESSION['REMOTE_USER'];

            $this->view['typeuser'] = $_SESSION['TYPE_USER'];

            $this->viewObject->assign('view', $this->view);

            $this->viewObject->display('index_ajout_compte_rendu.tpl');
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
                && $_POST['submit'] == 11) {
                $results = $this->getUsers()->readCV($_POST['numerocartevitale']);
                if (is_object($results)) {
                    $results = [$this->hydrateArray($results)];
                }
            }

            if (!empty($_POST['nom']) && isset($_POST['submit'])
                && $_POST['submit'] == 7){
                $results = $this->getUsers()->findMedecinNom($_POST['nom']);
                if (is_object($results)) {
                    $results = [$this->hydrateArrayMedecin($results)];
                } else if (!empty($results)) {
                    for ($i = 0; $i < count($results); $i++) {
                        $results[$i] = $this->hydrateArrayMedecin($results[$i]);
                    }
                }
            }
            else if (!empty($_POST['codepostal']) && isset($_POST['submit'])
                && $_POST['submit'] == 3){
                $results = $this->getUsers()->findMedecinCP($_POST['codepostal']);
                if (is_object($results)) {
                    $results = [$this->hydrateArrayMedecin($results)];
                } else {
                    for ($i = 0; $i < count($results); $i++) {
                        $results[$i] = $this->hydrateArrayMedecin($results[$i]);
                    }
                }
            }

            $this->view['results'] = $results;

            $this->view['username'] = $_SESSION['REMOTE_USER'];

            $this->view['typeuser'] = $_SESSION['TYPE_USER'];

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

            $resultsCR = $this->getUsers()->findComptesRendus($_SESSION['REMOTE_USER']);

            if (is_object($resultsCR)) {
                $resultsCR = [$this->hydrateArray($resultsCR)];
            } else {
                for ($i = 0; $i < count($resultsCR); $i++) {
                    $resultsCR[$i] = $this->hydrateArrayCR($resultsCR[$i]);
                }
            }

            $this->view['results'] = $results;

            $this->view['resultsCR'] = $resultsCR;

            $this->view['username'] = $_SESSION['REMOTE_USER'];

            $this->view['typeuser'] = $_SESSION['TYPE_USER'];

            $this->viewObject->assign('view', $this->view);

            $this->viewObject->display('index_account_management.tpl');

        }
        else
        {
            $this->viewObject->assign('view', $this->view);

            $this->viewObject->display('index_warning.tpl');
        }
    }

    public function account_medecinAction()
    {
        if (isset($_SESSION['REMOTE_USER']))
        {
            $results = $this->getUsers()->readMedecin($_SESSION['REMOTE_USER']);
            if (is_object($results)) {
                $results = $this->hydrateArrayMedecin($results);
            }

            $resultsCR = $this->getUsers()->findComptesRendusMedecin($_SESSION['REMOTE_USER']);

            if (is_object($resultsCR)) {
                $resultsCR = [$this->hydrateArray($resultsCR)];
            } else {
                for ($i = 0; $i < count($resultsCR); $i++) {
                    $resultsCR[$i] = $this->hydrateArrayCR($resultsCR[$i]);
                }
            }

            $this->view['results'] = $results;

            $this->view['resultsCR'] = $resultsCR;

            $this->view['username'] = $_SESSION['REMOTE_USER'];

            $this->view['typeuser'] = $_SESSION['TYPE_USER'];

            $this->viewObject->assign('view', $this->view);

            $this->viewObject->display('index_account_management_medecin.tpl');

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

    protected function hydrateArrayCR(Compterendu $object)
    {
        $array['datecompterendu'] = $object->getDatecompterendu()->format('Y-m-d');;
        $array['description'] = $object->getDescription();
        $array['medecin'] = $this->getUsers()->findNomPrenomMedecin($object->getIdmedecin());
        $array['patient'] = $this->getUsers()->findNomPrenomPatient($object->getIdpatient());
        //$array['documentannexe'] = $object->getDocumentannexe();
        return $array;
    }

    protected function hydrateArrayMedecin(Medecins $object)
    {
        $array['nom'] = $object->getNom();
        $array['prenom'] = $object->getPrenom();
        $array['specialisation'] = $object->getSpecialisation();
        $array['email'] = $object->getAdressemail();
        $array['rpps'] = $object->getRpps();
        $array['telephone'] = $object->getTelephone();
        $arrayAdresse = $this->getUsers()->findAdresseMedecin($object->getIdmedecin());
        $array['adresse'] = $arrayAdresse['adresse'];
        $array['codepostal'] = $arrayAdresse['codepostal'];
        $array['ville'] = $arrayAdresse['ville'];

        return $array;
    }

    public function calendrierAction()
    {
        if (isset($_SESSION['REMOTE_USER']))
        {
            $this->view['username'] = $_SESSION['REMOTE_USER'];

            $this->viewObject->assign('view', $this->view);

            $this->viewObject->display('index_calendrier.tpl');

        }
        else
        {
            $this->viewObject->assign('view', $this->view);

            $this->viewObject->display('index_warning.tpl');
        }
    }
}