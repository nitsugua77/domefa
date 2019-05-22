<?php

namespace Application\Models\Repository;

use Application\Models\Entity\Medecins;
use Doctrine\ORM\EntityRepository;

class MedecinsRepository extends EntityRepository
{
    protected $users;

    public function save(array $userArray, $users = null)
    {
        $this->users = $this->setData($userArray, $users);

        try {
            $this->_em->persist($this->users);
            $this->_em->flush();
        } catch (\Exception $e) {
            return false;
        }

        return true;
    }

    public function setData(array $userArray, Medecins $users = null)
    {
        if (!$users) {
            $this->users = new Medecins();
        } else {
            $this->users = $users;
        }

        $this->users->setNom($userArray['username']);
        $this->users->setPrenom($userArray['prenom']);
        $this->users->setAdressemail($userArray['email']);
        $this->users->setMotdepasse($userArray['password']);
        $this->users->setTelephone($userArray['telephone']);
        $this->users->setRpps($userArray['RPPS']);
        $this->users->setSignature($userArray['signature']);
        $this->users->setSpecialisation($userArray['specialisation']);


        return $this->users;
    }
}
