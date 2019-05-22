<?php

namespace Application\Models\Repository;

use Application\Models\Entity\Adresse;
use Doctrine\ORM\EntityRepository;

class AdresseRepository extends EntityRepository
{
    protected $adresse;

    public function save(array $userArray, $adresse = null)
    {
        $this->adresse = $this->setData($userArray, $adresse);

        try {
            $this->_em->persist($this->adresse);
            $this->_em->flush();
        } catch (\Exception $e) {
            return false;
        }

        return true;
    }

    public function setData(array $userArray, adresse $adresse = null)
    {
        if (!$adresse) {
            $this->adresse = new Adresse();
        } else {
            $this->adresse = $adresse;
        }

        $this->adresse->setNumeroappartement($userArray['numeroappart']);
        $this->adresse->setNumeroresidence($userArray['numerores']);
        $this->adresse->setRue($userArray['rue']);
        $this->adresse->setIdpatient($userArray['idpatient']);
        $this->adresse->setIdmedecin($userArray['idmedecin']);
        $this->adresse->setIdpharmacien($userArray['idpharmacien']);
        $this->adresse->setIdville($userArray['idville']);

        return $this->adresse;
    }
}