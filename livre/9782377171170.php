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
    $req = "SELECT manga.titre, manga.isbn, genre.libelle, editeur.edition, manga.resumer, manga.annee, personne.nom, personne.prenom, personne.dt_naissance, personne.lieu FROM `manga` 
    JOIN auteur ON manga.isbn=9782377171170 AND manga.isbn=auteur.idLivre 
    JOIN editeur ON manga.editeur=editeur.id JOIN personne ON auteur.idPersonne=personne.id 
    JOIN genre ON manga.genre=genre.id;";
    $result = mysqli_query($link,$req);
    if($result) {
        while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
    ?>
<article>
    <ul>
        <li><h2><?php echo $row["titre"]; ?></h2></li>
            <li><img class=livre alt="Made in abyss" src="../img/Made_in_abyss.jpg">
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
                                <p><a href="https://www.amazon.fr/Made-Abyss-1-Akihito-Tsukushi/dp/2377171176/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=tome+1+made+in+abyss&qid=1608118295&sr=8-1">Lien amazon</a></p>
                            </td>
                            <td>
                                <p>Tsukushi Akihito  <img class=auteur alt="Tsukushi Akihito" src="../img/tsukushi_akihito.jpg">05/05/1979 (41 ans)</p>
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
