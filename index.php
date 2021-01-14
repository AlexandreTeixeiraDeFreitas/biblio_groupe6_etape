<!DOCTYPE html>
<html lang="fr">
<head>
    <title>Manga kyōjin</title>
    <meta charset="utf-8"/>
    <link rel="shortcut icon" href="img/Manga_Whale.png">
    <link rel="stylesheet" href="style/main.css">
    <link rel="stylesheet" href="style/nav.css">
</head>
<body>

    <h1><img alt="html icon" src="img/Manga_Whale.png"><br>Manga kyōjin</h1>
    <?php require "config.php"; ?>
    <?php require "nav.php"; ?>
    <?php
    $link = mysqli_connect("localhost", "root", "", "bibliotheque");
    if (!$link) {
        echo "Erreur : Impossible de se connecter à MySQL." . PHP_EOL;
        echo "Errno de débogage : " . mysqli_connect_errno() . PHP_EOL;
        echo "Erreur de débogage : " . mysqli_connect_error() . PHP_EOL;
        exit;
    }
    $id=1;
    echo "<article>";
    $req = "SELECT DISTINCT manga.id, manga.titre, manga.isbn, genre.libelle, editeur.edition, manga.image, manga.annee, manga.lien, personne.nom, personne.prenom FROM `manga` 
    JOIN auteur ON manga.isbn=auteur.idLivre 
    JOIN editeur ON manga.editeur=editeur.id JOIN personne ON auteur.idPersonne=personne.id 
    JOIN genre ON manga.genre=genre.id;";
    $result = mysqli_query($link,$req);
    if($result) {
        while($id<=12) {
        while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
   
    ?>


        <section>
            <ul>
                <li class=titre><h3><?php echo $row["titre"]; ?></h3></li>
                <li class=description>
                <?php echo "<a href=" . $row["lien"]; ?> ><?php echo "<img class=livre src=" . $row["image"]; ?> alt="image livre" ></a></li>
                    <div>
                            <p class=resumer><strong>Titre:</strong><?php echo $row["titre"]; ?><br>
                            <strong>Auteur: </strong><?php echo $row["nom"] . $row["prenom"]; ?><br>
                            <strong>Type :</strong><?php echo $row["libelle"]; ?><br>
                            <strong>Edition VF: </strong><?php echo $row["edition"]; ?><br>
                            <strong>ISBN :</strong><?php echo $row["isbn"]; ?><br>
                            <strong>Date de parution: </strong>TOME: <time datetime="2015-10-07"><?php echo $row["annee"]; ?></time><br></p>
                    </div>

            </ul>
        </section>
        

<?php
$id++;
}
}    
}
echo "</article>";
mysqli_close($link);
?>
</body>
</html>