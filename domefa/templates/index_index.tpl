<!DOCTYPE html>
<html lang="en">

{include file='head.tpl'}
 <body>

 <div>
     <div class="container1">
         <a class="item" href="{$view.links.Home}"><img src="{$view.links.Image}/logo2.png" alt="Dossier Médicale Facilité"></a>
         <a href="{$view.links.Index_pro}"> <button class="button_espace_pro"> Vers Espace Pro</button></a>
         <h1 class="title">Le Dossier Médicale Facilité</h1>
         <div>
             <ul class="grouped">

                 <li>
                     <button class="button_header" onclick="document.getElementById('id01').style.display='block'" style="width:auto;"><span> Se connecter </span></button>
                     <div id="id01" class="modal">

                         <form class="modal-content animate" action="{$view.urlbaseaddr}index.php/patient/index" >
                             <div class="imgcontainer">
                                 <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
                                 <img src="{$view.links.Image}/client.png" id="img_client" alt="Avatar" class="avatar">
                             </div>

                             <div class="container">
                                 <label for="NumeroCarteVitale"><b>Numero Securite sociale</b></label>
                                 <input type="text" placeholder="Securite sociale" name="NumeroCarteVitale" required>

                                 <label for="psw"><b>Mot de passe</b></label>
                                 <input type="password" placeholder="Mot de passe" name="psw" required>

                                 <button type="submit">Se connecter</button>

                             </div>

                             <div class="container" style="background-color:#f1f1f1">
                                 <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>

                             </div>
                         </form>
                     </div>
                 </li>
                 <li>
                     <button class="button_header" onclick="document.getElementById('id02').style.display='block'" style="width:auto;"><span> S'inscrire </span></button>
                     <div id="id02" class="modal">
<!--
                         <form class="modal-content animate" action="{$view.urlbaseaddr}index.php/patient/index" method="post">
                             <div class="imgcontainer">
                                 <h1 id="titre_modal_ins">Inscription</h1>
                             </div>

                             <div class="container">
                                 <form action="{$view.urlbaseaddr}index.php/patient/index" method="post">
                                     <div>
                                         <form action="{$view.urlbaseaddr}index.php/patient/index">
BIIIIIIIIITE
                                             <div class="form-group">
                                                 <label> Genre:
                                                     <input type="radio" name="gender" value="male" checked> Male
                                                     <input type="radio" name="gender" value="female"> Female
                                                 </label><br>
                                             </div>

                                             <div class="form-group">
                                                 <label for="email">Email:</label><br>
                                                 <input type="email" class="form-control" id="email" placeholder="Enter email"
                                                        name="email" required>
                                             </div>
BIIIIIIIIIIIITE
                                             <div class="form-group">
                                                 <label for="pwd">Mot de Passe:</label>
                                                 <!--<input type="password" class="form-control" id="pwd" placeholder="Mot de passe"
                                                        name="pwd" required>BIIIIIIITE
                                                 <input class="form-control" id="inputPassword" name="password" placeholder="Password" type="password" pattern="^[_a-zA-Z0-9]+$" maxlength="40" data-error="Invalid character." required>
BIIIIIIIIIITE
                                             </div>
                                             <div class="form-group">
                                                 <label for="pwd">Mot de Passe:</label>
                                                 <input type="password" class="form-control" id="cpwd" placeholder="Mot de passe"
                                                        name="Confirm_Password" required>
                                             </div>

                                             <div class="form-group">
                                                 <label for="fn"> Prénoms : </label>
                                                 <input type="text" class="form-control" id="fn" placeholder="Prénoms"
                                                        name="First_name" required>
                                             </div>
BIIIIIIIIIIITE
                                             <div class="form-group">
                                                 <label for="ln">Nom : </label>
                                                 <!--<input type="text" class="form-control" id="ln" placeholder="Nom de famille"
                                                        name="Last_name" required>BIIIIIIIIIIIIITE
                                                 <input class="form-control" id="inputUsername" name="username" placeholder="Username" type="text" pattern="^[a-zA-Z]+$" maxlength="40" data-error="Invalid character." required autofocus>

                                             </div>
