<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * Medicament
 *
 * @ORM\Table(name="medicament")
 * @ORM\Entity
 */
class Medicament
{
    /**
     * @var integer
     *
     * @ORM\Column(name="IdMedicament", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idmedicament;

    /**
     * @var string
     *
     * @ORM\Column(name="Nom", type="string", length=50, nullable=false)
     */
    private $nom;

    /**
     * @var integer
     *
     * @ORM\Column(name="GrammageVolume", type="integer", nullable=true)
     */
    private $grammagevolume;

    /**
     * @var string
     *
     * @ORM\Column(name="Unite", type="string", length=50, nullable=true)
     */
    private $unite;

    /**
     * @var string
     *
     * @ORM\Column(name="Description", type="text", length=65535, nullable=true)
     */
    private $description;

    /**
     * @var string
     *
     * @ORM\Column(name="PrincipeActif", type="string", length=100, nullable=false)
     */
    private $principeactif;

    /**
     * @var string
     *
     * @ORM\Column(name="Excipient", type="text", length=65535, nullable=true)
     */
    private $excipient;

    /**
     * @var string
     *
     * @ORM\Column(name="Laboratoire", type="string", length=50, nullable=true)
     */
    private $laboratoire;


    /**
     * Get idmedicament
     *
     * @return integer
     */
    public function getIdmedicament()
    {
        return $this->idmedicament;
    }

    /**
     * Set nom
     *
     * @param string $nom
     *
     * @return Medicament
     */
    public function setNom($nom)
    {
        $this->nom = $nom;

        return $this;
    }

    /**
     * Get nom
     *
     * @return string
     */
    public function getNom()
    {
        return $this->nom;
    }

    /**
     * Set grammagevolume
     *
     * @param integer $grammagevolume
     *
     * @return Medicament
     */
    public function setGrammagevolume($grammagevolume)
    {
        $this->grammagevolume = $grammagevolume;

        return $this;
    }

    /**
     * Get grammagevolume
     *
     * @return integer
     */
    public function getGrammagevolume()
    {
        return $this->grammagevolume;
    }

    /**
     * Set unite
     *
     * @param string $unite
     *
     * @return Medicament
     */
    public function setUnite($unite)
    {
        $this->unite = $unite;

        return $this;
    }

    /**
     * Get unite
     *
     * @return string
     */
    public function getUnite()
    {
        return $this->unite;
    }

    /**
     * Set description
     *
     * @param string $description
     *
     * @return Medicament
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
     * Set principeactif
     *
     * @param string $principeactif
     *
     * @return Medicament
     */
    public function setPrincipeactif($principeactif)
    {
        $this->principeactif = $principeactif;

        return $this;
    }

    /**
     * Get principeactif
     *
     * @return string
     */
    public function getPrincipeactif()
    {
        return $this->principeactif;
    }

    /**
     * Set excipient
     *
     * @param string $excipient
     *
     * @return Medicament
     */
    public function setExcipient($excipient)
    {
        $this->excipient = $excipient;

        return $this;
    }

    /**
     * Get excipient
     *
     * @return string
     */
    public function getExcipient()
    {
        return $this->excipient;
    }

    /**
     * Set laboratoire
     *
     * @param string $laboratoire
     *
     * @return Medicament
     */
    public function setLaboratoire($laboratoire)
    {
        $this->laboratoire = $laboratoire;

        return $this;
    }

    /**
     * Get laboratoire
     *
     * @return string
     */
    public function getLaboratoire()
    {
        return $this->laboratoire;
    }
}

