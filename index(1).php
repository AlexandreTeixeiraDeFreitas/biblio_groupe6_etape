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
    $req = "SELECT * FROM `livre` JOIN langue ON livre.langue = 1 AND livre.langue = langue.id;";
    $result = mysqli_query($link,$req);

    if($result) {
        while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
            echo "<p>titre : " . $row["titre"] . "<br>";
            echo "Année : " . $row["annee"] . "</p>";
            echo "isbn : " . $row["isbn"] . "<br>";

        }
        
    }
    mysqli_close($link);
    ?>
</body>
</html>