<?php

namespace Application\Models\Entity;


use Doctrine\ORM\Mapping as ORM;
use phpDocumentor\Reflection\File;

/**
 * Adresse
 *
 * @ORM\Entity("Application\Models\Entity\Adresse")
 * @ORM\Entity(repositoryClass="Application\Models\Repository\AdresseRepository")
 * @ORM\Table(name="adresse")
 *
 */
class Adresse
{
    /**
     * @var integer
     *
     * @ORM\Column(name="IdAdresse", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idadresse;

    /**
     * @var integer
     *
     * @ORM\Column(name="NumeroAppartement", type="integer", nullable=true)
     */
    private $numeroappartement;

    /**
     * @var integer
     *
     * @ORM\Column(name="NumeroResidence", type="integer", nullable=false)
     */
    private $numeroresidence;

    /**
     * @var string
     *
     * @ORM\Column(name="Rue", type="string", length=100, nullable=false)
     */
    private $rue;

    /**
     * @var integer
     *
     * @ORM\Column(name="IdPatient", type="integer", nullable=true)
     */
    private $idpatient;

    /**
     * @var integer
     *
     * @ORM\Column(name="IdMedecin", type="integer", nullable=true)
     */
    private $idmedecin;

    /**
     * @var integer
     *
     * @ORM\Column(name="IdPharmacien", type="integer", nullable=true)
     */
    private $idpharmacien;

    /**
     * @var integer
     *
     * @ORM\Column(name="IdVille", type="integer", nullable=true)
     */
    private $idville;


    /**
     * Get idadresse
     *
     * @return integer
     */
    public function getIdadresse()
    {
        return $this->idadresse;
    }

    /**
     * Set numeroappartement
     *
     * @param integer $numeroappartement
     *
     */
    public function setNumeroappartement($numeroappartement)
    {
        $this->numeroappartement = $numeroappartement;
    }

    /**
     * Get numeroappartement
     *
     * @return integer
     */
    public function getNumeroappartement()
    {
        return $this->numeroappartement;
    }

    /**
     * Set numeroresidence
     *
     * @param integer $numeroresidence
     */
    public function setNumeroresidence($numeroresidence)
    {
        $this->numeroresidence = $numeroresidence;
    }

    /**
     * Get numeroresidence
     *
     * @return integer
     */
    public function getNumeroresidence()
    {
        return $this->numeroresidence;
    }

    /**
     * Set rue
     *
     * @param string $rue
     */
    public function setRue($rue)
    {
        $this->rue = $rue;
    }

    /**
     * Get rue
     *
     * @return string
     */
    public function getRue()
    {
        return $this->rue;
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
     * Set idmedecin
     *
     * @param integer $idmedecin
     */
    public function setIdmedecin($idmedecin)
    {
        $this->idmedecin = $idmedecin;
    }

    /**
     * Get idmedecin
     *
     * @return integer
     */
    public function getIdmedecin()
    {
        return $this->idmedecin;
    }

    /**
     * Set idpharmacien
     *
     * @param integer $idpharmacien
     */
    public function setIdpharmacien($idpharmacien)
    {
        $this->idpharmacien = $idpharmacien;
    }

    /**
     * Get idpharmacien
     *
     * @return integer
     */
    public function getIdpharmacien()
    {
        return $this->idpharmacien;
    }

    /**
     * Set idville
     *
     * @param integer $idville
     */
    public function setIdville($idville)
    {
        $this->idville = $idville;
    }

    /**
     * Get idville
     *
     * @return integer
     */
    public function getIdville()
    {
        return $this->idville;
    }
}

