<?php

namespace Application\Models\Entity;


use Doctrine\ORM\Mapping as ORM;
use phpDocumentor\Reflection\File;

/**
 * Ville
 *
 * @ORM\Entity("Application\Models\Entity\Ville")
 * @ORM\Entity(repositoryClass="Application\Models\Repository\VilleRepository")
 * @ORM\Table(name="ville")
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
     * Set codepostal
     *
     * @param integer $codepostal
     *
     */
    public function setCodepostal($codepostal)
    {
        $this->codepostal = $codepostal;
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
}

