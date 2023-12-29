<?php
$title="Créer un compte";
require "view_begin.php";?>

    <h1> Se créer un compte</h1>
        <form method="post" action="?action=new">
            <input type="text" name="mail" placeholder="mail">
            <input type="text" name="prenom" placeholder="prenom">
            <input type="password" name="mdp" placeholder="mot de passe">
            <input type="password" name="mdp2" placeholder="réécrivez votre mot de passe">
            <input type="submit" value="Créer un compte">
        </form>

<?php require 'view_end.php';?>