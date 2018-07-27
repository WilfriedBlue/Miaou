<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<?php
include('traitement.php');
?>

<center>    <h1>Mini Miaou</h1> </center>

<?php
include('retour.php');
?>

<center>

<form method='POST' action=''>
<fieldset>


       <label for='pseudo'>Pseudo : </label>
       <input type='text' name='pseudo' id='pseudo'
       <?php

       if ( isset  ($_COOKIE['pseudo'] ) ) {
            $cooclean = htmlspecialchars(strip_tags( $_COOKIE['pseudo']));
            echo "value=" .  $cooclean;
             
    }
    ?>
>
       <br>
       <label for='message'>Message :</label>
       <input type='text' name='message' id='message' >
       <br>
       <input type='submit' value='Envoyer'>

       

   </fieldset>
</form>

</center>
</body>
</html>