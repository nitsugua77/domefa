<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>DMF - Résultats de recherche</title>
    <meta name="author" content="Les Pingouins du Désert">
    <meta name="description" content="Résultats de recherche de patients">
    <meta name="keywords" content="Dossier Medical Facilite patient résultat">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!--  <link rel="Stylesheet" href="header-footer.css">
      <link rel="Stylesheet" href="AccountManagement.css">
      <link href="https://fonts.googleapis.com/css?family=Indie+Flower" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css?family=Hind:700" rel="stylesheet">-->
</head>
<body>

<main>
    <section>
        <h1>//dans le header - DMF</h1>
        <div class="bloc">
            <h2>Résultats de votre recherche</h2>
            <label>Sorted By
                <select name="Sort By">
                    <option value="DateA">Par ordre alphabétique (nom)</option>
                    <option value="DateD">Par ordre de ? </option>
                </select>
            </label>

            <table class="table table-bordered" >
                <thead class="thread-dark">
                <tr>
                    <th>Nom</th>
                    <th>Prénom</th>
                    <th>Numéro de carte vitale</th>
                    <th>Telephone</th>
                    <th>Adresse</th>

                </tr>
                </thead>
                {foreach from=$view.results item=user}
                    <tr>
                        <td>{$user.nom}</td>
                        <td>{$user.prenom}</td>
                        <td>{$user.numerocartevitale}</td>
                        <td>{$user.telephone}</td>
                        <td>{$user.adresse}, {$user.codepostal} {$user.ville}</td>
                    </tr>
                {/foreach}
            </table>
        </div>
    </section>
</main>


</body>
</html>