<?php

namespace Application\Services;

trait CommentsServiceTrait
{

    protected $comments;

    /**
     * @return mixed
     */
    public function getComments()
    {
        return $this->comments;
    }

    /**
     * @param mixed $Comments
     */
    public function setComments($comments)
    {
        $this->comments = $comments;
    }
}
