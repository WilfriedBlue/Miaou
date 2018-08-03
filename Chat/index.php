<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Miaou</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<center>    <h1>Mini Miaou</h1> </center>

<div id="rifraiche">
<?php
include('retour.php');
?>  
</div>
<center>

<form method='POST' onsubmit="storeMessage(event, this)" action="traitement.php">
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
<script
			  src="https://code.jquery.com/jquery-3.3.1.min.js"
			  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
			  crossorigin="anonymous"></script>
<script src="chat.js" type="text/javascript"></script>

</body>
</html>