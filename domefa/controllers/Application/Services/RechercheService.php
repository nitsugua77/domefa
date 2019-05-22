<?php

namespace Application\Services;

use Application\Models\Entity\Users;
use Application\Models\Traits\DoctrineTrait;
use Application\Models\Repository\UsersRepository;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\Mapping\ClassMetadata;

class RechercheService
{

    use DoctrineTrait;

    protected $comments;

    protected $commentsRepository;

    public function __construct(Users $comments, EntityManager $em)
    {
        $this->comments = $comments;

        $this->em = $em;

        $this->commentsRepository = new usersRepository(
            $this->em,
            new ClassMetaData('Application\Models\Entity\Users')
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

    public function read($nom, $prenom)
    {
        try {
            if (isset($nom) && isset($prenom)) {
                $results = $this->commentsRepository->findBy(array('nom' => $nom, 'prenom' => $prenom));

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
                $comments = $this->getEm()->find(Users::class, $array['id']);
                $this->commentsRepository->save($array, $comments);
            }
        } catch (\Exception $e) {
            return false;
        }

        return true;
    }

}
