<?php

namespace App\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\CritiqueRepository")
 */
class Critique
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $title;

    /**
     * @ORM\Column(type="text")
     */
    private $content;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $image;

    /**
     * @ORM\Column(type="datetime")
     */
    private $createdAt;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\Category", inversedBy="critiques")
     * @ORM\JoinColumn(nullable=false)
     */
    private $category;

    /**
     * @ORM\OneToMany(targetEntity="App\Entity\CommentCritique", mappedBy="critique", orphanRemoval=true)
     */
    private $commentCritiques;

    /**
     * @ORM\Column(type="integer", nullable=true)
     */
    private $note;

    public function __construct()
    {
        $this->commentCritiques = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getTitle(): ?string
    {
        return $this->title;
    }

    public function setTitle(string $title): self
    {
        $this->title = $title;

        return $this;
    }

    public function getContent(): ?string
    {
        return $this->content;
    }

    public function setContent(string $content): self
    {
        $this->content = $content;

        return $this;
    }

    public function getImage(): ?string
    {
        return $this->image;
    }

    public function setImage(string $image): self
    {
        $this->image = $image;

        return $this;
    }

    public function getCreatedAt(): ?\DateTimeInterface
    {
        return $this->createdAt;
    }

    public function setCreatedAt(\DateTimeInterface $createdAt): self
    {
        $this->createdAt = $createdAt;

        return $this;
    }

    public function getCategory(): ?Category
    {
        return $this->category;
    }

    public function setCategory(?Category $category): self
    {
        $this->category = $category;

        return $this;
    }

    /**
     * @return Collection|CommentCritique[]
     */
    public function getCommentCritiques(): Collection
    {
        return $this->commentCritiques;
    }

    public function addCommentCritique(CommentCritique $commentCritique): self
    {
        if (!$this->commentCritiques->contains($commentCritique)) {
            $this->commentCritiques[] = $commentCritique;
            $commentCritique->setCritique($this);
        }

        return $this;
    }

    public function removeCommentCritique(CommentCritique $commentCritique): self
    {
        if ($this->commentCritiques->contains($commentCritique)) {
            $this->commentCritiques->removeElement($commentCritique);
            // set the owning side to null (unless already changed)
            if ($commentCritique->getCritique() === $this) {
                $commentCritique->setCritique(null);
            }
        }

        return $this;
    }

    public function getNote(): ?int
    {
        return $this->note;
    }

    public function setNote(?int $note): self
    {
        $this->note = $note;

        return $this;
    }
}
