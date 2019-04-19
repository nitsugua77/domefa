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
        $this->users->setPrenom("Zemour");
        $this->users->setAdressemail("zemour@connard.con");
        $this->users->setMotdepasse($userArray['password']);
        $this->users->setTelephone(0607423410);
        $this->users->setNumerocartevitale(123456789123456);
        $date = new \DateTime();
        $this->users->setDatenaissance($date);
        $this->users->setGroupesanguin("A");
        $this->users->setCartemutuelle("zemour.pdf");
        $this->users->setSexe(0);
        $this->users->setIdmedecin(1);

        return $this->users;
    }
}
