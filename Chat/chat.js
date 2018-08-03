setInterval(function () {
    $.ajax({
        url: "retour.php", // Ton fichier ou se trouve ton chat
        success:
            function (retour) {
                $('#rifraiche').html(retour); // rafraichi toute ta DIV "bien sur il lui faut un id "
                window.scrollTo(0, 9999);
            }
    });

}, 1000) // Répète la fonction toutes les 2 sec

window.scrollTo(0, 9999);

function storeMessage(event, form) {
    //N'envoie pas le formulaire
    
    event.preventDefault();

    console.log($(form).serialize());
    $(form).find('#btnEnvoyerChat').text('En cours..');

    console.log($(form).attr('action'))
    $.post('traitement.php', $(form).serialize(),  function (error) {
            if (error) {
                alert(error);
            }
            //rworking
            $(form).find('#btnEnvoyerChat').text('Envoyer');
            $('#message').val('');
        });
}