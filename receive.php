<?php
 if($_SERVER["REQUEST_METHOD"] == "POST"){
    $name = $_POST["client_name"];
    $radio = $_POST["client_type"];
    $email = $_POST["client_mail"] . "\r\n";
    $contenue = $_POST["contenue"];
    if(isset($_POST['message'])){
    $retour = mail('atdf2002@gmail.com', 'Envoi depuis la page Contact', $contenue, $name, $email);
    if($retour){
        echo '<p>Votre message a été envoyé.</p>';
    }else {
        echo '<p>Erreur.</p>';
}
    }
    echo "$name<br>";
    echo "$radio<br>";
    echo "$email<br>";
    echo "$contenue<br>";
 }
 ?>
