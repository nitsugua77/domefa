<?php

namespace Application\Models\Entity;

use Doctrine\ORM\Mapping as ORM;
use phpDocumentor\Reflection\File;

/**
 * Compterendu
 *
 * @ORM\Entity("Application\Models\Entity\Compterendu")
 * @ORM\Entity(repositoryClass="Application\Models\Repository\CompterenduRepository")
 * @ORM\Table(name="compterendu")
 *
 */
class Compterendu
{
    /**
     * @var integer
     *
     * @ORM\Column(name="IdCompteRendu", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    protected $idcompterendu;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="DateCompteRendu", type="date", nullable=false)
     */
    protected $datecompterendu;

    /**
     * @var string
     *
     * @ORM\Column(name="Description", type="text", length=65535, nullable=false)
     */
    protected $description;

    /**
     * @var string
     *
     * @ORM\Column(name="DocumentAnnexe", type="blob", length=65535, nullable=true)
     */
    protected $documentannexe;

    /**
     * @var integer
     *
     * @ORM\Column(name="IdPatient", type="integer")
     */
    protected $idpatient;

    /**
     * @var integer
     *
     * @ORM\Column(name="IdMedecin", type="integer")
     */
    protected $idmedecin;


    /**
     * Get idcompterendu
     *
     * @return integer
     */
    public function getIdcompterendu()
    {
        return $this->idcompterendu;
    }

    /**
     * Set datecompterendu
     *
     * @param \DateTime $datecompterendu
     *
     */
    public function setDatecompterendu($datecompterendu)
    {
        $this->datecompterendu = $datecompterendu;
    }

    /**
     * Get datecompterendu
     *
     * @return \DateTime
     */
    public function getDatecompterendu()
    {
        return $this->datecompterendu;
    }

    /**
     * Set description
     *
     * @param string $description
     *
     */
    public function setDescription($description)
    {
        $this->description = $description;
    }

    /**
     * Get description
     *
     * @return string
     */
    public function getDescription()
    {
        return $this->description;
    }

    /**
     * Set documentannexe
     *
     * @param mixed $documentannexe
     */
    public function setDocumentannexe($documentannexe)
    {
        $this->documentannexe = $documentannexe;
    }

    /**
     * Get documentannexe
     *
     * @return mixed
     */
    public function getDocumentannexe()
    {
        return $this->documentannexe;
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
}

