<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * Ordonnance
 *
 * @ORM\Table(name="ordonnance", indexes={@ORM\Index(name="IdMedicament", columns={"IdMedicament"}), @ORM\Index(name="IdCompteRendu", columns={"IdCompteRendu"}), @ORM\Index(name="IdVaccin", columns={"IdVaccin"})})
 * @ORM\Entity
 */
class Ordonnance
{
    /**
     * @var integer
     *
     * @ORM\Column(name="IdOrdonnance", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idordonnance;

    /**
     * @var integer
     *
     * @ORM\Column(name="NombreJourTraitement", type="integer", nullable=false)
     */
    private $nombrejourtraitement;

    /**
     * @var integer
     *
     * @ORM\Column(name="NombreParJour", type="integer", nullable=false)
     */
    private $nombreparjour;

    /**
     * @var boolean
     *
     * @ORM\Column(name="Utilisee", type="boolean", nullable=false)
     */
    private $utilisee;

    /**
     * @var \Medicament
     *
     * @ORM\ManyToOne(targetEntity="Medicament")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="IdMedicament", referencedColumnName="IdMedicament")
     * })
     */
    private $idmedicament;

    /**
     * @var \Compterendu
     *
     * @ORM\ManyToOne(targetEntity="Compterendu")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="IdCompteRendu", referencedColumnName="IdCompteRendu")
     * })
     */
    private $idcompterendu;

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
     * Get idordonnance
     *
     * @return integer
     */
    public function getIdordonnance()
    {
        return $this->idordonnance;
    }

    /**
     * Set nombrejourtraitement
     *
     * @param integer $nombrejourtraitement
     *
     * @return Ordonnance
     */
    public function setNombrejourtraitement($nombrejourtraitement)
    {
        $this->nombrejourtraitement = $nombrejourtraitement;

        return $this;
    }

    /**
     * Get nombrejourtraitement
     *
     * @return integer
     */
    public function getNombrejourtraitement()
    {
        return $this->nombrejourtraitement;
    }

    /**
     * Set nombreparjour
     *
     * @param integer $nombreparjour
     *
     * @return Ordonnance
     */
    public function setNombreparjour($nombreparjour)
    {
        $this->nombreparjour = $nombreparjour;

        return $this;
    }

    /**
     * Get nombreparjour
     *
     * @return integer
     */
    public function getNombreparjour()
    {
        return $this->nombreparjour;
    }

    /**
     * Set utilisee
     *
     * @param boolean $utilisee
     *
     * @return Ordonnance
     */
    public function setUtilisee($utilisee)
    {
        $this->utilisee = $utilisee;

        return $this;
    }

    /**
     * Get utilisee
     *
     * @return boolean
     */
    public function getUtilisee()
    {
        return $this->utilisee;
    }

    /**
     * Set idmedicament
     *
     * @param \Medicament $idmedicament
     *
     * @return Ordonnance
     */
    public function setIdmedicament(\Medicament $idmedicament = null)
    {
        $this->idmedicament = $idmedicament;

        return $this;
    }

    /**
     * Get idmedicament
     *
     * @return \Medicament
     */
    public function getIdmedicament()
    {
        return $this->idmedicament;
    }

    /**
     * Set idcompterendu
     *
     * @param \Compterendu $idcompterendu
     *
     * @return Ordonnance
     */
    public function setIdcompterendu(\Compterendu $idcompterendu = null)
    {
        $this->idcompterendu = $idcompterendu;

        return $this;
    }

    /**
     * Get idcompterendu
     *
     * @return \Compterendu
     */
    public function getIdcompterendu()
    {
        return $this->idcompterendu;
    }

    /**
     * Set idvaccin
     *
     * @param \Vaccin $idvaccin
     *
     * @return Ordonnance
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

