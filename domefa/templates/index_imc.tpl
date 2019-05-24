<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>IMC</title>
    <link rel="Stylesheet" href="account_management_patient.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>

{include file='navbar.tpl'}

<br>
<img  src="{$view.links.Image}/calcul-imc.png" style="display: block; margin-left: auto; margin-right: auto; width: 350px">

<div class="container text-center">

    <div class="container">
        <div class="row">
            <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
                <div class="card card-signin my-5">
                    <div class="card-body">
                        <span class="sortie_text"><h2 id="sortie"></h2></span>

                        Mettez votre poids &nbsp; <br> <input type="text" id="poids" /><br/><br/>
                        Mettez votre taille (ex : 1.62)  &nbsp; <input type="text" id="taille" /><br/><br/>

                        <button id="calculer"> Calculer </button>


                        <div class="card-body">


                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>

    document.getElementById("calculer").onclick = calculImc;

    function calculImc () {

        var poids = document.getElementById("poids").value;
        var taille = document.getElementById("taille").value;

        var sousPoids= "Vous êtes en sous poids ";
        var normal = "Vous êtes de corpulence normal";
        var surpoids = "Vous êtes surpoids";
        var obese = "Vous êtes obèse";


        var imc = poids / (taille*taille);

        var imc2 = imc.toFixed(2);




        if (imc < 18) {
            document.getElementById("sortie").innerHTML = sousPoids  +", votre imc vaut : " + imc2;
        }

        else if (imc >= 18 && imc < 25) {

            document.getElementById("sortie").innerHTML = normal + ", votre imc vaut : " + imc2;
        }

        else if (imc > 25 && imc < 30) {
            document.getElementById("sortie").innerHTML = surpoids + ", votre imc vaut : " + imc2;
        }

        else if (imc > 30) {
            document.getElementById("sortie").innerHTML = obese + ", votre imc vaut : " + imc2;
        }

    }

</script>

</html>