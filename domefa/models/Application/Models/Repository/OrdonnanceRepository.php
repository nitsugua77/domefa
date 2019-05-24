<?php

namespace Application\Models\Repository;

use Application\Models\Entity\Ordonnance;
use Doctrine\ORM\EntityRepository;

class OrdonnanceRepository extends EntityRepository
{
    protected $ordonnance;

    public function save(array $userArray, $ordonnance = null)
    {
        $this->ordonnance = $this->setData($userArray, $ordonnance);

        try {
            $this->_em->persist($this->ordonnance);
            $this->_em->flush();
        } catch (\Exception $e) {
            return false;
        }

        return true;
    }

    public function setData(array $userArray, ordonnance $ordonnance = null)
    {
        if (!$ordonnance) {
            $this->ordonnance = new Ordonnance();
        } else {
            $this->ordonnance = $ordonnance;
        }

        $this->ordonnance->setNombrejourtraitement($userArray['nbrjours']);
        $this->ordonnance->setNombreparjour($userArray['nbrprises']);
        $this->ordonnance->setUtilisee(0);
        if (isset($userArray['nommedic']))
        {
            $this->ordonnance->setIdmedicament($userArray['nommedic']);
        }
        if (isset($userArray['idvaccin']))
        {
            $this->ordonnance->setIdvaccin($userArray['idvaccin']);
        }
        $this->ordonnance->setIdpatient($userArray['idpatient']);

        return $this->ordonnance;
    }
}
