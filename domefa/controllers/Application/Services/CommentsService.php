<?php

namespace Application\Services;

use Application\Models\Entity\Comments;
use Application\Models\Traits\DoctrineTrait;
use Application\Models\Repository\CommentsRepository;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\Mapping\ClassMetadata;

class CommentsService
{

    use DoctrineTrait;

    protected $comments;

    protected $commentsRepository;

    public function __construct(Comments $comments, EntityManager $em)
    {
        $this->comments = $comments;

        $this->em = $em;

        $this->commentsRepository = new commentsRepository(
            $this->em,
            new ClassMetaData('Application\Models\Entity\comments')
        );
    }

    public function create(array $array)
    {
        try {
            $this->commentsRepository->save($array);
        } catch (\Exception $e) {
            return false;
        }

        return true;
    }

    public function read(int $id = null)
    {
        try {
            if (isset($id)) {
                $results = $this->getEm()->find(Comments::class, $id);
            } else {
                $results = $this->commentsRepository->findAll();
            }
        } catch (\Exception $e) {
            return false;
        }

        return $results;
    }

    public function update(array $array)
    {
        try {
            if (isset($array['id'])) {
                $comments = $this->getEm()->find(Comments::class, $array['id']);
                $this->commentsRepository->save($array, $comments);
            }
        } catch (\Exception $e) {
            return false;
        }

        return true;
    }

    public function delete(int $id)
    {
        try {
            $comments = $this->getEm()->find(Comments::class, $id);
            $this->commentsRepository->delete($comments);
        } catch (\Exception $e) {
            return false;
        }

        return true;
    }
}
