<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Inscription Patient</title>
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
    <link rel="Stylesheet" href="{$view.urlbaseaddr}css/header.css">

</head>

<header>

    <nav class="container1 navbar navbar-custom navbar-fixed-top navbar-expand-lg navbar-light bg-light" role="navigation">

        <a class="item" href="{$view.links.Home}"><img src="{$view.links.Image}/DMF.png" style="width:70px"
                                                       alt="Dossier Médicale Facilité"></a>

        <a href="{$view.links.Index_pro}">
            <button class="button_espace_pro"> Vers Espace Pro</button>
        </a>
        <h1 class="title">Le Dossier Médical Facilité</h1>
        <div class="grouped">

            <button class="button_header" style="width:auto"><a href="{$view.urlbaseaddr}index.php/index/connexionPatient"
                                                                style="text-decoration: none; color: white;"> Se
                    connecter </a></button>
            <button class="button_header" style="width:auto"><a href="{$view.urlbaseaddr}index.php/index/inscriptionPatient"
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
                        <h5 class="card-title text-center" style="font-size: 30px;"> Inscription </h5>


                        <form class="form-signin" action="{$view.urlbaseaddr}index.php/session/index" enctype="multipart/form-data"
                              method="post">

                            <div class="form-label-group">
                                <label> Sexe :
                                    <input type="radio" name="sexe" value="male" checked> Homme
                                    <input type="radio" name="sexe" value="female"> Femme
                                </label><br>
                            </div>

                            <div class="form-label-group">
                                <label for="email">Email :</label><br>
                                <input type="email" class="form-control" id="email"
                                       placeholder="Entrez votre email"
                                       name="email" required>
                            </div>
                            <div class="form-label-group">
                                <label for="pwd">Mot de Passe :</label>
                                <input type="password" class="form-control" id="pwd"
                                       placeholder="Mot de passe"
                                       name="password" required>
                            </div>
                            <div class="form-label-group">
                                <label for="pwd">Confirmation de votre Mot de Passe :</label>
                                <input type="password" class="form-control" id="cpwd"
                                       placeholder="Confirmation"
                                       name="Confirm_Password" required>
                            </div>

                            <div class="form-label-group">
                                <label for="fn"> Prénom : </label>
                                <input type="text" class="form-control" id="fn" placeholder="Prénom"
                                       name="prenom" pattern="^[a-zA-Z]+$" maxlength="40"
                                       data-error="Invalid character" required>
                            </div>

                            <div class="form-label-group">
                                <label for="ln">Nom : </label>
                                <input type="text" class="form-control" id="ln"
                                       placeholder="Nom de famille"
                                       name="username" pattern="^[a-zA-Z]+$" maxlength="40"
                                       data-error="Invalid character"  required>
                            </div>

                            <div class="form-label-group">
                                <label for="rpps">RPPS du médecin traitant : </label>
                                <input type="text" class="form-control" id="rpps"
                                       placeholder="RPPS du médecin traitant" name="RPPSTraitant" pattern="^[0-9]+$" maxlength="15"
                                       required>
                            </div>

                            <div class="form-label-group">
                                <label for="locality">Numero de résidence :</label>
                                <input type="text" id="street_number" placeholder="Numéro de Résidence"
                                       name="numerores" pattern="^[0-9]+$" maxlength="15"
                                       data-error="Invalid character"  class="form-control" required>
                            </div>

                            <div class="form-label-group">
                                <label for="locality">Nom de rue :</label>
                                <input type="text" id="route" placeholder="Rue"
                                       name="rue" maxlength="100"
                                       data-error="Invalid character"  class="form-control" required>
                            </div>

                            <div class="form-label-group">
                                <label for="locality">Ville :</label>
                                <input type="text" id="locality" placeholder="Ville"
                                       name="nomville" pattern="^[a-zA-Z]+$" maxlength="100"
                                       data-error="Invalid character"  class="form-control" required>
                            </div>

                            <div class="form-label-group">
                                <label for="locality">Code postal :</label>
                                <input type="text" id="postal_code" placeholder="Code postal"
                                       name="codepostal" pattern="^[0-9]+$" maxlength="5"
                                       data-error="Invalid character"  class="form-control" required>
                            </div>

                            <div class="form-label-group">
                                <label for="mb">Téléphone : </label>
                                <input type="text" class="form-control" id="mb"
                                       placeholder="Numéro de téléphone" name="telephone" pattern="^[0-9]+$" maxlength="10"
                                       required>
                            </div>

                            <div class="form-label-group">
                                <label for="secunum">Numero Securite sociale :</label>
                                <input type="text" id="secunum" class="form-control"
                                       placeholder="Securite sociale"
                                       name="numeroCarteVitale" pattern="^[0-9]+$" maxlength="15" required>
                            </div>

                            <div class="form-label-group">
                                <label for="signature">Carte Mutuelle : </label>
                                <input type="file" id="signature" name="carteMutuelle"
                                       accept="image/png, image/jpeg" multiple required>
                            </div>

                            <div class="form-label-group">
                                <label>Date de Naissance:
                                    <input type="date" name="dateNaissance">
                                </label><br>
                            </div>

                            <div class="form-label-group">
                                <label> Groupe Sanguin:
                                    <input type="radio" name="groupeSanguin" value="A+"> A+
                                    <input type="radio" name="groupeSanguin" value="A-"> A-
                                    <input type="radio" name="groupeSanguin" value="B+"> B+
                                    <input type="radio" name="groupeSanguin" value="B-"> B-
                                    <input type="radio" name="groupeSanguin" value="AB"> AB
                                    <input type="radio" name="groupeSanguin" value="O+"> O+
                                    <input type="radio" name="groupeSanguin" value="O-"> O-
                                </label><br>
                            </div>

                            <div class="form-label-group">

                                <input type="radio" name="auth" value="true" required> Je certifie que
                                les informations me sont propres et personnelles
                            </div>




                            <br>
                            <button class="btn btn-lg btn-primary btn-block text-uppercase" name="submit"
                                    type="submit" value="4"> S'inscrire </button>
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