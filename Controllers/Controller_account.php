<?php

class Controller_account extends Controller{
    
    
    /*    // On récupère le modèle
        $m = Model::getModel();
        $data = [
            //On récupère le nombre de prix nobels
            "nb" => $m->getFirst()
        ];
        $this->render("account", $data);
    }*/
    
    
    public function action_new(){
        echo 'sal';
        // On récupère les données pour facilité la lecture du code
        $mail= $_POST['mail'];
        $prenom= $_POST['prenom'];
        $mdp= $_POST['mdp'];
        $mdp2= $_POST['mdp2'];
        // On vérifie si le mail est bon et si il n'appartient pas déja à un compte
        if(
            isset($mail) && 
            preg_match("/^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/",$mail) 
        )
        {
            $m = Model::getModel();
            // Remplacer 'checkEmail' par la méthode appropriée de votre modèle qui vérifie l'e-mail
            $est_utilisé= $m->checkEmail($_POST['mail']);

            if($est_utilisé){
                $this->action_error("Le mail est déjà utilisé");
            }
        }
        else{
            $this->action_error("Le mail est incorrecte");
        }
        // On vérifie si les mots de passes sont correctes et équivalents
        if(
            isset($mdp) &&
            !empty($mdp) &&
            isset($mdp2) &&
            !empty($mdp2)
        )
        {
            if($mdp == $mdp2){
                if(strlen($mdp)<7){
                    $this->action_error("Le mot de passe est trop court");
                }
            }
            else{
                $this->action_error("Les mots de passe ne sont pas équivalents");
            }
        }
        else{
            $this->action_error("Veuillez rentrer les mots de passe");
        }
        if( 
            isset($prenom) && 
            preg_match("/^[a-zA-ZéèêëàâäôöûüçÉÈÊËÀÂÄÔÖÛÜÇ' -]+$/",$prenom) 
        )
        {

           $m= Model::getModel();
           $new_acc=$m->newAccount($mail,$prenom,$mdp);
           if($new_acc){
            $data=[
                "Votre compte à été créer ! Veuillez donc vous connecter."
            ];
            $this->render("auth",$data);

           }
           $data=[
            "Erreur de création de compte... Veuillez réessayez."
           ];
           $this->render("account",$data);

            }
            
        else{
            $this->action_error("Erreur de prénom");
        }   
    }





    public function action_default(){
        $this->render("account");
    }
}
