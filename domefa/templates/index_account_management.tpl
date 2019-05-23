<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>DMF - Gestion de compte</title>
    <link rel="Stylesheet" href="{$view.urlbaseaddr}css/account_management_patient.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>

{include file='navbar.tpl'}


<div class="container text-center">
    <h1 class="mt-5 text-white font-weight-light">Bienvenue {$view.results.prenom} {$view.results.nom}</h1>
    <div class="container">
        <div class="row">
            <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
                <div class="card card-signin my-5">
                    <div class="card-body">
                        <h5 class="card-title text-center" style="font-size: 30px;"> Profil </h5>

                        <div class="card-body">

                            <ul style="list-style: none" class="card-text">
                                <li>N° de Sécurité Sociale : {$view.results.numerocartevitale}</li>
                                <li>Adresse : {$view.results.adresse}, <br>{$view.results.codepostal} {$view.results.ville}</li>
                                <li>Téléphone : {$view.results.telephone}</li>
                                <li>Adresse mail : {$view.results.email}</li>
                                <li>Groupe sanguin : {$view.results.groupesanguin}</li>
                                <li>Date de naissance : {$view.results.datenaissance}</li>
                            </ul>
                            <a href="#" class="btn btn-primary" style="background-color: #EC930A; border: #EC930A">Vos rendez-vous </a>


                            <h3>Mon Médecin traitant </h3>
                            <img src="{$view.links.Image}/medecin.png"> <a href="fiche_medecin.html"> Dr {$view.results.medecintraitant}</a>

                            <h3> Mes comptes rendus </h3>

                            <table>
                                <tr>
                                    <th>Date du compte rendu</th>
                                    <th>Médecin</th>
                                    <th>Description</th>

                                </tr>
                                {foreach from=$view.resultsCR item=compterendu}
                                    <tr>
                                        <td>{$compterendu.datecompterendu}</td>
                                        <td>{$compterendu.medecin}</td>
                                        <td>{$compterendu.description}</td>
                                    </tr>
                                {/foreach}
                            </table>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</html>