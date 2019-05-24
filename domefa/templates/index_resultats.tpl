<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>DMF - Résultats de recherche</title>
    <meta name="author" content="Les Pingouins du Désert">
    <meta name="description" content="Résultats de recherche de patients">
    <meta name="keywords" content="Dossier Medical Facilite patient résultat">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="Stylesheet" href="{$view.urlbaseaddr}css/account_management_medecin.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
{include file='navbar.tpl'}
<body>
<header>
    <!-- php header en fonction de qui ou non -->
</header>
<main>
    <section>
        <div class="container text-center">
            <h1 class="mt-5 text-white font-weight-light">Résultats de votre recherche </h1>
            <div class="container">
                <label>Filtres
                    <select name="Sort By">
                        <option value="DateA">Par ordre alphabétique (nom)</option>
                        <option value="DateD">Par ordre d'âge (croissant)</option>
                    </select>
                </label>
                <div class="row">
                    <div class="col-lg-10 col-xl-9 mx-auto">
                        <div class="card card-signin my-5">
                            <div class="card-body">
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-hover">
                                            <thead>
                                            <tr>
                                                <th>Nom</th>
                                                <th>Prénom</th>
                                                {if isset($view.results[0].numerocartevitale)}
                                                    <th>Numéro de carte vitale</th>
                                                {/if}
                                                {if isset($view.results[0].rpps)}
                                                    <th>RPPS</th>
                                                {/if}
                                                <th>Telephone</th>
                                                <th>Adresse</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                                {foreach from=$view.results item=user}
                                                    <tr style="cursor:pointer">
                                                        <td>{$user.nom}</td>
                                                        <td>{$user.prenom}</td>
                                                        {if isset($user.numerocartevitale)}
                                                            <td>{$user.numerocartevitale}</td>
                                                        {/if}
                                                        {if isset($user.rpps)}
                                                            <td>{$user.rpps}</td>
                                                        {/if}
                                                        <td>{$user.telephone}</td>
                                                        <td>{$user.adresse}, {$user.codepostal} {$user.ville}</td>
                                                    </tr>
                                                {/foreach}
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-10 col-xl-9 mx-auto">
                    <div class="card card-signin flex-row my-5">
                        <div class="card-img-left d-none d-md-flex">
                            <!-- Background image for card set in CSS! -->
                        </div>

                    </div>
                </div>
            </div>


            <div class="container">
                <div class="row">


                </div>

            </div>
        </div>

        <script>

            jQuery(document).ready(function ($) {
                $('tr[data-href]').on('click', function () {
                    window.location = $(this).data("href");
                });
            });
        </script>

    </section>
</main>

<footer>

</footer>

</body>
</html>