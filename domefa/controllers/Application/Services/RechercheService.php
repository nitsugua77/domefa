<?php

namespace Application\Services;

use Application\Models\Entity\Users;
use Application\Models\Traits\DoctrineTrait;
use Application\Models\Repository\UsersRepository;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\Mapping\ClassMetadata;

class RechercheService
{

    use DoctrineTrait;

    protected $objets;

    protected $objetsRepository;

    public function __construct(Users $objets, EntityManager $em)
    {
        $this->objets = $objets;

        $this->em = $em;

        $this->objetsRepository = new usersRepository(
            $this->em,
            new ClassMetaData('Application\Models\Entity\Users')
        );
    }

    public function create(array $array)
    {
        try {
            $this->objetsRepository->save($array);
        } catch (\Exception $e) {
            return false;
        }

        return true;
    }

    public function read($nom, $prenom)
    {
        try {
            if (isset($nom) && isset($prenom)) {
                $results = $this->objetsRepository->findBy(array('nom' => $nom, 'prenom' => $prenom));

            }
        } catch (\Exception $e) {
            return false;
        }

        return $results;
    }

    public function readCV($numerocartevitale)
    {
        try {
            if (isset($numerocartevitale)) {
                $results = $this->objetsRepository->findOneBy(array('numerocartevitale' => $numerocartevitale));
            }
        } catch (\Exception $e) {
            return false;
        }

        return $results;
    }

    public function update(array $array)
    {
        try {
            if (isset($array['id'])) {
                $objets = $this->getEm()->find(Users::class, $array['id']);
                $this->objetsRepository->save($array, $objets);
            }
        } catch (\Exception $e) {
            return false;
        }

        return true;
    }

    public function findNomPrenomMedecin($idMedecin)
    {
        try {
            if (isset($idMedecin)) {
                $results = $this->em->getRepository('Application\Models\Entity\Medecins')->findOneBy(array('idmedecin' => $idMedecin));
                if(isset($results)){
                    return $results->getPrenom() . " " . $results->getNom();
                }
            }
        } catch (\Exception $e) {
            return false;
        }
    }

    public function findAdresse($idPatient)
    {
        try {
            if (isset($idPatient)) {
                $results = $this->em->getRepository('Application\Models\Entity\Adresse')->findOneBy(array('idpatient' => $idPatient));
                if(isset($results)){
                    $array['adresse'] = $results->getNumeroresidence() . " " . $results->getNumeroresidence() . " " . $results->getRue();
                    if (!empty($results->getNumeroappartement())) {
                        $array['adresse'] = $results->getNumeroappartement() . " " . $array['adresse'];
                    }
                    if (!empty($results->getIdville())){
                        $resultsville = $this->em->getRepository('Application\Models\Entity\Ville')->findOneBy(array('idville' => $results->getIdville()));
                        $array['ville'] = $resultsville->getNom();
                        $array['codepostal'] = $resultsville->getCodepostal();;
                    }
                    return $array;
                }
            }
        } catch (\Exception $e) {
            return false;
        }
    }

    public function findAdresseMedecin($idMedecin)
    {
        try {
            if (isset($idMedecin)) {
                $results = $this->em->getRepository('Application\Models\Entity\Adresse')->findOneBy(array('idmedecin' => $idMedecin));
                if(isset($results)){
                    $array['adresse'] = $results->getNumeroresidence() . " " . $results->getNumeroresidence() . " " . $results->getRue();
                    if (!empty($results->getNumeroappartement())) {
                        $array['adresse'] = $results->getNumeroappartement() . " " . $array['adresse'];
                    }
                    if (!empty($results->getIdville())){
                        $resultsville = $this->em->getRepository('Application\Models\Entity\Ville')->findOneBy(array('idville' => $results->getIdville()));
                        $array['ville'] = $resultsville->getNom();
                        $array['codepostal'] = $resultsville->getCodepostal();;
                    }
                    return $array;
                }
            }
        } catch (\Exception $e) {
            return false;
        }
    }

    public function findComptesRendus($numerocartevitale)
    {
        try {
            if (isset($numerocartevitale)) {
                $resultsP = $this->objetsRepository->findOneBy(array('numerocartevitale' => $numerocartevitale));
            }
        } catch (\Exception $e) {
            return false;
        }
        try {
            if (isset($resultsP)) {
                $results = $this->em->getRepository('Application\Models\Entity\Compterendu')->findBy(array('idpatient' => $resultsP->getIdpatient()), array('datecompterendu' => 'desc'));
            }
        } catch (\Exception $e) {
            return false;
        }
        return $results;
    }

    public function findComptesRendusMedecin($rpps)
    {
        try {
            if (isset($rpps)) {
                $resultsP =$this->em->getRepository('Application\Models\Entity\Medecins')->findOneBy(array('rpps' => $rpps));
            }
        } catch (\Exception $e) {
            return false;
        }
        try {
            if (isset($resultsP)) {
                $results = $this->em->getRepository('Application\Models\Entity\Compterendu')->findBy(array('idmedecin' => $resultsP->getIdMedecin()), array('datecompterendu' => 'desc'));
            }
        } catch (\Exception $e) {
            return false;
        }
        return $results;
    }

    public function readMedecin($rpps)
    {
        try {
            if (isset($rpps)) {
                $results = $this->em->getRepository('Application\Models\Entity\Medecins')->findOneBy(array('rpps' => $rpps));

            }
        } catch (\Exception $e) {
            return false;
        }

        return $results;
    }

    public function findNomPrenomPatient($idpatient)
    {
        try {
            if (isset($idpatient)) {
                $results = $this->em->getRepository('Application\Models\Entity\Users')->findOneBy(array('idpatient' => $idpatient));
                if(isset($results)){
                    return $results->getPrenom() . " " . $results->getNom() . " " . $results->getNumerocartevitale();
                }
            }
        } catch (\Exception $e) {
            return false;
        }
    }

    public function saveCompteRendu($array)
    {
        try {
            if (isset($array)) {
                $this->em->getRepository('Application\Models\Entity\Compterendu')->save($array);
                return true;
            }
            return false;
        } catch (\Exception $e) {
            return false;
        }
    }

    public function saveOrdonnance($array)
    {
        try {
            if (isset($array)) {
                $this->em->getRepository('Application\Models\Entity\Ordonnance')->save($array);
                return true;
            }
            return false;
        } catch (\Exception $e) {
            return false;
        }
    }

}
