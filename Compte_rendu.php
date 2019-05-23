
<!DOCTYPE html>
<html lang="en" xmlns:v-on="http://www.w3.org/1999/xhtml" xmlns:v-bind="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <title>Compte Rendu DMF</title>
    <meta name="author" content="Les Pingouins du Désert">
    <meta name="description" content="Dossier Médical Facilité">
    <meta name="keywords" content="Dosssier Médical Facile Santé ">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="Stylesheet" href="Information_client_pharmacien.css">


</head>

<header> <?php include('header_connected.php'); ?> </header>

<h1>Ajout Compte rendu</h1>


        <form action="accueil_pro.html">


            //Récuperer les infos du médecin connecté dans la base de données pour les ajouter au compte rendu

            <div class="form-group">
                <label for="fn"> Prénoms Patient : </label>
                <input type="text" class="form-control" id="fn" placeholder="Prénoms"
                       name="First_name" required>
            </div>

            <div class="form-group">
                <label for="ln">Nom Patient : </label>
                <input type="text" class="form-control" id="ln" placeholder="Nom de famille"
                       name="Last_name" required>
            </div>

            <label>Date Compte rendu :
                <input type="date" name="DateOfBirth">
            </label><br>



            Description: <br><textarea name="Description" required></textarea>
            <br>

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

<?php
