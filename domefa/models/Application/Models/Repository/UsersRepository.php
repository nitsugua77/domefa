<?php

namespace Application\Models\Repository;

use Application\Models\Entity\Users;
use Doctrine\ORM\EntityRepository;

class UsersRepository extends EntityRepository
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

    public function setData(array $userArray, users $users = null)
    {
        if (!$users) {
            $this->users = new Users();
        } else {
            $this->users = $users;
        }

        $this->users->setNom($userArray['username']);
        $this->users->setPrenom($userArray['prenom']);
        $this->users->setAdressemail($userArray['email']);
        $this->users->setMotdepasse($userArray['password']);
        $this->users->setTelephone($userArray['telephone']);
        $this->users->setNumerocartevitale($userArray['numeroCarteVitale']);
        $date = new \DateTime();
        $this->users->setDatenaissance($date);
        $this->users->setGroupesanguin($userArray['groupeSanguin']);
        $this->users->setCartemutuelle($userArray['carteMutuelle']);
        $this->users->setSexe($userArray['sexe']);
        $this->users->setIdmedecin(1);

        return $this->users;
    }
}
