<!DOCTYPE html>
<html lang="fr">

    <?php require "config.php"; ?>

    <?php
$isbn=0;
    $link = mysqli_connect("localhost", "root", "", "bibliotheque");
    if (!$link) {
        echo "Erreur : Impossible de se connecter à MySQL." . PHP_EOL;
        echo "Errno de débogage : " . mysqli_connect_errno() . PHP_EOL;
        echo "Erreur de débogage : " . mysqli_connect_error() . PHP_EOL;
        exit;
    }

    if(isset($_GET["isbn"])){
        $isbn= $_GET["isbn"];
        $req = "SELECT manga.titre, manga.isbn, genre.libelle, editeur.edition, manga.resumer, manga.image, manga.image2, manga.annee, personne.nom, personne.prenom, personne.dt_naissance, personne.photo, personne.lieu, manga.lien_amazon FROM `manga` 
        JOIN auteur ON manga.isbn=$isbn AND manga.isbn=auteur.idLivre 
        JOIN editeur ON manga.editeur=editeur.id JOIN personne ON auteur.idPersonne=personne.id 
        JOIN genre ON manga.genre=genre.id;";
            $result = mysqli_query($link,$req);
            if($result) {
                while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
            ?>
            <head>
    <title>Manga kyōjin</title>
    <meta charset="utf-8"/>
    <link rel="shortcut icon" href="img/Manga_Whale.png">
    <link rel="stylesheet" href="style/main1.css">
    <link rel="stylesheet" href="style/nav.css">
</head>
<body>

    <h1><img alt="html icon" src="img/Manga_Whale.png"><br>Manga kyōjin</h1>
    <?php require "nav.php"; ?>
        <article>
            <ul>
                <li><h2><?php echo $row["titre"]; ?></h2></li>
                <li><?php echo "<img class=livre src=" . $row["image"];?> alt="image livre">
                    <div>
                        <table>
                            <tr>
                                <th>Description</th>
                                <th>Auteur</th>
                            </tr>
                            <tr>
                                <td>
                                    <p><strong>Titre:</strong><?php echo $row["titre"]; ?></p>
                                    <p class=resumer><strong>Type :</strong><?php echo $row["libelle"]; ?></p>
                                    <p class=resumer><strong>Synopsis :</strong><?php echo $row["resumer"]; ?></p>
                                    <p><strong>Edition VF :</strong><?php echo $row["edition"]; ?></p>
                                    <p><strong>ISBN :</strong><?php echo $row["isbn"]; ?></p>
        
                                    <p><strong>Date de parution: </strong>TOME 63: <time datetime="2015-10-07"><?php echo $row["annee"]; ?></time></p>
                                    <p><?php echo "<a href=" . $row["lien_amazon"]; ?> >lien amazon</a> </p>
                                </td>
                                <td>
                                <p><?php echo $row["nom"] . " " . $row["prenom"] . "<img class=auteur src=". $row["photo"] . ">" . $row["dt_naissance"] . "<br>" . $row["lieu"]; ?></p>
                                </td>
                            </tr>
                        </table>
                    </div>
                </li>
            </ul>
        </article>
        <?php
    }
    }
    }else{
    $req = "SELECT DISTINCT manga.id, manga.titre, manga.isbn, genre.libelle, editeur.edition, manga.image, manga.annee, manga.lien, personne.nom, personne.prenom FROM `manga` 
    JOIN auteur ON manga.isbn=auteur.idLivre 
    JOIN editeur ON manga.editeur=editeur.id JOIN personne ON auteur.idPersonne=personne.id 
    JOIN genre ON manga.genre=genre.id;";
    ?>
<head>
    <title>Manga kyōjin</title>
    <meta charset="utf-8"/>
    <link rel="shortcut icon" href="img/Manga_Whale.png">
    <link rel="stylesheet" href="style/main.css">
    <link rel="stylesheet" href="style/nav.css">
</head>
<body>

    <h1><img alt="html icon" src="img/Manga_Whale.png"><br>Manga kyōjin</h1>
    <?php require "nav.php"; ?>
    <?php
    $result = mysqli_query($link,$req);
    if($result) {
        echo "<article>";
        while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
    ?>

        <section>
            <ul>
                <li class=titre><h3><?php echo $row["titre"]; ?></h3></li>
                <li class=description>
                <a href="<?php echo "?isbn=" . $row["isbn"]; ?>"><img class=livre src="<?php echo $row["image"]; ?>" alt="image livre" ></a></li>
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
}
}
}
echo "</article>";
mysqli_close($link);
?>
</body>
</html>