<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <img style="width: 70px" src="{$view.links.Image}/DMF.png" alt="logo" />
        <a class="navbar-brand" href="{$view.links.Home}"> &nbsp; Le Dossier Médical Facilité</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto" >
                <li class="nav-item dropdown">
                    <a href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"  style="text-decoration: none; color: #666666;">
                        Rechercher un médecin &nbsp;
                    </a>
                    <a href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="text-decoration: none; color: #666666;">
                        Calculer son IMC &nbsp;
                    </a>

                    <a href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="text-decoration: none; color: #666666;">
                        Modifier &nbsp;
                    </a>

                    <form action="{$view.urlbaseaddr}index.php/session/index" method="post">
                        <button class="btn btn-lg btn-primary" name="logout" type="submit" value="2">Logout</button>
                    </form>
                </li>
            </ul>
        </div>
    </div>
</nav>