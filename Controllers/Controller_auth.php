<?php

class Controller_auth extends Controller
{
    /*public function action_auth()
    {

        // On récupère le modèle
        $m = Model::getModel();
        $data = [
            //On récupère le nombre de prix nobels
            "nb" => $m->getFirst()
        ];
        $this->render("auth", $data);
    }*/

    public function action_login() {
        if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['mail'], $_POST['mdp'])) {
            $model = Model::getModel();
            $mail = $_POST['mail'];
            $motdepasse = $_POST['mdp'];

            $user = $model->connect($mail, $motdepasse);

            if ($user) {
                $_SESSION['user'] = $user;
                $this->action_poke();
                //$this->render('accueil', ['user' => $user]);
            } else {
                $this->action_error("Identifiant ou mot de passe incorrect.");
            }
        } else {
            $this->action_error("Demande de connexion invalide.");
        }
    }

    public function action_default()
    {
        $this->action_login();
    }

    public function action_poke(){
        $m = Model::getModel();
    
        // Utiliser le modèle pour récupérer des données
        $data = $m->getPokemons();
    
        // Préparer les données pour la vue
        $vudata = [
            'title' => 'Ma Page Par Défaut',
            'data' => $data
        ];
    
        // Afficher la vue
        $this->render('accueil', $vudata);
    }
    public function action_trier(){
        $m = Model::getModel();
        $data = [
            "liste" => $m->getPokemonsTrier(),
        ];
        $this->render("accueil", $data);
    }
}
