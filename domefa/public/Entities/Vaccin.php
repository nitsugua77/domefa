<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * Vaccin
 *
 * @ORM\Table(name="vaccin")
 * @ORM\Entity
 */
class Vaccin
{
    /**
     * @var integer
     *
     * @ORM\Column(name="IdVaccin", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idvaccin;

    /**
     * @var string
     *
     * @ORM\Column(name="Nom", type="string", length=50, nullable=false)
     */
    private $nom;

    /**
     * @var integer
     *
     * @ORM\Column(name="DureeAvantRappel", type="integer", nullable=false)
     */
    private $dureeavantrappel;

    /**
     * @var string
     *
     * @ORM\Column(name="Description", type="text", length=65535, nullable=true)
     */
    private $description;


    /**
     * Get idvaccin
     *
     * @return integer
     */
    public function getIdvaccin()
    {
        return $this->idvaccin;
    }

    /**
     * Set nom
     *
     * @param string $nom
     *
     * @return Vaccin
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
     * Set dureeavantrappel
     *
     * @param integer $dureeavantrappel
     *
     * @return Vaccin
     */
    public function setDureeavantrappel($dureeavantrappel)
    {
        $this->dureeavantrappel = $dureeavantrappel;

        return $this;
    }

    /**
     * Get dureeavantrappel
     *
     * @return integer
     */
    public function getDureeavantrappel()
    {
        return $this->dureeavantrappel;
    }

    /**
     * Set description
     *
     * @param string $description
     *
     * @return Vaccin
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
}

