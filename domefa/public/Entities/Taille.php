<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * Taille
 *
 * @ORM\Table(name="taille", indexes={@ORM\Index(name="IdPatient", columns={"IdPatient"})})
 * @ORM\Entity
 */
class Taille
{
    /**
     * @var integer
     *
     * @ORM\Column(name="IdTaille", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idtaille;

    /**
     * @var integer
     *
     * @ORM\Column(name="TailleEnCm", type="integer", nullable=false)
     */
    private $tailleencm;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="DateTaille", type="date", nullable=false)
     */
    private $datetaille;

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
     * Get idtaille
     *
     * @return integer
     */
    public function getIdtaille()
    {
        return $this->idtaille;
    }

    /**
     * Set tailleencm
     *
     * @param integer $tailleencm
     *
     * @return Taille
     */
    public function setTailleencm($tailleencm)
    {
        $this->tailleencm = $tailleencm;

        return $this;
    }

    /**
     * Get tailleencm
     *
     * @return integer
     */
    public function getTailleencm()
    {
        return $this->tailleencm;
    }

    /**
     * Set datetaille
     *
     * @param \DateTime $datetaille
     *
     * @return Taille
     */
    public function setDatetaille($datetaille)
    {
        $this->datetaille = $datetaille;

        return $this;
    }

    /**
     * Get datetaille
     *
     * @return \DateTime
     */
    public function getDatetaille()
    {
        return $this->datetaille;
    }

    /**
     * Set idpatient
     *
     * @param \Patient $idpatient
     *
     * @return Taille
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

