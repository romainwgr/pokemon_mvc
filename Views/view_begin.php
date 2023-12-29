<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php if(isset($title)){echo $title;}else{echo "Page";}?></title>
    <link rel="stylesheet" href="Content/css/style.css">
</head>
<body>
    <div class="navv">
        <nav>
            <ul>
                <li><a href="/autoformation/views/view_auth.php">Se connecter</a></li>
                <li><a href="/autoformation/views/view_account.php">Créer un compte</a></li>
            </ul>
        </nav>
    </div>