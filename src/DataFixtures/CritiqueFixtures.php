<?php

namespace App\DataFixtures;

use App\Entity\Critique;
use App\Entity\Category;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class CritiqueFixtures extends Fixture
{
    public function load(ObjectManager $manager)
    {
        $faker= \Faker\Factory::create('fr_FR');


        for($k=1; $k<=3; $k++){
            $category= new Category();

            $category->setTitle($faker->sentence())
                     ->setDescription($faker->paragraph());
                     $manager->persist($category);
        }
    
        
        for($i=1; $i <= 10; $i++){
            $critique= new Critique();

            $content= '<p>'. join($faker->paragraphs(1)).'</p>';

            $critique->setTitle($faker->sentence())
                     ->setContent($content)
                     ->setImage($faker->imageUrl())
                     ->setCreatedAt(new \DateTime())
                     ->setCategory($category);
         $manager->persist($critique);
        }
        $manager->flush();
    }
}
