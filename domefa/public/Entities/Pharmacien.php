<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * Pharmacien
 *
 * @ORM\Table(name="pharmacien")
 * @ORM\Entity
 */
class Pharmacien
{
    /**
     * @var integer
     *
     * @ORM\Column(name="IdPharmacien", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idpharmacien;

    /**
     * @var integer
     *
     * @ORM\Column(name="RPPS", type="integer", nullable=false)
     */
    private $rpps;

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
     * Get idpharmacien
     *
     * @return integer
     */
    public function getIdpharmacien()
    {
        return $this->idpharmacien;
    }

    /**
     * Set rpps
     *
     * @param integer $rpps
     *
     * @return Pharmacien
     */
    public function setRpps($rpps)
    {
        $this->rpps = $rpps;

        return $this;
    }

    /**
     * Get rpps
     *
     * @return integer
     */
    public function getRpps()
    {
        return $this->rpps;
    }

    /**
     * Set nom
     *
     * @param string $nom
     *
     * @return Pharmacien
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
     * @return Pharmacien
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
     * @return Pharmacien
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
     * @return Pharmacien
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
     * @return Pharmacien
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
}

