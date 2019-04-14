<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>DMF</title>
    <meta name="author" content="Les Pingouins du Désert">
    <meta name="description" content="Header Dossier Médicale Facilité">
    <meta name="keywords" content="Header Dosssier Médicale Facile Santé ">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="Stylesheet" href="header.css">

</head>
<body>
<div>
    <div class="container1">
        <a class="item" href="accueil_pro.html"><img src="logo2.png" alt="Dossier Médicale Facilité"></a>


        <h1 class="title_header">Le Dossier Médicale Facilité</h1>
        <div>
            <ul class="grouped">

                <li>
                    <button class="button_header" onclick="document.getElementById('id01').style.display='block'" style="width:auto;"><span> Se connecter </span></button>
                    <div id="id01" class="modal">

                        <form class="modal-content animate" action="/action_page.php">
                            <div class="imgcontainer">
                                <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
                                <img id="img_doctor" src="doctor1.png" alt="Avatar" class="avatar">
                            </div>

                            <div class="container">
                                <label for="RPPS"><b>RPPS</b></label>
                                <input type="text" placeholder="Numero RPPS" name="RPPS" required>

                                <label for="psw"><b>Mot de passe</b></label>
                                <input type="password" placeholder="Mot de passe" name="psw" required>

                                <button type="submit">Se connecter</button>

                            </div>

                            <div class="container" style="background-color:#f1f1f1">
                                <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>

                            </div>
                        </form>
                    </div>
                </li>
                <li>
                    <button class="button_header" onclick="document.getElementById('id02').style.display='block'" style="width:auto;"><span> S'inscrire </span></button>
                    <div id="id02" class="modal">

                        <form class="modal-content animate" action="/action_page.php">
                            <div class="imgcontainer">
                                <h1 id="titre_modal_ins">Inscription Pro</h1>
                            </div>

                            <div class="container">
                                <form action="accueil_pro.html">

                                    <div class="form-group">
                                        <label for="RPPS">RPPS : </label>
                                        <input type="text" class="form-control" id="RPPS" placeholder="RPPS" name="RPPS"
                                               required>
                                    </div>

                                    <div class="form-group">
                                        <label for="email">Email:</label>
                                        <input type="email" class="form-control" id="email" placeholder="Enter email"
                                               name="email" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="pwd">Mot de Passe:</label>
                                        <input type="password" class="form-control" id="pwd" placeholder="Mot de passe"
                                               name="pwd" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="pwd">Mot de Passe:</label>
                                        <input type="password" class="form-control" id="cpwd" placeholder="Mot de passe"
                                               name="Confirm_Password" required>
                                    </div>

                                    <div class="form-group">
                                        <label for="fn"> Prénoms : </label>
                                        <input type="text" class="form-control" id="fn" placeholder="Prénoms"
                                               name="First_name" required>
                                    </div>

                                    <div class="form-group">
                                        <label for="ln">Nom : </label>
                                        <input type="text" class="form-control" id="ln" placeholder="Nom de famille"
                                               name="Last_name" required>
                                    </div>

                                    <div class="form-group">
                                        <label for="ct">Ville: </label>
                                        <input type="text" class="form-control" id="ct" placeholder="Enter City" name="City"
                                               required>
                                    </div>

                                    <div class="form-group">
                                        <label for="ct">Adresse: </label>
                                        <input type="text" class="form-control" id="ct" placeholder="Adresse" name="adresse"
                                               required>
                                    </div>

                                    <div class="form-group">
                                        <label for="mb">Téléphone : </label>
                                        <input type="text" class="form-control" id="mb" placeholder="Enter Mobile" name="Mobile"
                                               required>
                                    </div>

                                    <div class="form-group">
                                        <label for="spe">Spécialisation : </label>
                                        <input type="text" class="form-control" id="spe" placeholder="Spécialisation" name="Specialisation"
                                               required>
                                    </div>

                                    <div class="form-group">
                                        <label for="spe">Signature : </label>
                                        <input type="file" id="signature" name="signature" accept="image/png, image/jpeg" multiple required>
                                    </div>
                                    <!-- Trigger the modal with the submit button -->
                                    <button type="submit" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Register</button>

                            </div>

                            <div class="container" style="background-color:#f1f1f1">
                                <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>

                            </div>
                        </form>


                    </div>

                </li>
            </ul>
        </div>
</body>

<script>
    // Get the modal
    var modal = document.getElementById('id01');

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
</script>
</html>


<?php
?>