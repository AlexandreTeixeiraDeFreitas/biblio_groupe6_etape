<?php require "../foulder.php"; ?>
    <?php require "../nav.php"; ?>
    <?php
    $link = mysqli_connect("localhost", "root", "", "bibliotheque");
    if (!$link) {
        echo "Erreur : Impossible de se connecter à MySQL." . PHP_EOL;
        echo "Errno de débogage : " . mysqli_connect_errno() . PHP_EOL;
        echo "Erreur de débogage : " . mysqli_connect_error() . PHP_EOL;
        exit;
    }
    $req = "SELECT manga.titre, manga.isbn, genre.libelle, editeur.edition, manga.resumer, manga.image, manga.image2, manga.annee, personne.nom, personne.prenom, personne.dt_naissance, personne.photo, personne.lieu, manga.lien_amazon FROM `manga` 
    JOIN auteur ON manga.isbn=9782723457897 AND manga.isbn=auteur.idLivre 
    JOIN editeur ON manga.editeur=editeur.id JOIN personne ON auteur.idPersonne=personne.id 
    JOIN genre ON manga.genre=genre.id;";
    $result = mysqli_query($link,$req);
    if($result) {
        while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
    ?>
<article>
    <ul>
        <li><h2><?php echo $row["titre"]; ?></h2></li>
        <li><?php echo "<img class=livre src=" . $row["image2"];?> alt="image livre">
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
                            <p><strong>Date de parution: </strong>TOME 1: <time datetime="2015-10-07"><?php echo $row["annee"]; ?></time></p>
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
    mysqli_close($link);
    ?>
</body>
</html>