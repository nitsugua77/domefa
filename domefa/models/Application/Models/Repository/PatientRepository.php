<?php

namespace Application\Models\Repository;

use Application\Models\Entity\Patient;
use Doctrine\ORM\EntityRepository;

class PatientRepository extends EntityRepository
{
    protected $patient;

    public function save(array $userArray, $users = null)
    {
        echo "PUUUUUUUUUUUUUUUUUUUUTEEEEEEEEEE";
        $this->patient = $this->setData($userArray, $users);

        try {
            $this->_em->persist($this->patient);
            $this->_em->flush();
        } catch (\Exception $e) {
            return false;
        }

        return true;
    }

    public function setData(array $userArray, Patient $patient = null)
    {
        if (!$patient) {
            $this->patient = new Patient();
        } else {
            $this->patient = $patient;
        }

        $this->patient->setNom($userArray['username']);
        $this->patient->setMotDePasse($userArray['password']);


        return $this->patient;
    }
}