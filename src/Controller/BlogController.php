<?php

namespace App\Controller;

use App\Entity\Article;
use App\Entity\Critique;
use App\Form\ArticleType;
use App\Entity\Comment;
use App\Entity\CommentCritique;
use App\Form\CommentCritiqueType;
use App\Form\CommentType;
use App\Form\CritiqueType;
use App\Repository\ArticleRepository;
use App\Repository\CommentCritiqueRepository;
use App\Repository\CommentRepository;
use App\Repository\CritiqueRepository;
use Doctrine\Persistence\ObjectManager;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

class BlogController extends AbstractController
{
    /**
     * @Route("/blog/article", name="blog")
     */
    public function indexArticle(PaginatorInterface $paginator, Request $request)
    {
        $donnees = $this->getDoctrine()->getRepository(Article::class)->findBy(
            array(),
            array('createdAt' => 'DESC')
        );
        $articles = $paginator->paginate(
            $donnees, // Requête contenant les données à paginer (ici nos articles)
            $request->query->getInt('page', 1), // Numéro de la page en cours, passé dans l'URL, 1 si aucune page
            6 // Nombre de résultats par page
        );
        
        return $this->render('blog/index.html.twig', [
            'controller_name' => 'BlogController',
            'articles' => $articles
        ]);
    }

    /**
     * @Route("/blog/critique", name="blog_critique")
     */
    public function indexCritique(PaginatorInterface $paginator, Request $request)
    {
        $donnees = $this->getDoctrine()->getRepository(Critique::class)->findBy(
            array(),
            array('createdAt' => 'DESC')
        );
        $critiques = $paginator->paginate(
            $donnees, // Requête contenant les données à paginer (ici nos articles)
            $request->query->getInt('page', 1), // Numéro de la page en cours, passé dans l'URL, 1 si aucune page
            6 // Nombre de résultats par page
        );

        return $this->render('blog/index_critique.html.twig', [
            'controller_name' => 'BlogController',
            'critiques' => $critiques
        ]);
    }

    /**
     * @Route("/", name="home")
     */
    public function home(ArticleRepository $repoArticle, CritiqueRepository $repoCritique)
    {
        $articles = $repoArticle->findAll();

        $critiques = $repoCritique->findAll();


        return $this->render('blog/home.html.twig', [
            'controller_name' => 'BlogController',
            'articles' => $articles,
            'critiques' => $critiques,
        ]);
    }

    /**
     * @Route("blog/new", name="blog_create")
     * @Route("blog/{id}/edit/article", name="blog_edit")
     */
    public function form(Article $article = null, Request $request, ObjectManager $manager)
    {

        if (!$article) {
            $article = new Article();
        }


        $form = $this->createForm(ArticleType::class, $article);

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            if (!$article->getId()) {
                $article->setCreatedAt(new \DateTime("Europe/Paris"));
            }

            $manager->persist($article);
            $manager->flush();

            return $this->redirectToRoute('blog_show_article', ['id' => $article->getId()]);
        }

