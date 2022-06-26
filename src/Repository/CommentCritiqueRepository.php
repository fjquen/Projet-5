<?php

namespace App\Repository;

use App\Entity\CommentCritique;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method CommentCritique|null find($id, $lockMode = null, $lockVersion = null)
 * @method CommentCritique|null findOneBy(array $criteria, array $orderBy = null)
 * @method CommentCritique[]    findAll()
 * @method CommentCritique[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class CommentCritiqueRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, CommentCritique::class);
    }

    // /**
    //  * @return CommentCritique[] Returns an array of CommentCritique objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('c')
            ->andWhere('c.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('c.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?CommentCritique
    {
        return $this->createQueryBuilder('c')
            ->andWhere('c.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
