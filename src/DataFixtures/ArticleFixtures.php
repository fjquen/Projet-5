<?php

namespace App\DataFixtures;

use App\Entity\Article;
use App\Entity\CategoryNews;
use App\Entity\Comment;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\Persistence\ObjectManager;

class ArticleFixtures extends Fixture
{
    public function load(ObjectManager $manager)
    {
        $faker= \Faker\Factory::create('fr_FR');

        
            
        for($k=1; $k<=3; $k++){
            $categoryNews= new CategoryNews();

            $categoryNews->setTitle($faker->sentence())
                     ->setDescription($faker->paragraph());
                     $manager->persist($categoryNews);
        

            for($j=1; $j <= mt_rand(4, 6); $j++){
                
                $article= new Article();

                $content= '<p>'. join($faker->paragraphs(1),'<p></p>').'</p>';

                $article->setTitle($faker->sentence())
                        ->setContent($content)
                        ->setImage($faker->imageUrl())
                        ->setCreatedAt($faker->dateTimeBetween('-6 months'))
                        ->setCategoryNews($categoryNews);
             $manager->persist($article);
            }

            for($k=1; $k<=mt_rand(4,8);$k++){
                $comment= new Comment();

                $content= '<p>'. join($faker->paragraphs(2),'<p></p>').'</p>';

                $now= new \DateTime();
                $interval=$now->diff($article->getCreatedAt());
                $days= $interval->days;
                $minimum = '-'.$days.'days';

                $comment->setAuthor($faker->name)
                        ->setContent($content)
                        ->setCreatedAt($faker->dateTimeBetween($minimum))
                        ->setArticle($article);

               $manager->persist($comment);        
            }
            $manager->flush();
        }
        
        
    }

}