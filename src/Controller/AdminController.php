<?php

namespace App\Controller;

use App\Repository\CommentCritiqueRepository;
use App\Repository\CommentRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;


class AdminController extends AbstractController
{

    /**
     * @Route("/admin", name="admin")
     */
    public function index(CommentRepository  $repoCommentArticle, CommentCritiqueRepository $repoCommentCritique)
    {


      $commentArticle= $repoCommentArticle->findAll();
      $commentCritiques= $repoCommentCritique->findAll();  
    // or add an optional message - seen by developers
         

        return $this->render('admin/index.html.twig', [
            'controller_name' => 'AdminController',
            'commentArticle'=> $commentArticle,
            'commentCritiques'=> $commentCritiques

        ]);
    }


}
