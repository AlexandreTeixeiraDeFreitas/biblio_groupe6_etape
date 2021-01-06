<!DOCTYPE html>
<html lang="fr" dir="ltr">
<head>
    <meta charset="uft-8">
<title>TP 6</title>
</head>
<body>
<?php
    $link = mysqli_connect("localhost", "root", "", "bibliotheque");
    if (!$link) {
        echo "Erreur : Impossible de se connecter à MySQL." . PHP_EOL;
        echo "Errno de débogage : " . mysqli_connect_errno() . PHP_EOL;
        echo "Erreur de débogage : " . mysqli_connect_error() . PHP_EOL;
        exit;
    }
    $req = "SELECT manga.titre, manga.isbn, genre.libelle, manga.resumer, manga.annee, personne.nom, personne.prenom, personne.dt_naissance, personne.lieu FROM `manga` 
    JOIN auteur ON manga.isbn=9782811611699 AND manga.isbn=auteur.idLivre 
    JOIN editeur ON manga.editeur=editeur.id JOIN personne ON auteur.idPersonne=personne.id 
    JOIN genre ON manga.genre=genre.id;";
    $result = mysqli_query($link,$req);
    if($result) {
        while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
    ?>
    <?php echo "<p>titre : " . $row["titre"] . "<br>"; ?>
    <?php
            echo "Année : " . $row["annee"] . "<br>";
    ?>
    <?php
            echo "isbn : " . $row["isbn"] . "</p>";
    ?>
    <?php
    }    
    }
    mysqli_close($link);
    ?>
</body>
</html>