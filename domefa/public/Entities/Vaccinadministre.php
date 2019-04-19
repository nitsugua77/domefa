<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * Vaccinadministre
 *
 * @ORM\Table(name="vaccinadministre", indexes={@ORM\Index(name="IdPatient", columns={"IdPatient"}), @ORM\Index(name="IdVaccin", columns={"IdVaccin"})})
 * @ORM\Entity
 */
class Vaccinadministre
{
    /**
     * @var integer
     *
     * @ORM\Column(name="IdVaccinAdministre", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idvaccinadministre;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="DateAdministration", type="date", nullable=false)
     */
    private $dateadministration;

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
     * @var \Vaccin
     *
     * @ORM\ManyToOne(targetEntity="Vaccin")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="IdVaccin", referencedColumnName="IdVaccin")
     * })
     */
    private $idvaccin;


    /**
     * Get idvaccinadministre
     *
     * @return integer
     */
    public function getIdvaccinadministre()
    {
        return $this->idvaccinadministre;
    }

    /**
     * Set dateadministration
     *
     * @param \DateTime $dateadministration
     *
     * @return Vaccinadministre
     */
    public function setDateadministration($dateadministration)
    {
        $this->dateadministration = $dateadministration;

        return $this;
    }

    /**
     * Get dateadministration
     *
     * @return \DateTime
     */
    public function getDateadministration()
    {
        return $this->dateadministration;
    }

    /**
     * Set idpatient
     *
     * @param \Patient $idpatient
     *
     * @return Vaccinadministre
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
     * Set idvaccin
     *
     * @param \Vaccin $idvaccin
     *
     * @return Vaccinadministre
     */
    public function setIdvaccin(\Vaccin $idvaccin = null)
    {
        $this->idvaccin = $idvaccin;

        return $this;
    }

    /**
     * Get idvaccin
     *
     * @return \Vaccin
     */
    public function getIdvaccin()
    {
        return $this->idvaccin;
    }
}

