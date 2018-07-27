<?php

try{
    $bdd = new PDO('mysql:host=localhost;dbname=minichat;charset=utf8', 'root', '');
}
catch(Exception $e){
      die('Erreur : '.$e->getMessage());
};

//verif
if ( isset ( $_POST['submit'])) {
    if ( isset  ( $_POST['pseudo'] ) AND isset( $_POST['message'] ) ) {
         if ( !empty ( $_POST['pseudo'] ) AND !empty ($_POST['message'] ) ) {
             $pseudo = $_POST['pseudo'];
             $message = $_POST['message'];
         }
    }
}
// Insertion du message 
$req = $bdd->prepare('INSERT INTO minichat.messages (pseudo, message, date) VALUES(?, ?,NOW())');
$req->execute(array($_POST['pseudo'], $_POST['message']));

setcookie("pseudo", $_POST["pseudo"], time()+10000);

?>