        return $this->render('blog/create.html.twig', [
            'formArticle' => $form->createView(),
            'editMode' => $article->getId() !== null
        ]);
    }
    /**
     * @Route("blog/new/critique", name="blog_create_critique")
     * @Route("blog/{id}/edit/critique", name="blog_edit_critique")
     */
    public function FunctionCritique(Critique $critique = null, Request $request, ObjectManager $manager)
    {
        if (!$critique) {
            $critique = new Critique();
        }


        $formCritique = $this->createForm(CritiqueType::class, $critique);

        $formCritique->handleRequest($request);

        if ($formCritique->isSubmitted() && $formCritique->isValid()) {
            if (!$critique->getId()) {
                $critique->setCreatedAt(new \DateTime("Europe/Paris"));
            }

            $manager->persist($critique);
            $manager->flush();

            return $this->redirectToRoute('blog_show_critique', ['id' => $critique->getId()]);
        }



        return $this->render('blog/create_critique.html.twig', [
            'formCritique' => $formCritique->createView(),
            'editModeCritique' => $critique->getId() !== null
        ]);
    }

    /**
     * @Route("blog/{id}/delete", name="blog_delete")
     */
    public function deleteArticle(ArticleRepository $repo, ObjectManager $manager, $id)
    {
        $articles = $repo->find($id);
        $manager->remove($articles);
        $manager->flush();

        return $this->redirectToRoute('blog');
    }

    /**
     * @Route("blog/{id}/delete_comment", name="blog_delete_comment")
     */
    public function deleteComment(CommentRepository $repo, ObjectManager $manager, $id)
    {
        $commentArticles = $repo->find($id);
        $manager->remove($commentArticles);
        $manager->flush();

        return $this->redirectToRoute('admin');
    }

    /**
     * @Route("blog/{id}/signalement", name="blog_signalement")
     */
    public function commentReported(CommentRepository $repo, Comment $comment, ObjectManager $manager, $id)
    {

        $commentArticles = $repo->find($id);
        $comment->setSignalement(1, $commentArticles);
        $manager->persist($comment);
        $manager->flush();

        return $this->render('blog/comment_reported.html.twig');
    }


    /**
     * @Route("blog/{id}/ignored", name="blog_ignored")
     */
    public function commentIgnored(CommentRepository $repo, Comment $comment, ObjectManager $manager, $id)
    {

        $commentArticles = $repo->find($id);
        $comment->setSignalement(0, $commentArticles);
        $manager->persist($comment);
        $manager->flush();

        return $this->redirectToRoute('admin');
    }

    /**
     * @Route("blog/{id}/delete_comment_critique", name="blog_delete_comment_critique")
     */
    public function deleteCommentCritique(CommentCritiqueRepository $repo, ObjectManager $manager, $id)
    {
        $commentCritique = $repo->find($id);
        $manager->remove($commentCritique);
        $manager->flush();

        return $this->redirectToRoute('admin');
    }
    /**
     * @Route("blog/{id}/ignored_critique", name="blog_ignored_critique")
     */
    public function commentCritiqueIgnored(CommentCritiqueRepository $repo, CommentCritique $comment, ObjectManager $manager, $id)
    {

        $commentCritiques = $repo->find($id);
        $comment->setSignalement(0, $commentCritiques);
        $manager->persist($comment);
        $manager->flush();

        return $this->redirectToRoute('admin');
    }



    /**
     * @Route("blog/signalement/{id}", name="blog_signalement_critique")
     */
    public function commentCritiqueReported( CommentCritiqueRepository $repo, CommentCritique $comment, ObjectManager $manager, $id)
    {

        $commentCritique = $repo->find($id);
        $comment->setSignalement(1, $commentCritique);
        $manager->persist($commentCritique);
        $manager->flush();

        return $this->render('blog/comment_reported.html.twig');
    }

    /**
     * @Route("blog/{id}/delete/critique", name="blog_delete_critique")
     */
    public function deleteCritique(CritiqueRepository $repo, ObjectManager $manager, $id)
    {
        $critique = $repo->find($id);
        $manager->remove($critique);
        $manager->flush();

        return $this->redirectToRoute('blog_critique');
    }




    /**
     * @Route("/blog/article/{id}", name="blog_show_article")
     */
    public function showArticle(Article $article, Request $request, ObjectManager $manager)
    {
        $comment = new Comment();
        $form = $this->createForm(CommentType::class, $comment);

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $comment->setCreatedAt(new \DateTime("Europe/Paris"))
                ->setArticle($article);
            $manager->persist($comment);
            $manager->flush();

            return $this->redirectToRoute('blog_show_article', [
                'id' => $article->getId()
            ]);
        }
        return $this->render('blog/show_article.html.twig', [
            'article' => $article,
            'commentForm' => $form->createView()
        ]);
    }



    /**
     * @Route("/blog/critique/{id}", name="blog_show_critique")
     */
    public function showCritique(Critique $critique, Request $request, ObjectManager $manager)
    {

        $commentCritique = new CommentCritique();
        $form = $this->createForm(CommentCritiqueType::class, $commentCritique);

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $commentCritique->setCreatedAt(new \DateTime("Europe/Paris"))
                ->setCritique($critique);
            $manager->persist($commentCritique);
            $manager->flush();

            return $this->redirectToRoute('blog_show_critique', [
                'id' => $critique->getId(),
            ]);
        }


        return $this->render('blog/show_critique.html.twig', [
            'critique' => $critique,
            'commentCritiqueForm' => $form->createView()

        ]);
    }
}
