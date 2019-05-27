<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Gestion de compte</title>
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

    <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->

    <!--<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.0.3/angular.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/js/bootstrap.min.js"></script>-->

</head>

{include file='navbar.tpl'}

<script>
    $(document).ready(function () {
        $('[data-toggle="popover"]').popover();
    });
</script>

<div class="container text-center">
    <h1 class="mt-5 text-white font-weight-light">Bienvenue Dr {$view.results.prenom} {$view.results.nom} </h1>
    <div class="container">
        <div class="row">
            <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
                <div class="card card-signin my-5">
                    <div class="card-body">
                        <h5 class="card-title text-center" style="font-size: 30px;"> {$view.results.specialisation} </h5>


                        <ul class="card-text" style="list-style: none;">
                            <li>RPPS : {$view.results.rpps}</li>
                            <li>Adresse : {$view.results.adresse}, <br>{$view.results.codepostal} {$view.results.ville}</li>
                            <li>Téléphone : {$view.results.telephone}</li>
                            <li>Adresse mail : {$view.results.email}</li>
                        </ul>


                        <div class="dropdown">

                            <button class="btn btn-primary" style="width:170px"> Outils</button>
                            <div class="dropdown-content">
                                <a href="{$view.urlbaseaddr}index.php/recherche/ajout_compte_rendu">Ajouter un compte rendu</a>
                                <a href="{$view.urlbaseaddr}index.php/recherche/ajout_compte_rendu#ancre">Ajouter une ordonnance</a>

                            </div>
                        </div>








                        <!-- Button trigger modal -->
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
                            Rechercher un patient
                        </button>
                        <!-- Modal -->
                        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                             aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">

                                        <h4 class="modal-title" id="myModalLabel">Recherche de patients par ...</h4>

                                        <button type="button" class="close" data-dismiss="modal"
                                                aria-label="Close"><span
                                                    aria-hidden="true">&times;</span>

                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <div role="tabpanel">
                                            <!-- Nav tabs -->
                                            <ul class="nav nav-tabs" role="tablist">
                                                <li role="presentation" class="active"><a href="#uploadTab"
                                                                                          aria-controls="uploadTab"
                                                                                          role="tab"
                                                                                          data-toggle="tab">Nom et
                                                        Prénom</a>

                                                </li>
                                                <li role="presentation"><a href="#browseTab" aria-controls="browseTab"
                                                                           role="tab" data-toggle="tab">Numéro de
                                                        Sécurité
                                                        Sociale</a>

                                                </li>
                                            </ul>
                                            <!-- Tab panes -->
                                            <div class="tab-content">
                                                <div role="tabpanel" class="tab-pane active" id="uploadTab">

                                                    <form name="search"  action="{$view.urlbaseaddr}index.php/recherche/recherche" method="post">
                                                        <div class="form-group">
                                                            <label for="nom">Nom:</label>
                                                            <input type="text" required="required" class="form-control"
                                                                   id="nom" name="username">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="prenom">Prénom:</label>
                                                            <input type="text" class="form-control" id="prenom" name="prenom">
                                                        </div>
                                                        <button type="button" class="btn btn-secondary"
                                                                data-dismiss="modal">
                                                            Fermer
                                                        </button>
                                                        <button name="submit" type="submit" value="10" class="btn btn-primary">Rechercher
                                                        </button>
                                                        <br>
                                                    </form>
                                                </div>
                                                <div role="tabpanel" class="tab-pane" id="browseTab">
                                                    <form name="searchNumSecu" action="{$view.urlbaseaddr}index.php/recherche/recherche" method="post">
                                                        <div class="form-group">
                                                            <label for="NumeroCarteVitale">Numéro de Sécurité
                                                                Sociale:</label>
                                                            <input type="number" class="form-control"
                                                                   id="NumeroCarteVitale" name="numerocartevitale">
                                                        </div>
                                                        <button type="button" class="btn btn-secondary"
                                                                data-dismiss="modal">
                                                            Fermer
                                                        </button>
                                                        <button name="submit" type="submit" value="11" class="btn btn-primary">Rechercher
                                                        </button>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>



                        <!-- Button trigger modal
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
                            Rechercher un patient
                        </button>

                        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                             aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">


                                        <h4 class="modal-title" id="myModalLabel">Recherche de patients par ...</h4>

                                        <button type="button" class="close" data-dismiss="modal"
                                                aria-label="Close"><span
                                                    aria-hidden="true">&times;</span>

                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <div role="tabbable">

                                            <!--Nav tabs
                                            <nav>
                                                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                                    <a class="nav-item nav-link active" id="nav-nom-tab"
                                                       data-toggle="tab" href="#nav-nom" role="tab"
                                                       aria-controls="nav-nom" aria-selected="true">Nom et Prénom</a>
                                                    <a class="nav-item nav-link" id="nav-secu-tab" data-toggle="tab"
                                                       href="#nav-secu" role="tab" aria-controls="nav-secu"
                                                       aria-selected="false">N° de Sécurité Sociale</a>
                                                </div>
                                            </nav>
                                            <!--Tab panes
                                            <div class="tab-content">
                                                <div role="tabpanel" class="tab-pane fade show active" id="nav-nom"
                                                     aria-labelledby="nav-nom-tab">

                                                    <form name="search"  action="{$view.urlbaseaddr}index.php/recherche/recherche" method="post">
                                                        <div class="form-group">
                                                            <label for="nom">Nom:</label>
                                                            <input type="text" required="required" class="form-control"
                                                                   id="nom" name="username">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="prenom">Prénom:</label>
                                                            <input type="text" class="form-control" id="prenom" name="prenom">
                                                        </div>
                                                        <button type="button" class="btn btn-secondary"
                                                                data-dismiss="modal">
                                                            Fermer
                                                        </button>
                                                        <button name="submit" type="submit" value="10" class="btn btn-primary">Rechercher
                                                        </button>
                                                        <br>
                                                    </form>
                                                </div>
                                                <div role="tabpanel" class="tab-pane fade" id="nav-secu"
                                                     aria-labelledby="nav-secu-tab">
                                                    <form name="searchNumSecu" action="{$view.urlbaseaddr}index.php/recherche/recherche" method="post">
                                                        <div class="form-group">
                                                            <label for="NumeroCarteVitale">Numéro de Sécurité
                                                                Sociale:</label>
                                                            <input type="number" class="form-control"
                                                                   id="NumeroCarteVitale" name="numerocartevitale">
                                                        </div>
                                                        <button type="button" class="btn btn-secondary"
                                                                data-dismiss="modal">
                                                            Fermer
                                                        </button>
                                                        <button name="submit" type="submit" value="11" class="btn btn-primary">Rechercher
                                                        </button>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>-->












                        <br /><br />
                        <table>
                            <tr>
                                <th>Date du compte rendu</th>
                                <th>Patient</th>
                                <th>Description</th>

                            </tr>
                            {foreach from=$view.resultsCR item=compterendu}
                                <tr>
                                    <td>{$compterendu.datecompterendu}</td>
                                    <td>{$compterendu.patient} &nbsp; &nbsp; &nbsp;</td>
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

</html>