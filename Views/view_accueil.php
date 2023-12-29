<?php
$title = "Accueil"; 
require 'view_begin.php';
?>

<h1>Bienvenue</h1> <!-- Mettre son nom si possible -->
<form action="?action=trier" method="post">
    <label for="column">Trier par:</label>
    <select name="column" id="column">
        <option value="name">Nom</option>
        <option value="type1">Type 1</option>
        <option value="total">Total</option>
        <option value="hp">HP</option>
        <option value="attaque">Attaque</option>
        <option value="defense">Défense</option>
        <option value="atk_spe">Attaque spé</option>
        <option value="dfs_spe">Défense spé</option>
        <option value="vitesse">Vitesse</option>
        <option value="gen">Génération</option>
    </select>

    <label for="order">Ordre:</label>
    <select name="order" id="order">
        <option value="ASC">Croissant</option>
        <option value="DESC">Décroissant</option>
    </select>

    <input type="submit" value="Trier">
</form>
<h3>Liste des Pokémon</h3>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Nom</th>
                <th>Type 1</th>
                <th>Type 2</th>
                <th>Total</th>
                <th>HP</th>
                <th>Attaque</th>
                <th>Défense</th>
                <th>Attaque Sp.</th>
                <th>Défense Sp.</th>
                <th>Vitesse</th>
                <th>Génération</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($data as $pokemon) : ?>
                <tr>
                    <td><?= htmlspecialchars($pokemon['id']) ?></td>
                    <td><?= htmlspecialchars($pokemon['name']) ?></td>
                    <td><?= htmlspecialchars($pokemon['type1']) ?></td>
                    <td><?= htmlspecialchars($pokemon['type2']) ?></td>
                    <td><?= htmlspecialchars($pokemon['total']) ?></td>
                    <td><?= htmlspecialchars($pokemon['hp']) ?></td>
                    <td><?= htmlspecialchars($pokemon['attack']) ?></td>
                    <td><?= htmlspecialchars($pokemon['defense']) ?></td>
                    <td><?= htmlspecialchars($pokemon['sp_atk']) ?></td>
                    <td><?= htmlspecialchars($pokemon['sp_def']) ?></td>
                    <td><?= htmlspecialchars($pokemon['speed']) ?></td>
                    <td><?= htmlspecialchars($pokemon['generation']) ?></td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
<?php require 'view_end.php'; ?>
