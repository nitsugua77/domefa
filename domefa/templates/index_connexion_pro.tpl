<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ajout Compte rendu</title>
    <link rel="Stylesheet" href="{$view.urlbaseaddr}css/account_management_pharmacien.css">
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
    <link rel="Stylesheet" href="{$view.urlbaseaddr}css/header.css">

</head>
<header>

    <nav class="container1 navbar navbar-custom navbar-fixed-top navbar-expand-lg navbar-light bg-light" role="navigation">

        <a class="item" href="{$view.links.Home}"><img src="{$view.links.Image}/DMF.png" style="width:70px"
                                                       alt="Dossier Médicale Facilité"></a>

        <a href="{$view.links.Home}">
            <button class="button_espace_pro"> Vers Espace Particulier</button>
        </a>
        <h1 class="title">Le Dossier Médical Facilité</h1>
        <div class="grouped">

            <button class="button_header" style="width:auto"><a href="{$view.urlbaseaddr}index.php/index/connexionPro"
                                                                style="text-decoration: none; color: white;"> Se
                    connecter </a></button>
            <button class="button_header" style="width:auto"><a href="{$view.urlbaseaddr}index.php/index/inscriptionPro"
                                                                style="text-decoration: none; color: white;">
                    S'inscrire </a></button>
        </div>

    </nav>
</header>


<body>

<div class="container text-center">
    <br><br><br>
    <div class="container">
        <div class="row">
            <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
                <div class="card card-signin my-5">
                    <div class="card-body" >
                        <h5 class="card-title text-center" style="font-size: 30px;"> Se Connecter Pro</h5>


                        <form class="form-signin" action="{$view.urlbaseaddr}index.php/sessionPro/index" method="post">



                            <div class="form-label-group">
                                <label for="RPPS"><b>RPPS</b></label>
                                <input id="RPPS" type="text" placeholder="RPPS"  class="form-control" name="RPPS" required>
                            </div>
                            <br>
                            <div class="form-label-group">
                                <label for="psw"><b>Mot de passe</b></label>
                                <input id = "psw" type="password" placeholder="Mot de passe"  class="form-control" name="password" required>
                            </div>




                            <br>
                            <button class="btn btn-lg btn-primary btn-block text-uppercase" name="submit" type="submit" value="12"> Se Connecter </button>
                            <hr class="my-4">

                        </form>



                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<br>
</body>
<script type="text/javascript" src="google_api.js"></script>
</html>