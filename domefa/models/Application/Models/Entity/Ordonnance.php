<?php

namespace Application\Models\Entity;

use Doctrine\ORM\Mapping as ORM;
use phpDocumentor\Reflection\File;

/**
 * Ordonnance
 *
 * @ORM\Entity("Application\Models\Entity\Ordonnance")
 * @ORM\Entity(repositoryClass="Application\Models\Repository\OrdonnanceRepository")
 * @ORM\Table(name="ordonnance")
 */
class Ordonnance
{
    /**
     * @var integer
     *
     * @ORM\Column(name="IdOrdonnance", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    protected $idordonnance;

    /**
     * @var integer
     *
     * @ORM\Column(name="NombreJourTraitement", type="integer")
     */
    protected $nombrejourtraitement;

    /**
     * @var integer
     *
     * @ORM\Column(name="NombreParJour", type="integer")
     */
    protected $nombreparjour;

    /**
     * @var boolean
     *
     * @ORM\Column(name="Utilisee", type="boolean")
     */
    protected $utilisee;

    /**
     * @var string
     *
     *@ORM\Column(name="IdMedicament", type="string", length=50)
     */
    protected $idmedicament;

    /**
     * @var integer
     *
     *@ORM\Column(name="IdPatient", type="integer")
     */
    protected $idpatient;

    /**
     * @var integer
     *
     *@ORM\Column(name="IdVaccin", type="integer")
     */
    protected $idvaccin;


    /**
     * Get idordonnance
     *
     * @return integer
     */
    public function getIdordonnance()
    {
        return $this->idordonnance;
    }

    /**
     * Set nombrejourtraitement
     *
     * @param integer $nombrejourtraitement
     */
    public function setNombrejourtraitement($nombrejourtraitement)
    {
        $this->nombrejourtraitement = $nombrejourtraitement;
    }

    /**
     * Get nombrejourtraitement
     *
     * @return integer
     */
    public function getNombrejourtraitement()
    {
        return $this->nombrejourtraitement;
    }

    /**
     * Set nombreparjour
     *
     * @param integer $nombreparjour
     */
    public function setNombreparjour($nombreparjour)
    {
        $this->nombreparjour = $nombreparjour;
    }

    /**
     * Get nombreparjour
     *
     * @return integer
     */
    public function getNombreparjour()
    {
        return $this->nombreparjour;
    }

    /**
     * Set utilisee
     *
     * @param boolean $utilisee
     */
    public function setUtilisee($utilisee)
    {
        $this->utilisee = $utilisee;
    }

    /**
     * Get utilisee
     *
     * @return boolean
     */
    public function getUtilisee()
    {
        return $this->utilisee;
    }

    /**
     * Set idmedicament
     *
     * @param string $idmedicament
     */
    public function setIdmedicament($idmedicament)
    {
        $this->idmedicament = $idmedicament;
    }

    /**
     * Get idmedicament
     *
     * @return string
     */
    public function getIdmedicament()
    {
        return $this->idmedicament;
    }

    /**
     * Set idpatient
     *
     * @param integer $idpatient
     */
    public function setIdpatient($idpatient)
    {
        $this->idpatient = $idpatient;
    }

    /**
     * Get idpatient
     *
     * @return integer
     */
    public function getIdpatient()
    {
        return $this->idpatient;
    }

    /**
     * Set idvaccin
     *
     * @param integer $idvaccin
     */
    public function setIdvaccin($idvaccin)
    {
        $this->idvaccin = $idvaccin;
    }

    /**
     * Get idvaccin
     *
     * @return integer
     */
    public function getIdvaccin()
    {
        return $this->idvaccin;
    }
}

