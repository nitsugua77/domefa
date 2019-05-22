<?php

namespace Application\Models\Repository;

use Application\Models\Entity\Ville;
use Doctrine\ORM\EntityRepository;

class VilleRepository extends EntityRepository
{
    protected $ville;

    public function save(array $userArray, $ville = null)
    {
        $this->ville = $this->setData($userArray, $ville);

        try {
            $this->_em->persist($this->ville);
            $this->_em->flush();
        } catch (\Exception $e) {
            return false;
        }

        return true;
    }

    public function setData(array $userArray, ville $ville = null)
    {
        if (!$ville) {
            $this->ville = new Ville();
        } else {
            $this->ville = $ville;
        }

        $this->ville->setNom($userArray['nomville']);
        $this->ville->setCodepostal($userArray['codepostal']);

        return $this->ville;
    }
}