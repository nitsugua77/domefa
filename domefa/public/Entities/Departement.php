<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * Departement
 *
 * @ORM\Table(name="departement", indexes={@ORM\Index(name="IdRegion", columns={"IdRegion"})})
 * @ORM\Entity
 */
class Departement
{
    /**
     * @var integer
     *
     * @ORM\Column(name="IdDepartement", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $iddepartement;

    /**
     * @var string
     *
     * @ORM\Column(name="Nom", type="string", length=50, nullable=false)
     */
    private $nom;

    /**
     * @var integer
     *
     * @ORM\Column(name="Numero", type="integer", nullable=false)
     */
    private $numero;

    /**
     * @var \Region
     *
     * @ORM\ManyToOne(targetEntity="Region")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="IdRegion", referencedColumnName="IdRegion")
     * })
     */
    private $idregion;


    /**
     * Get iddepartement
     *
     * @return integer
     */
    public function getIddepartement()
    {
        return $this->iddepartement;
    }

    /**
     * Set nom
     *
     * @param string $nom
     *
     * @return Departement
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
     * Set numero
     *
     * @param integer $numero
     *
     * @return Departement
     */
    public function setNumero($numero)
    {
        $this->numero = $numero;

        return $this;
    }

    /**
     * Get numero
     *
     * @return integer
     */
    public function getNumero()
    {
        return $this->numero;
    }

    /**
     * Set idregion
     *
     * @param \Region $idregion
     *
     * @return Departement
     */
    public function setIdregion(\Region $idregion = null)
    {
        $this->idregion = $idregion;

        return $this;
    }

    /**
     * Get idregion
     *
     * @return \Region
     */
    public function getIdregion()
    {
        return $this->idregion;
    }
}

