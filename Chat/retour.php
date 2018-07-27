
<?php


// Récupération des 10 derniers messages
$reponse = $bdd->query('SELECT pseudo, message, date FROM minichat.messages ORDER BY id  DESC LIMIT 0, 10');
  
// Affichage de chaque message (toutes les données sont protégées par htmlspecialchars)
while ($donnees = $reponse->fetch())
{
    echo '<p><strong>' . htmlspecialchars($donnees['pseudo']) . '</strong> : ' . htmlspecialchars($donnees['message']) . "   " .  htmlspecialchars($donnees['date']) .'</p>';
}
$reponse->closeCursor();

?>