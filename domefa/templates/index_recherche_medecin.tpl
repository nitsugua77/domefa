<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Recherche médecin</title>
    <link rel="Stylesheet" href="{$view.urlbaseaddr}css/recherche.css">
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

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="item" href="{$view.links.HomePatient}"><img src="{$view.links.Image}/DMF.png" alt="Dossier Médical Facilité"
                                                              style="width:70px"></a>
        {if isset($view.typeuser)}
            {if $view.typeuser == 0}
                <a class="navbar-brand" href="{$view.links.HomePatient}" style="font-size: 25px"> &nbsp; Le Dossier Médical
                    Facilité &nbsp; &nbsp; </a>
            {else}
                {if $view.typeuser == 1}
                <a class="navbar-brand" href="{$view.links.HomePro}" style="font-size: 25px"> &nbsp; Le Dossier Médical
                    Facilité &nbsp; &nbsp; </a>
                {/if}
            {/if}
        {/if}
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item dropdown">
                    <button type="button" class="btn btn-default btn-sm"
                            style=" background: rgba(255,255,255,0); border: none;">
                        <a href="{$view.urlbaseaddr}index.php/recherche/indexMedecin" id="navbarDropdown" role="button" aria-haspopup="true"
                           aria-expanded="false" class="water">
                            Rechercher un médecin &nbsp;
                        </a>
                    </button>
                </li>
                <li>
                    <button type="button" class="btn btn-default btn-sm"
                            style=" background: rgba(255,255,255,0);  border: none;">
                        <a href="{$view.urlbaseaddr}index.php/recherche/imc" id="navbarDropdown2" aria-haspopup="true" aria-expanded="false"
                           class="water">
                            Calculer son IMC &nbsp;
                        </a>
                    </button>
                </li>

                <li class="nav-item dropdown">
                    <button type="button" class="btn btn-default btn-sm"
                            style=" background: rgba(255,255,255,0);  border: none;">
                        {if isset($view.typeuser)}
                            {if $view.typeuser == 0}
                                <a href="{$view.links.HomePatient}" id="navbarDropdown5" role="button"
                                   aria-haspopup="true"
                                   aria-expanded="false" class="water">
                                    Mon compte
                                </a>
                            {else}
                                {if $view.typeuser == 1}
                                    <a href="{$view.links.HomePro}" id="navbarDropdown5" role="button"
                                       aria-haspopup="true"
                                       aria-expanded="false" class="water">
                                        Mon compte
                                    </a>
                                {/if}
                            {/if}
                        {/if}

                    </button>
                </li>

                <li>


                    <button type="button" class="btn btn-default btn-sm water"
                            style=" background: rgba(255,255,255,0); border: none;"><a
                                tabindex="0" data-toggle="popover" data-trigger="focus" data-placement="bottom"
                                title="Modifier"
                                data-content="Veuillez envoyer un mail à dmf@gmail.com pour toute modification."
                                aria-haspopup="true" aria-expanded="false"
                                class="water">Modifier</a></button>
                </li>
                <li>
                    <!--<button type="button" ><a
                                href="log_out.html" id="navbarDropdown4" aria-haspopup="true" aria-expanded="false"
                                class="water"> Déconnexion</a></button>-->
                    <form action="{$view.urlbaseaddr}index.php/session/index" method="post">
                        <button class="btn btn-default " style=" background: rgba(255,255,255,0); border: none; font-size: 18px;" name="logout" type="submit" value="2">Déconnexion</button>
                    </form>
                </li>

            </ul>
        </div>
    </div>
</nav>

<div class="container text-center">
    <div class="container">
        <div class="row">
            <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
                <div class="card card-signin my-5">
                    <div class="card-body" >
                        <h5 class="card-title text-center" style="font-size: 30px;"> Rechercher un médecin </h5>


                        <form class="form-signin" action="{$view.urlbaseaddr}index.php/recherche/recherche" method="post">

                            <div class="form-label-group">
                                <label for="nom">Nom</label>
                                <input name="nom" type="text" id="nom" class="form-control" placeholder="Nom" required autofocus>
                                <br>

                            </div>

                            <br>
                            <button class="btn btn-lg btn-primary btn-block text-uppercase" name="submit" type="submit" value="7"> Rechercher </button>
                            <hr class="my-4">

                        </form>


                        <!--<form class="form-signin" action="{$view.urlbaseaddr}index.php/recherche/recherche" method="post">

                            <div class="form-label-group">
                                <label>Code Postal</label>
                                <input name="codepostal" type="text"  class="form-control" title="Code Postal" />
                                <br>
                            </div>


                            <br>
                            <button class="btn btn-lg btn-primary btn-block text-uppercase" name="submit" type="submit" value="3"> Rechercher </button>
                            <hr class="my-4">

                        </form>-->

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</html>