<!--
                                             <div class="form-group">
                                                 <label for="ct">Ville: </label>
                                                 <input type="text" class="form-control" id="ct" placeholder="Enter City" name="City"
                                                        required>
                                             </div>

                                             <div class="form-group">
                                                 <label for="ct">Adresse: </label>
                                                 <input type="text" class="form-control" id="ct" placeholder="Adresse" name="adresse"
                                                        required>
                                             </div>

                                             <div class="form-group">
                                                 <label for="mb">Téléphone : </label>
                                                 <input type="text" class="form-control" id="mb" placeholder="Enter Mobile" name="Mobile"
                                                        required>
                                             </div>

                                             <div class="form-group">
                                                 <label for="NumeroCarteVitale">Numero Securite sociale</label>
                                                 <input type="text" placeholder="Securite sociale" name="NumeroCarteVitale" required>
                                             </div>

                                             <div class="form-group">
                                                 <label for="spe">Carte Identité : </label>
                                                 <input type="file" id="signature" name="signature" accept="image/png, image/jpeg" multiple required>
                                             </div>

                                             <div class="form-group">
                                                 <label>Date de Naissance:
                                                     <input type="date" name="DateOfBirth">
                                                 </label><br>
                                             </div>

                                             <div class="form-group">
                                                 <label> Groupe Sanguin:
                                                     <input type="radio" name="GroupeSanguin" value="A+" checked> A+
                                                     <input type="radio" name="GroupeSanguin" value="A-"> A-
                                                     <input type="radio" name="GroupeSanguin" value="B+" checked> B+
                                                     <input type="radio" name="GroupeSanguin" value="B-"> B-
                                                     <input type="radio" name="GroupeSanguin" value="AB" checked> AB
                                                     <input type="radio" name="GroupeSanguin" value="O+" checked> O+
                                                     <input type="radio" name="GroupeSanguin" value="O-"> O-
                                                 </label><br>
                                             </div>

BIIIIIIIIIIIIIIIITE
                                             <!-- Trigger the modal with the submit button -->
                                             <!--<button type="submit" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Register</button>--
                                             <button class="btn btn-default login-form-btn center-block" name="submit" type="submit" value="4">Sign up</button>
                                         </form>
                                     </div>

                                     <div class="container" style="background-color:#f1f1f1">
                                         <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>
                                     </div>
                                 </form> -->

                         <form class="form-signin" action="{$view.urlbaseaddr}index.php/session/index" method="post" data-toggle="validator" role="form">
                             <span class="col-sm-12 login-form-title">Account Creation</span>
                             <div class="form-group">
                                 <label for="inputUsername" class="control-label">Username:</label>
                                 <input class="form-control" id="inputUsername" name="username" placeholder="Username" type="text" pattern="^[a-zA-Z]+$" maxlength="40" data-error="Invalid character." required autofocus>
                                 <div class="help-block with-errors"></div>
                             </div>
                             <div class="form-group">
                                 <label for="inputPassword" class="control-label">Password:</label>
                                 <input class="form-control" id="inputPassword" name="password" placeholder="Password" type="password" pattern="^[_a-zA-Z0-9]+$" maxlength="40" data-error="Invalid character." required>
                                 <div class="help-block with-errors"></div>
                             </div>
                             <div class="form-group">
                                 <button class="btn btn-default login-form-btn center-block" name="submit" type="submit" value="4">Sign up</button>
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
         <p> Le DMF est un carnet de santé accessible en ligne, permettant de regrouper toutes vos informations, facilitant leur visibilité par vos différents médecins. </p>
         <img src="{$view.links.Image}/container3.png">

         <br>

         <button class="button_container3"><span> EN SAVOIR PLUS </span></button>
         <br>
     </div>

     <div class="container4">
         <h2> Pourquoi utiliser le DMF ?</h2>
         <p>Avec une version numérique, personne ne pourrait oublier son carnet de santé.<br>Il serait accessible n’importe quand et même en cas d’urgence ! </p>
     </div>


 </div>

  <script>
      // Get the modal
      var modal = document.getElementById('id01');

      // When the user clicks anywhere outside of the modal, close it
      window.onclick = function(event) {
          if (event.target == modal) {
              modal.style.display = "none";
          }
      }
  </script>

  </body>
</html>