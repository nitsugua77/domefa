<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ajout Compte rendu</title>
    <link rel="Stylesheet" href="{$view.urlbaseaddr}css/modifier.css">
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
    <script src="https://maps.googleapis.com/maps/api/js?libraries=places&amp;key=AIzaSyDZ_QkVewPHf2Xq5FBeJh8tACHDK0QqVjw" type="text/javascript"></script>

</head>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <img style="width: 70px" src="{$view.links.Image}/DMF.png" alt="logo"/>
        <a class="navbar-brand" href="{$view.links.HomePro}?user={$smarty.get.user}" style="font-size: 30px"> &nbsp; Le Dossier Médical Facilité</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <div class="grouped">
                <ul class="navbar-nav ml-auto">

                    <li class="nav-item dropdown">
                        <a href="{$view.links.HomePro}?user={$smarty.get.user}" id="navbarDropdown" role="button"  aria-haspopup="true"
                           aria-expanded="false" class="water">
                            Mon compte pro &nbsp;
                        </a>
                    </li>

                    <li class="nav-item dropdown">
                        <form action="{$view.urlbaseaddr}index.php/session/index" method="post">
                            <button class="btn btn-lg btn-primary" name="logout" type="submit" value="2">Logout</button>
                        </form>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</nav>



<div class="container text-center">
    <div class="container">
        <div class="row">
            <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
                <div class="card card-signin my-5">
                    <div class="card-body" >
                        <h5 class="card-title text-center" style="font-size: 30px;"> Ajouter un compte rendu </h5>


                        <form class="form-signin" enctype="multipart/form-data"  action="{$view.urlbaseaddr}index.php/recherche/ajout_compte_rendu" method="post">

                            <div class="form-label-group">
                                <br>
                                <label>Numero Carte Vitale Patient </label>
                                <input type="text" pattern="^[0-9]+$" maxlength="13" name="numerocartevitale" class="form-control" id="NumeroCartevitale" title="NumeroCartevitale" placeholder="Numéro carte vitale à 13 chiffres" autofocus />
                                <br>
                            </div>

                            <div class="form-label-group">
                                <br>
                                <label>Date du compte rendu </label>
                                <input type="date"  class="form-control" name="datecompterendu" title="datecompterendu">
                                <br>
                            </div>

                            <div class="form-label-group">
                                <label for="Description">Description </label>
                                <textarea id="Description" name="description" class="form-control"></textarea>
                                <br>
                            </div>


                            <div class="form-label-group">
                                <label for="DocumentAnnexe">Document(s) Annexe(s)</label>
                                <input type="file" id="DocumentAnnexe"  name="documentannexe"  accept="image/png, image/jpeg, .txt, .pdf" multiple >
                                <br>
                            </div>

                            <br>
                            <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit" name="submit" value="4"> Ajouter </button>
                            <hr class="my-4">

                        </form>

                        {if isset($view.message)}
                        <h4 class="card-title text-center" style="font-size: 30px;"> {$view.message} </h4>
                        {/if}

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<br>

<div class="container text-center">
    <div class="container">
        <div class="row">
            <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
                <div class="card card-signin my-5">
                    <div class="card-body" >
                        <h5 class="card-title text-center" id="ancre" style="font-size: 30px;"> Ajouter une Ordonnance</h5>


                        <form class="form-signin" enctype="multipart/form-data"  action="{$view.urlbaseaddr}index.php/recherche/ajout_compte_rendu" method="post">

                            <div class="form-label-group">
                                <br>
                                <label>Numero Carte Vitale Patient </label>
                                <input type="text" pattern="^[0-9]+$" maxlength="13" name="numerocartevitale" class="form-control" id="NumeroCartevitale" title="NumeroCartevitale" placeholder="Numéro carte vitale à 13 chiffres" autofocus />
                                <br>
                            </div>

                            <div class="form-label-group">
                                <br>
                                <label>Nombre de jours de traitement</label>
                                <input name="nbrjours" type="text" class="form-control" id="NombreJourTraitement" title="NombreJourTraitement" placeholder="Nombre de jours de traitement" autofocus />
                                <br>
                            </div>

                            <div class="form-label-group">

                                <label>Nombre de prises par jour </label>
                                <input name="nbrprises" type="text" class="form-control" id="NombreParJour" title="NombreParJour" placeholder="Nombre de prises par jour" />
                                <br>
                            </div>

                            <div class="form-label-group">

                                <label>Nom du Médicament</label>
                                <input name="nommedic" type="text" class="form-control" id="NomMedicament" title="NomMedicament" placeholder="Nom du Médicament" />
                                <br>
                            </div>



                            <br>
                            <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit" name="submit" value="5"> Ajouter </button>
                            <hr class="my-4">

                        </form>

                        {if isset($view.message2)}
                            <h4 class="card-title text-center" style="font-size: 30px;"> {$view.message2} </h4>
                        {/if}

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="google_api.js"></script>
</html>