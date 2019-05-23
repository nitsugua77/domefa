<!DOCTYPE html>
<html lang="en">

{include file='head.tpl'}
<body>

<div>
    <div class="container1">
        <a class="item" href="{$view.links.Home}"><img src="{$view.links.Image}/logo2.png"
                                                       alt="Dossier Médicale Facilité"></a>
        <a href="{$view.links.Index_pro}">
            <button class="button_espace_pro"> Vers Espace Pro</button>
        </a>
        <h1 class="title">Le Dossier Médicale Facilité</h1>
        <div>
            <ul class="grouped">

                <li>
                    <button class="button_header" onclick="document.getElementById('id01').style.display='block'"
                            style="width:auto;"><span> Se connecter </span></button>
                    <div id="id01" class="modal">

                        <form class="modal-content animate" action="{$view.urlbaseaddr}index.php/session/index" method="post">
                            <div class="imgcontainer">
                                <span onclick="document.getElementById('id01').style.display='none'" class="close"
                                      title="Close Modal">&times;</span>
                                <img src="{$view.links.Image}/client.png" id="img_client" alt="Avatar" class="avatar">
                            </div>

                            <div class="container">
                                    <label for="NumeroCarteVitale"><b>Numéro de sécurité sociale</b></label>
                                    <input type="text" placeholder="Numéro de sécurité sociale" name="numeroCarteVitale"
                                           required>

                                    <label for="psw"><b>Mot de passe</b></label>
                                    <input type="password" placeholder="Mot de passe" name="password" required>

                                    <button class="btn btn-info btn-lg" name="submit" type="submit" value="1">Se connecter
                                    </button>
                            </div>

                            <div class="container" style="background-color:#f1f1f1">
                                <button type="button" onclick="document.getElementById('id01').style.display='none'"
                                        class="cancelbtn">Cancel
                                </button>

                            </div>
                        </form>
                    </div>
                </li>
                <li>
                    <button class="button_header" onclick="document.getElementById('id02').style.display='block'"
                            style="width:auto;"><span> S'inscrire </span></button>
                    <div id="id02" class="modal">

                        <form class="modal-content animate" action="{$view.urlbaseaddr}index.php/session/index" enctype="multipart/form-data"
                              method="post">
                            <div class="imgcontainer">
                                <h1 id="titre_modal_ins">Inscription</h1>
                            </div>

                            <div class="container">
                                <form>
                                    <form action="{$view.urlbaseaddr}index.php/session/index" >
                                        <div class="form-group">
                                            <label for="ln">Nom : </label>
                                            <input type="text" class="form-control" id="ln" placeholder="Nom de famille"
                                                   name="username" pattern="^[a-zA-Z]+$" maxlength="40"
                                                   data-error="Invalid character" required>

                                        </div>

                                        <div class="form-group">
                                            <label for="fn"> Prénom : </label>
                                            <input type="text" class="form-control" id="fn" placeholder="Prénom"
                                                   name="prenom" pattern="^[a-zA-Z]+$" maxlength="40"
                                                   data-error="Invalid character" required>
                                        </div>

                                        <div class="form-group">
                                            <label for="email">Email:</label><br>
                                            <input type="email" class="form-control" id="email"
                                                   placeholder="Enter email"
                                                   name="email" required>
                                        </div>

                                        <div class="form-group">
                                            <label for="pwd">Mot de Passe:</label>
                                            <input type="password" class="form-control" id="pwd"
                                                   placeholder="Mot de passe"
                                                   name="password" required>
                                        </div>

                                        <div class="form-group">
                                            <label for="pwd">Mot de Passe:</label>
                                            <input type="password" class="form-control" id="cpwd"
                                                   placeholder="Mot de passe"
                                                   name="confirmPassword" required>
                                        </div>

                                        <div class="form-group">
                                            <label for="mb">Téléphone : </label>
                                            <input type="text" class="form-control" id="mb"
                                                   placeholder="Numéro de téléphone"
                                                   name="telephone" pattern="^[0-9]+$" maxlength="13" required>
                                        </div>

                                        <div class="form-group">
                                            <label for="NumeroCarteVitale">Numéro de Sécurité sociale</label>
                                            <input type="text" placeholder="Numéro de sécurite sociale"
                                                   name="numeroCarteVitale" pattern="^[0-9]+$" maxlength="15" required>
                                        </div>

                                        <div class="form-group">
                                            <label for="RPPSTraitant">RPPS du médecin traitant</label>
                                            <input type="text" placeholder="RPPS du médecin traitant"
                                                   name="RPPSTraitant" pattern="^[0-9]+$" maxlength="15" required>
                                        </div>

                                        <div class="form-group">
                                            <label for="rue"> Rue </label>
                                            <input type="text" class="form-control" id="fn" placeholder="Rue"
                                                   name="rue" maxlength="100"
                                                   data-error="Invalid character" required>
                                        </div>

                                        <div class="form-group">
                                            <label for="Numéro de résidence"> Numéro de résidence </label>
                                            <input type="text" class="form-control" id="fn" placeholder="Numéro de Résidence"
                                                   name="numerores" pattern="^[0-9]+$" maxlength="15"
                                                   data-error="Invalid character" required>
                                        </div>

                                        <div class="form-group">
                                            <label for="numeroappart"> Numéro d'appartement (non obligatoire) </label>
                                            <input type="text" class="form-control" id="fn" placeholder="Numéro d'appartement"
                                                   name="numeroappart" pattern="^[0-9]+$" maxlength="15"
                                                   data-error="Invalid character">
                                        </div>

                                        <div class="form-group">
                                            <label for="ville"> Ville </label>
                                            <input type="text" class="form-control" id="fn" placeholder="Ville"
                                                   name="nomville" pattern="^[a-zA-Z]+$" maxlength="100"
                                                   data-error="Invalid character" required>
                                        </div>

                                        <div class="form-group">
                                            <label for="codepostal"> Code postal </label>
                                            <input type="text" class="form-control" id="fn" placeholder="Code postal"
                                                   name="codepostal" pattern="^[0-9]+$" maxlength="5"
                                                   data-error="Invalid character" required>
                                        </div>

                                        <div class="form-group">
                                            <label>Date de Naissance:
                                                <input type="date" name="dateNaissance">
                                            </label><br>
                                        </div>

                                        <div class="form-group">
                                            <label> Groupe Sanguin:
                                                <input type="radio" name="groupeSanguin" value="A+" checked> A+
                                                <input type="radio" name="groupeSanguin" value="A-"> A-
                                                <input type="radio" name="groupeSanguin" value="B+" checked> B+
                                                <input type="radio" name="groupeSanguin" value="B-"> B-
                                                <input type="radio" name="groupeSanguin" value="AB" checked> AB
                                                <input type="radio" name="groupeSanguin" value="O+" checked> O+
                                                <input type="radio" name="groupeSanguin" value="O-"> O-
                                            </label><br>
                                        </div>

                                        <div class="form-group">
                                            <label for="spe">Carte Mutuelle : </label>
                                            <input type="file" id="carteMutuelle" name="carteMutuelle"
                                                   accept="image/png, image/jpeg" multiple required>
                                        </div>

                                        <div class="form-group">
                                            <label> Genre:
                                                <input type="radio" name="sexe" value="male" checked> Male
                                                <input type="radio" name="sexe" value="female"> Female
                                            </label><br>
                                        </div>

                                        <!-- Trigger the modal with the submit button -->
                                        <!--<button type="submit" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Register</button>-->
                                        <button class="btn btn-default login-form-btn center-block" name="submit"
                                                type="submit" value="4">Sign up
                                        </button>
                                    </form>
                                    <div class="container" style="background-color:#f1f1f1">
                                        <button type="button"
                                                onclick="document.getElementById('id02').style.display='none'"
                                                class="cancelbtn">Cancel
                                        </button>
                                    </div>
                                </form>
                            </div>

                </li>
            </ul>
        </div>

    </div>

    <div class="container2">
        <img src="{$view.links.Image}/2.jpg" alt="Dossier Médicale Facilité">
        <div class="overlay"> DMF, votre Dossier Médicale Facilité !</div>
    </div>

    <div class="container3">
        <h2> Qu'est ce que le DMF ?</h2>
        <p> Le DMF est un carnet de santé accessible en ligne, permettant de regrouper toutes vos informations,
            facilitant leur visibilité par vos différents médecins. </p>
        <img src="{$view.links.Image}/container3.png">

        <br>

        <button class="button_container3"><span> EN SAVOIR PLUS </span></button>
        <br>
    </div>

    <div class="container4">
        <h2> Pourquoi utiliser le DMF ?</h2>
        <p>Avec une version numérique, personne ne pourrait oublier son carnet de santé.<br>Il serait accessible
            n’importe quand et même en cas d’urgence ! </p>
    </div>


</div>

<script>
    // Get the modal
    var modal = document.getElementById('id01');

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function (event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
</script>

</body>
</html>