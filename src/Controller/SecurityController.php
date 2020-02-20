<?php

namespace App\Controller;

use App\Entity\User;
use App\Form\RegistrationType;
use Doctrine\Common\Persistence\ObjectManager;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;
use Swift_Mailer;
use Swift_Message;
use Swift_SmtpTransport;

class SecurityController extends AbstractController
{
    /**
     * @Route("/inscription", name="security_registration")
     */
    public function registration(Request $request, ObjectManager $manager, UserPasswordEncoderInterface $encoder)
    {
        $user = new User();

        $form = $this->createForm(RegistrationType::class, $user);

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $hash = $encoder->encodePassword($user, $user->getPassword());
            $user->setPassword($hash);
            $user->setConfirmationToken($this->generateToken());
            $manager->persist($user);
            $manager->flush();
            $token = $user->getConfirmationToken();
            $username = $user->getUsername();

            
            // Create the Transport
         $transport = (new Swift_SmtpTransport('smtp.googlemail.com', 465, 'ssl'))
         ->setUsername('blogfortoche@gmail.com')
         ->setPassword('Hachibi8');

     // Create the Mailer using your created Transport
     $mailer = new Swift_Mailer($transport);

     // Create a message
     $body = 'Bonjour, <p>' .$username. ' ci-dessous votre lien pour valider votre compte  http://127.0.0.1:8000/account/confirm/'.$token.'/'.$username.' Une fois que vous aurez cliqué sur ce lien il vous enverra directement sur la page de connexion, n\'oubliez pas identifiant de connexion.</p>';

     $message = (new Swift_Message('Email Validation Inscription'))
         ->setFrom(['pototron@gmx.fr' => 'DocMedia'])
         ->setTo($user->getEmail())
         ->setBody($body)
         ->setContentType('text/html');

     // Send the message
     $mailer->send($message);

            return $this->redirectToRoute('security_email_validation');
        }

         

        return $this->render('security/registration.html.twig', [
            'form' => $form->createView()
        ]);
    }
    /**
     * @Route("/account/confirm/{token}/{username}", name="confirm_account")
     * @param $token
     * @param $username
     */
    public function confirmAccount($token, $username){
        $em = $this->getDoctrine()->getManager();
        $user = $em->getRepository(User::class)->findOneBy(['username' => $username]);
        $tokenExist = $user->getConfirmationToken();
        if($token === $tokenExist) {
           $user->setConfirmationToken(null);
           $user->setEnabled(true);
           $em->persist($user);
           $em->flush();
           return $this->redirectToRoute('security_login');
        }else {
           return $this->render('security/token-expire.html.twig');
        }
    }
    /**
     * @Route("/connexion", name="security_login")
     */
    public function login()
    {
            return $this->render('security/login.html.twig');
    }

    /**
     * @Route("/deconnexion", name="security_logout")
     */
    public function logout(){}
    

     /**
     * @return string
     * @throws \Exception
     */
    private function generateToken()
    {
        return rtrim(strtr(base64_encode(random_bytes(32)), '+/', '-_'), '=');
    }

     /**
     * @Route("/email_validation", name="security_email_validation")
     */
    public function validation()
    {
            return $this->render('security/validation_email.html.twig');
    }

    
}
