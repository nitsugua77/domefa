<?php

namespace Application\Models\Repository;

use Application\Models\Entity\Comments;
use Doctrine\ORM\EntityRepository;

class CommentsRepository extends EntityRepository
{
    protected $comments;

    public function findAll()
    {
        return $this->findBy([], ['id' => 'ASC']);
    }

    public function save(array $userArray, $comments = null)
    {
        $this->comments = $this->setData($userArray, $comments);

        try {
            $this->_em->persist($this->comments);
            $this->_em->flush();
        } catch (\Exception $e) {
            return false;
        }

        return true;
    }

    public function delete(Comments $comments)
    {
        $this->comments = $comments;

        try {
            $this->_em->remove($this->comments);
            $this->_em->flush();
        } catch (\Exception $e) {
            return false;
        }

        return true;
    }

    public function setData(array $userArray, comments $comments = null)
    {
        if (!$comments) {
            $this->comments = new comments();
        } else {
            $this->comments = $comments;
        }

        $this->comments->setUserName($userArray['username']);
        $this->comments->setContent($userArray['content']);


        return $this->comments;
    }


}
