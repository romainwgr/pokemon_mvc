<?php

class Controller_acceuil extends Controller
{
    public function action_default() {
        $this->action_poke();
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
    public function action_getfort(){
        $m = Model::getModel();
        $data = [
            "liste" => $m->getPokemonsPower(),
        ];
        $this->render("accueil", $data);
    }
}