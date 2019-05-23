<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>DMF - Recherchez vos patients</title>
    <meta name="author" content="Les Pingouins du Désert">
    <meta name="description" content="Recherche de patients par le médecin">
    <meta name="keywords" content="Dossier Medical Facilite Medecin recherche patients">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/purecss@1.0.0/build/pure-min.css" integrity="sha384-nn4HPE8lTHyVtfCBi5yW9d20FjT8BJwUXyWZT9InLYax14RDjBj46LmSztkmNP9w" crossorigin="anonymous">
    {foreach from=$view.css item=script}
        <link href="{$script}" rel="stylesheet">
    {/foreach}

</head>
<body>
<header>

</header>
<main>
    <section>

        <h1>Rechercher un patient <span class="glyphicon glyphicon-search"></span></h1>
        <div class="box">
            <form class="pure-form pure-form-stacked" name="search" style="width: 100vh" action="{$view.urlbaseaddr}index.php/recherche/recherche" method="post">
                <div class="form-group">
                    <label for="nom">Nom : </label>
                    <input type="text" class="form-control" id="nom" placeholder="Nom"
                           name="username" pattern="^[a-zA-Z]+$" maxlength="40"
                           data-error="Invalid character" required>

                </div>

                <div class="form-group">
                    <label for="fn"> Prénom : </label>
                    <input type="text" class="form-control" id="prenom" placeholder="Prénom"
                           name="prenom" pattern="^[a-zA-Z]+$" maxlength="40"
                           data-error="Invalid character" required>
                </div>

                <button class="pure-button pure-button-primary" name="submit" type="submit" value="10">Rechercher</button>
            </form>
            <form class="pure-form pure-form-stacked" name="search" style="width: 100vh" action="{$view.urlbaseaddr}index.php/recherche/recherche" method="post">
                <div class="form-group">
                    <label for="fn"> Numéro carte vitale : </label>
                    <input type="text" class="form-control" id="numcartevitale" placeholder="Numéro carte vitale"
                           name="numerocartevitale" pattern="^[0-9]+$" maxlength="20"
                           data-error="Invalid character" required>
                </div>

                <button class="pure-button pure-button-primary" name="submit" type="submit" value="11">Rechercher</button>
            </form>
        </div>
    </section>
</main>

</body>
</html>