<?php

namespace Application\Models\Entity;

use Doctrine\ORM\Mapping as ORM;
use phpDocumentor\Reflection\File;

/**
 * @ORM\Entity("Application\Models\Entity\Users")
 * @ORM\Entity(repositoryClass="Application\Models\Repository\UsersRepository")
 * @ORM\Table(name="patient")
 */
class Users
{
    /**
     * @var integer
     *
     * @ORM\Column(name="IdPatient", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    protected $idpatient;

    /**
     * @var string
     *
     * @ORM\Column(name="Nom", type="string", length=50)
     */
    protected $nom;

    /**
     * @var string
     *
     * @ORM\Column(name="Prenom", type="string", length=50)
     */
    protected $prenom;

    /**
     * @var string
     *
     * @ORM\Column(name="AdresseMail", type="string", length=50)
     */
    protected $adressemail;

    /**
     * @var string
     *
     * @ORM\Column(name="MotDePasse", type="string", length=50)
     */
    protected $motdepasse;

    /**
     * @var integer
     *
     * @ORM\Column(name="Telephone", type="integer")
     */
    protected $telephone;

    /**
     * @var integer
     *
     * @ORM\Column(name="NumeroCarteVitale", type="integer")
     */
    protected $numerocartevitale;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="DateNaissance", type="date")
     */
    protected $datenaissance;

    /**
     * @var string
     *
     * @ORM\Column(name="GroupeSanguin", type="string", length=3)
     */
    protected $groupesanguin;

    /**

     *
     * @ORM\Column(name="CarteMutuelle", type="blob", length=65535, nullable=true)
     */
    protected $cartemutuelle;

    /**
     * @var boolean
     *
     * @ORM\Column(name="Sexe", type="boolean")
     */
    protected $sexe;

    /**
     * @var integer
     *
     *@ORM\Column(name="IdMedecin", type="integer")
     */
    protected $idmedecin;

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
     */
    public function setNom($nom)
    {
        $this->nom = $nom;

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
     */
    public function setPrenom($prenom)
    {
        $this->prenom = $prenom;

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
     */
    public function setAdressemail($adressemail)
    {
        $this->adressemail = $adressemail;

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
     */
    public function setMotdepasse($motdepasse)
    {
        $this->motdepasse = $motdepasse;

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
     */
    public function setTelephone($telephone)
    {
        $this->telephone = $telephone;

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
     */
    public function setNumerocartevitale($numerocartevitale)
    {
        $this->numerocartevitale = $numerocartevitale;

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
     */
    public function setDatenaissance($datenaissance)
    {
        $this->datenaissance = $datenaissance;

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
     */
    public function setGroupesanguin($groupesanguin)
    {
        $this->groupesanguin = $groupesanguin;

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
     * @param mixed $cartemutuelle
     *
     */
    public function setCartemutuelle($cartemutuelle)
    {
        $this->cartemutuelle = $cartemutuelle;

    }

    /**
     * Get cartemutuelle
     *
     * @return mixed
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
     */
    public function setSexe($sexe)
    {
        $this->sexe = $sexe;

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
     * @param integer $idmedecin
     *
     */
    public function setIdmedecin($idmedecin)
    {
        $this->idmedecin = $idmedecin;

    }

    /**
     * Get idmedecin
     *
     * @return integer
     */
    public function getIdmedecin()
    {
        return $this->idmedecin;
    }
}