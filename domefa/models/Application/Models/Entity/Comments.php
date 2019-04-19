<?php

namespace Application\Models\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity("Application\Models\Entity\Comments")
 * @ORM\Entity(repositoryClass="Application\Models\Repository\CommentsRepository")
 * @ORM\Table("comments")
 */
class Comments
{

    /**
     * @ORM\Id
     * @ORM\Column(type="integer", length=5)
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;

    /**
     * @ORM\Column(type="string", length=50, name="username")
     */
    protected $username;

    /**
     * @ORM\Column(type="string", length=65535, name="content")
     */
    protected $content;


    /**
     * @return mixed
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * @param mixed $id
     */
    public function setId($id)
    {
        $this->id = (int)$id;
    }

    /**
     * @return mixed
     */
    public function getUserName()
    {
        return $this->username;
    }


    /**
     * @param mixed $username
     */
    public function setUsername($username)
    {
        $this->username = $username;
    }


    /**
     * @return mixed
     */
    public function getContent()
    {
        return $this->content;
    }

    /**
     * @param mixed $content
     */
    public function setContent($content)
    {
        $this->content = $content;
    }
}