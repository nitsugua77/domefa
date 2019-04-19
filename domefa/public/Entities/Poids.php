<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * Poids
 *
 * @ORM\Table(name="poids", indexes={@ORM\Index(name="IdPatient", columns={"IdPatient"})})
 * @ORM\Entity
 */
class Poids
{
    /**
     * @var integer
     *
     * @ORM\Column(name="IdPoids", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idpoids;

    /**
     * @var integer
     *
     * @ORM\Column(name="PoidsEnG", type="integer", nullable=false)
     */
    private $poidseng;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="DatePesee", type="date", nullable=false)
     */
    private $datepesee;

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
     * Get idpoids
     *
     * @return integer
     */
    public function getIdpoids()
    {
        return $this->idpoids;
    }

    /**
     * Set poidseng
     *
     * @param integer $poidseng
     *
     * @return Poids
     */
    public function setPoidseng($poidseng)
    {
        $this->poidseng = $poidseng;

        return $this;
    }

    /**
     * Get poidseng
     *
     * @return integer
     */
    public function getPoidseng()
    {
        return $this->poidseng;
    }

    /**
     * Set datepesee
     *
     * @param \DateTime $datepesee
     *
     * @return Poids
     */
    public function setDatepesee($datepesee)
    {
        $this->datepesee = $datepesee;

        return $this;
    }

    /**
     * Get datepesee
     *
     * @return \DateTime
     */
    public function getDatepesee()
    {
        return $this->datepesee;
    }

    /**
     * Set idpatient
     *
     * @param \Patient $idpatient
     *
     * @return Poids
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
}

