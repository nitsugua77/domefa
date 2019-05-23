<?php

namespace Application\Models\Repository;

use Application\Models\Entity\Compterendu;
use Doctrine\ORM\EntityRepository;

class CompterenduRepository extends EntityRepository
{
    protected $compterendu;

    public function save(array $userArray, $compterendu = null)
    {
        $this->compterendu = $this->setData($userArray, $compterendu);

        try {
            $this->_em->persist($this->compterendu);
            $this->_em->flush();
        } catch (\Exception $e) {
            return false;
        }

        return true;
    }

    public function setData(array $userArray, Compterendu $compterendu = null)
    {
        if (!$compterendu) {
            $this->compterendu = new Compterendu();
        } else {
            $this->compterendu = $compterendu;
        }

        $this->compterendu->setDatecompterendu($userArray['datecompterendu']);
        $this->compterendu->setDescription($userArray['description']);
        if (isset($userArray['documentannexe'])){
            $this->compterendu->setDocumentannexe($userArray['documentannexe']);
        }
        $this->compterendu->setIdmedecin($userArray['idmedecin']);
        $this->compterendu->setIdpatient($userArray['idpatient']);

        return $this->compterendu;
    }
}
