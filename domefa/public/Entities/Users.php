<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * Users
 *
 * @ORM\Table(name="users", indexes={@ORM\Index(name="IdMedecin", columns={"IdMedecin"})})
 * @ORM\Entity
 */
class Users
{
    /**
     * @var integer
     *
     * @ORM\Column(name="IdPatient", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idpatient;

    /**
     * @var string
     *
     * @ORM\Column(name="Nom", type="string", length=50, nullable=false)
     */
    private $nom;

    /**
     * @var string
     *
     * @ORM\Column(name="Prenom", type="string", length=50, nullable=false)
     */
    private $prenom;

    /**
     * @var string
     *
     * @ORM\Column(name="AdresseMail", type="string", length=50, nullable=false)
     */
    private $adressemail;

    /**
     * @var string
     *
     * @ORM\Column(name="MotDePasse", type="string", length=50, nullable=false)
     */
    private $motdepasse;

    /**
     * @var integer
     *
     * @ORM\Column(name="Telephone", type="integer", nullable=false)
     */
    private $telephone;

    /**
     * @var integer
     *
     * @ORM\Column(name="NumeroCarteVitale", type="integer", nullable=false)
     */
    private $numerocartevitale;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="DateNaissance", type="date", nullable=false)
     */
    private $datenaissance;

    /**
     * @var string
     *
     * @ORM\Column(name="GroupeSanguin", type="string", length=3, nullable=false)
     */
    private $groupesanguin;

    /**
     * @var string
     *
     * @ORM\Column(name="CarteMutuelle", type="blob", length=65535, nullable=true)
     */
    private $cartemutuelle;

    /**
     * @var boolean
     *
     * @ORM\Column(name="Sexe", type="boolean", nullable=false)
     */
    private $sexe;

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
     * Get idpatient
     *
     * @return integer
     */
    public function getIdpatient()
    {
        return $this->idpatient;
    }

    /**
     * Set nom
     *
     * @param string $nom
     *
     * @return Users
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
     * Set prenom
     *
     * @param string $prenom
     *
     * @return Users
     */
    public function setPrenom($prenom)
    {
        $this->prenom = $prenom;

        return $this;
    }

    /**
     * Get prenom
     *
     * @return string
     */
    public function getPrenom()
    {
        return $this->prenom;
    }

    /**
     * Set adressemail
     *
     * @param string $adressemail
     *
     * @return Users
     */
    public function setAdressemail($adressemail)
    {
        $this->adressemail = $adressemail;

        return $this;
    }

    /**
     * Get adressemail
     *
     * @return string
     */
    public function getAdressemail()
    {
        return $this->adressemail;
    }

    /**
     * Set motdepasse
     *
     * @param string $motdepasse
     *
     * @return Users
     */
    public function setMotdepasse($motdepasse)
    {
        $this->motdepasse = $motdepasse;

        return $this;
    }

    /**
     * Get motdepasse
     *
     * @return string
     */
    public function getMotdepasse()
    {
        return $this->motdepasse;
    }

    /**
     * Set telephone
     *
     * @param integer $telephone
     *
     * @return Users
     */
    public function setTelephone($telephone)
    {
        $this->telephone = $telephone;

        return $this;
    }

    /**
     * Get telephone
     *
     * @return integer
     */
    public function getTelephone()
    {
        return $this->telephone;
    }

    /**
     * Set numerocartevitale
     *
     * @param integer $numerocartevitale
     *
     * @return Users
     */
    public function setNumerocartevitale($numerocartevitale)
    {
        $this->numerocartevitale = $numerocartevitale;

        return $this;
    }

    /**
     * Get numerocartevitale
     *
     * @return integer
     */
    public function getNumerocartevitale()
    {
        return $this->numerocartevitale;
    }

    /**
     * Set datenaissance
     *
     * @param \DateTime $datenaissance
     *
     * @return Users
     */
    public function setDatenaissance($datenaissance)
    {
        $this->datenaissance = $datenaissance;

        return $this;
    }

    /**
     * Get datenaissance
     *
     * @return \DateTime
     */
    public function getDatenaissance()
    {
        return $this->datenaissance;
    }

    /**
     * Set groupesanguin
     *
     * @param string $groupesanguin
     *
     * @return Users
     */
    public function setGroupesanguin($groupesanguin)
    {
        $this->groupesanguin = $groupesanguin;

        return $this;
    }

    /**
     * Get groupesanguin
     *
     * @return string
     */
    public function getGroupesanguin()
    {
        return $this->groupesanguin;
    }

    /**
     * Set cartemutuelle
     *
     * @param string $cartemutuelle
     *
     * @return Users
     */
    public function setCartemutuelle($cartemutuelle)
    {
        $this->cartemutuelle = $cartemutuelle;

        return $this;
    }

    /**
     * Get cartemutuelle
     *
     * @return string
     */
    public function getCartemutuelle()
    {
        return $this->cartemutuelle;
    }

    /**
     * Set sexe
     *
     * @param boolean $sexe
     *
     * @return Users
     */
    public function setSexe($sexe)
    {
        $this->sexe = $sexe;

        return $this;
    }

    /**
     * Get sexe
     *
     * @return boolean
     */
    public function getSexe()
    {
        return $this->sexe;
    }

    /**
     * Set idmedecin
     *
     * @param \Medecin $idmedecin
     *
     * @return Users
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

