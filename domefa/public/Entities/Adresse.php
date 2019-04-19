<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * Adresse
 *
 * @ORM\Table(name="adresse", indexes={@ORM\Index(name="IdPatient", columns={"IdPatient"}), @ORM\Index(name="IdMedecin", columns={"IdMedecin"}), @ORM\Index(name="IdPharmacien", columns={"IdPharmacien"}), @ORM\Index(name="IdVille", columns={"IdVille"})})
 * @ORM\Entity
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
     * @var \Pharmacien
     *
     * @ORM\ManyToOne(targetEntity="Pharmacien")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="IdPharmacien", referencedColumnName="IdPharmacien")
     * })
     */
    private $idpharmacien;

    /**
     * @var \Ville
     *
     * @ORM\ManyToOne(targetEntity="Ville")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="IdVille", referencedColumnName="IdVille")
     * })
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
     * @return Adresse
     */
    public function setNumeroappartement($numeroappartement)
    {
        $this->numeroappartement = $numeroappartement;

        return $this;
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
     *
     * @return Adresse
     */
    public function setNumeroresidence($numeroresidence)
    {
        $this->numeroresidence = $numeroresidence;

        return $this;
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
     *
     * @return Adresse
     */
    public function setRue($rue)
    {
        $this->rue = $rue;

        return $this;
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
     * @param \Patient $idpatient
     *
     * @return Adresse
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
     * @return Adresse
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

    /**
     * Set idpharmacien
     *
     * @param \Pharmacien $idpharmacien
     *
     * @return Adresse
     */
    public function setIdpharmacien(\Pharmacien $idpharmacien = null)
    {
        $this->idpharmacien = $idpharmacien;

        return $this;
    }

    /**
     * Get idpharmacien
     *
     * @return \Pharmacien
     */
    public function getIdpharmacien()
    {
        return $this->idpharmacien;
    }

    /**
     * Set idville
     *
     * @param \Ville $idville
     *
     * @return Adresse
     */
    public function setIdville(\Ville $idville = null)
    {
        $this->idville = $idville;

        return $this;
    }

    /**
     * Get idville
     *
     * @return \Ville
     */
    public function getIdville()
    {
        return $this->idville;
    }
}

