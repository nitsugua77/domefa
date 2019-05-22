<?php

namespace Application\Models\Entity;

use Doctrine\ORM\Mapping as ORM;
use phpDocumentor\Reflection\File;

/**
 * @ORM\Entity("Application\Models\Entity\Medecins")
 * @ORM\Entity(repositoryClass="Application\Models\Repository\MedecinsRepository")
 * @ORM\Table(name="medecin")
 */
class Medecins
{
    /**
     * @var integer
     *
     * @ORM\Column(name="IdMedecin", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    protected $idmedecin;

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
     * @ORM\Column(name="RPPS", type="integer")
     */
    protected $rpps;

    /**
     * @var string
     *
     * @ORM\Column(name="Specialisation", type="string", length=100)
     */
    protected $specialisation;

    /**
     * @var string
     *
     * @ORM\Column(name="Signature", type="blob", length=65535, nullable=true)
     */
    protected $signature;

    /**
     * Get idmedecin
     *
     * @return integer
     */
    public function getIdmedecin()
    {
        return $this->idmedecin;
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
     * Set rpps
     *
     * @param integer $rpps
     *
     */
    public function setRpps($rpps)
    {
        $this->rpps = $rpps;

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
     * Set specialisation
     *
     * @param string $specialisation
     *
     */
    public function setSpecialisation($specialisation)
    {
        $this->specialisation = $specialisation;

    }

    /**
     * Get specialisation
     *
     * @return string
     */
    public function getSpecialisation()
    {
        return $this->specialisation;
    }

    /**
     * Set signature
     *
     * @param mixed $signature
     *
     */
    public function setSignature($signature)
    {
        $this->signature = $signature;

    }

    /**
     * Get signature
     *
     * @return mixed
     */
    public function getSignature()
    {
        return $this->signature;
    }



}