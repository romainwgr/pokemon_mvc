<?php 
$title= "Connexion";
require "view_begin.php";?>

    <h1>Connexion</h1>
    <form method="post" action="index.php">
        <input type="hidden" name="controller" value="auth">
        <input type="text" name="mail" placeholder="mail">
        <input type="password" name="mdp" placeholder="mot de passe">
        <input type="submit" value="Se connecter">
    </form>

<?php require "view_end.php";?>