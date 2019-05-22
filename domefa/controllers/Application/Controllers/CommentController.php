<?php

namespace Application\Controllers;

use \Ascmvc\AbstractApp;
use \Ascmvc\Mvc\Controller;
use Application\Services\CommentsService;
use Application\Services\CommentsServiceTrait;
use Application\Models\Entity\Comments;

class CommentController extends Controller
{

    use CommentsServiceTrait;

    public static function config(AbstractApp &$app)
    {
        IndexController::config($app);
    }


    public function predispatch()
    {

        $em = $this->serviceManager->getRegisteredService('em1');

        $comments = new Comments();

        $commentsService = new CommentsService($comments, $em);

        $this->serviceManager->addRegisteredService('commentsService', $commentsService);

        $this->setComments($this->serviceManager->getRegisteredService('commentsService'));

        $this->view['saved'] = 0;

        $this->view['error'] = 0;

    }

    public function indexAction()
    {
        if (isset($_SESSION['REMOTE_USER']))
        {
            $results = $this->readComments();

            if (is_object($results)) {
                $results = [$this->hydrateArray($results)];
            } else {
                for ($i = 0; $i < count($results); $i++) {
                    $results[$i] = $this->hydrateArray($results[$i]);
                }
            }

            $this->view['bodyjs'] = 1;

            $this->view['results'] = $results;

            $this->view['username'] = $_SESSION['REMOTE_USER'];

            $this->viewObject->assign('view', $this->view);

            $this->viewObject->display('comment_index.tpl');
        }
        else
        {
            $this->viewObject->assign('view', $this->view);

            $this->viewObject->display('index_warning.tpl');
        }

    }

    protected function readComments()
    {
        if (!empty($_GET)) {
            $id = (int) $_GET['id'];

            return $this->getComments()->read($id);
        } else {
            return $this->getComments()->read();
        }
    }

    protected function hydrateArray(Comments $object)
    {
        $array['id'] = $object->getId();
        $array['username'] = $object->getUserName();
        $array['content'] = $object->getContent();

        return $array;
    }

    public function addAction()
    {
        if (isset($_SESSION['REMOTE_USER']))
        {
            if (!empty($_POST)) {
                // Would have to sanitize and filter the $_POST array.
                $commentArray['username'] = (string) $_POST['username'];
                $commentArray['content'] = (string) $_POST['content'];


                if ($this->comments->create($commentArray)) {
                    $this->view['saved'] = 1;
                } else {
                    $this->view['error'] = 1;
                }
            }

            $this->view['bodyjs'] = 1;

            $this->view['username'] = $_SESSION['REMOTE_USER'];

            $this->viewObject->assign('view', $this->view);

            $this->viewObject->display('comment_add_form.tpl');
        }
        else
        {
            $this->viewObject->assign('view', $this->view);

            $this->viewObject->display('index_warning.tpl');
        }

    }


    public function editAction()
    {
        if (isset($_SESSION['REMOTE_USER']))
        {
            if (!empty($_POST)) {
                // Would have to sanitize and filter the $_POST array.
                $commentArray['id'] = (string) $_POST['id'];
                $commentArray['username'] = (string) $_POST['username'];
                $commentArray['content'] = (string) $_POST['content'];


                if ($this->comments->update($commentArray)) {
                    $this->view['saved'] = 1;
                } else {
                    $this->view['error'] = 1;
                }
            } else {
                $results = $this->readComments();

                if (is_object($results)) {
                    $results = [$this->hydrateArray($results)];
                } else {
                    for ($i = 0; $i < count($results); $i++) {
                        $results[$i] = $this->hydrateArray($results[$i]);
                    }
                }

                $this->view['results'] = $results;
            }

            $this->view['bodyjs'] = 1;

            $this->view['username'] = $_SESSION['REMOTE_USER'];

            $this->viewObject->assign('view', $this->view);

            $this->viewObject->display('comment_edit_form.tpl');
        }
        else
        {
            $this->viewObject->assign('view', $this->view);

            $this->viewObject->display('index_warning.tpl');
        }

    }

    public function deleteAction()
    {
        if (isset($_SESSION['REMOTE_USER']))
        {
            if (!empty($_GET)) {
                // Would have to sanitize and filter the $_GET array.
                $id = (int) $_GET['id'];

                if ($this->comments->delete($id)) {
                    $this->view['saved'] = 1;
                } else {
                    $this->view['error'] = 1;
                }
            }

            $this->view['username'] = $_SESSION['REMOTE_USER'];

            $this->viewObject->assign('view', $this->view);

            $this->viewObject->display('comment_delete.tpl');
        }
        else
        {
            $this->viewObject->assign('view', $this->view);

            $this->viewObject->display('index_warning.tpl');
        }

    }
}
