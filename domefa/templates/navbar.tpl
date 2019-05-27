<link rel="Stylesheet" href="{$view.urlbaseaddr}css/account_management_patient.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
        integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">

        {if isset($view.typeuser)}
            {if $view.typeuser == 0}
                <a class="item" href="{$view.links.HomePatient}"><img src="{$view.links.Image}/DMF.png" alt="Dossier Médical Facilité"
                                                                      style="width:70px"></a>
                <a class="navbar-brand" href="{$view.links.HomePatient}" style="font-size: 25px"> &nbsp; Le Dossier Médical
                    Facilité &nbsp; &nbsp; </a>
            {else}
                {if $view.typeuser == 1}
                    <a class="item" href="{$view.links.HomePro}"><img src="{$view.links.Image}/DMF.png" alt="Dossier Médical Facilité"
                                                                          style="width:70px"></a>
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
                            style=" background: rgba(255,255,255,0);"><a
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
                        <button class="btn btn-default " style=" background: rgba(255,255,255,0);" name="logout" type="submit" value="2">Déconnexion</button>
                    </form>
                </li>

            </ul>
        </div>
    </div>
</nav>

<script>
    $(document).ready(function () {
        $('[data-toggle="popover"]').popover();
    });
</script>