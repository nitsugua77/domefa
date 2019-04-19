<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * Ville
 *
 * @ORM\Table(name="ville", indexes={@ORM\Index(name="IdDepartement", columns={"IdDepartement"})})
 * @ORM\Entity
 */
class Ville
{
    /**
     * @var integer
     *
     * @ORM\Column(name="IdVille", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idville;

    /**
     * @var string
     *
     * @ORM\Column(name="Nom", type="string", length=50, nullable=false)
     */
    private $nom;

    /**
     * @var integer
     *
     * @ORM\Column(name="CodePostal", type="integer", nullable=false)
     */
    private $codepostal;

    /**
     * @var \Departement
     *
     * @ORM\ManyToOne(targetEntity="Departement")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="IdDepartement", referencedColumnName="IdDepartement")
     * })
     */
    private $iddepartement;


    /**
     * Get idville
     *
     * @return integer
     */
    public function getIdville()
    {
        return $this->idville;
    }

    /**
     * Set nom
     *
     * @param string $nom
     *
     * @return Ville
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
     * Set codepostal
     *
     * @param integer $codepostal
     *
     * @return Ville
     */
    public function setCodepostal($codepostal)
    {
        $this->codepostal = $codepostal;

        return $this;
    }

    /**
     * Get codepostal
     *
     * @return integer
     */
    public function getCodepostal()
    {
        return $this->codepostal;
    }

    /**
     * Set iddepartement
     *
     * @param \Departement $iddepartement
     *
     * @return Ville
     */
    public function setIddepartement(\Departement $iddepartement = null)
    {
        $this->iddepartement = $iddepartement;

        return $this;
    }

    /**
     * Get iddepartement
     *
     * @return \Departement
     */
    public function getIddepartement()
    {
        return $this->iddepartement;
    }
}

