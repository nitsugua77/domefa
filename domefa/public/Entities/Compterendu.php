<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * Compterendu
 *
 * @ORM\Table(name="compterendu", indexes={@ORM\Index(name="IdPatient", columns={"IdPatient"}), @ORM\Index(name="IdMedecin", columns={"IdMedecin"})})
 * @ORM\Entity
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
    private $idcompterendu;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="DateCompteRendu", type="date", nullable=false)
     */
    private $datecompterendu;

    /**
     * @var string
     *
     * @ORM\Column(name="Description", type="text", length=65535, nullable=false)
     */
    private $description;

    /**
     * @var string
     *
     * @ORM\Column(name="DocumentAnnexe", type="blob", length=65535, nullable=true)
     */
    private $documentannexe;

    /**
     * @var \Patient
     *
     * @ORM\ManyToOne(targetEntity="Patient")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="IdPatient", referencedColumnName="IdPatient")
     * })
     */
    private $idpatient;

    /**
     * @var \Medecin
     *
     * @ORM\ManyToOne(targetEntity="Medecin")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="IdMedecin", referencedColumnName="IdMedecin")
     * })
     */
    private $idmedecin;


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
     * @return Compterendu
     */
    public function setDatecompterendu($datecompterendu)
    {
        $this->datecompterendu = $datecompterendu;

        return $this;
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
     * @return Compterendu
     */
    public function setDescription($description)
    {
        $this->description = $description;

        return $this;
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
     * @param string $documentannexe
     *
     * @return Compterendu
     */
    public function setDocumentannexe($documentannexe)
    {
        $this->documentannexe = $documentannexe;

        return $this;
    }

    /**
     * Get documentannexe
     *
     * @return string
     */
    public function getDocumentannexe()
    {
        return $this->documentannexe;
    }

    /**
     * Set idpatient
     *
     * @param \Patient $idpatient
     *
     * @return Compterendu
     */
    public function setIdpatient(\Patient $idpatient = null)
    {
        $this->idpatient = $idpatient;

        return $this;
    }

    /**
     * Get idpatient
     *
     * @return \Patient
     */
    public function getIdpatient()
    {
        return $this->idpatient;
    }

    /**
     * Set idmedecin
     *
     * @param \Medecin $idmedecin
     *
     * @return Compterendu
     */
    public function setIdmedecin(\Medecin $idmedecin = null)
    {
        $this->idmedecin = $idmedecin;

        return $this;
    }

    /**
     * Get idmedecin
     *
     * @return \Medecin
     */
    public function getIdmedecin()
    {
        return $this->idmedecin;
    }
}

