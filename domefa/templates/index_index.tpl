<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>DMF</title>
    <meta name="description" content="accueil">
    <meta name="keywords" content="accueil">
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans|Raleway|Candal">
        <link rel="stylesheet" type="text/css" href="{$view.urlbaseaddr}css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="{$view.urlbaseaddr}css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="{$view.urlbaseaddr}css/style.css">
    <link rel="Stylesheet" href="{$view.urlbaseaddr}css/header.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
</head>


<!--banner-->

<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
{include file='navbar_disconnected_patient.tpl'}


<section id="banner" class="banner">
    <div class="bg-color">
        <div class="container">
            <div class="row">
                <div class="banner-info">
                    <div class="banner-logo text-center">
                        <img src="{$view.links.Image}/DMFssbord.png" width="200px" alt="logoDMF" class="img-responsive">
                    </div>
                    <div class="banner-text text-center">
                        <h1 class="white">La Santé à votre portée</h1>
                        <p>Le Dossier Médical Facilité est un carnet de santé numérique qui conserve précieusement vos
                            informations de santé en ligne. Il vous permet de les partager avec les professionnels de
                            santé de votre choix,
                            qui en ont besoin pour vous soigner. </p>
                        <a href="#service" class="btn btn-appoint">En savoir plus</a>
                    </div>

                </div>
            </div>
        </div>
    </div>
</section>
<!--/ banner-->
<!--service-->
<section id="service" class="section-padding">
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-sm-4">
                <h2 class="head-title lg-line">Accéder à vos informations médicales en quelques clics!</h2>
                <hr class="botm-line">
                <p>Première utilisation? Ne vous inquiétez pas, nous vous expliquons tout.</p>
            </div>
            <div class="col-md-4 col-sm-4">
                <div class="service-info">
                    <div class="icon">
                        <i class="fa fa-usd"></i>
                    </div>
                    <div class="icon-info">
                        <h4>Gratuit</h4>
                        <p>Le DMF est un service entièrement gratuit. Votre santé est notre priorité, il est
                            donc accessible à tous et n’importe où. </p>
                    </div>
                </div>

                <div class="service-info">
                    <div class="icon">
                        <i class="fa fa-lock"></i>
                    </div>
                    <div class="icon-info">
                        <h4>Sécurisé</h4>
                        <p>Nous vous garantissons la traçabilité et la sécurité de vos informations personnelles et
                            médicales.
                            Vous êtes seul à pouvoir accéder à votre compte qui est protégé par des identifiants et un
                            mot de passe. </p>
                    </div>
                </div>

            </div>
            <div class="col-md-4 col-sm-4">


                <div class="service-info">
                    <div class="icon">
                        <i class="fa fa-user"></i>
                    </div>
                    <div class="icon-info">
                        <h4>Personnalisé</h4>
                        <p>Votre compte DMF est totalement personnalisé. Retrouvez en quelques clics vos informations
                            médicales. </p>
                    </div>
                </div>


                <div class="service-info">
                    <div class="icon">
                        <i class="fa fa-shield-alt"></i>
                    </div>
                    <div class="icon-info">
                        <h4>Confidentiel</h4>
                        <p>Vos informations médicales archivées sur votre DMF sont soumis à la règlementation RGPD
                            (règlement général sur la protection des données) en vigueur dans l’union européenne.
                            Seul le personnel médical autorisé, aura accès à vos informations. </p>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>
<!---->

<section id="cta-2" class="section-padding">
    <div class="container">
        <div class=" row">
            <div class="col-md-2"></div>
            <div class="text-right-md col-md-4 col-sm-4">
                <h2 class="section-title white lg-line">« Objectif<br> Zéro Papier! »</h2>
            </div>
            <div class="col-md-4 col-sm-5">
                DMF s’engage pour le développement durable. En vous créant un compte DMF, vous luttez contre la
                surconsommation de papier. Fini les carnets de santé, les ordonnances, seulement vous et votre
                smartphone !
                <p class="text-right text-primary"><i>— L'équipe DMF</i></p>
            </div>
            <div class="col-md-2"></div>
        </div>
    </div>
</section>

<section id="about" class="section-padding">
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-4 col-xs-12">
                <div class="section-title">
                    <h2 class="head-title lg-line">Un carnet de santé numérique...<br>Mais pas que!</h2>
                    <hr class="botm-line">
                    <p class="sec-para">Le DMF n’est pas une simple interface médicale, c’est également un suivi
                        bien-être.</p>
                </div>
            </div>
            <div class="col-md-9 col-sm-8 col-xs-12">
                <div style="visibility: visible;" class="col-sm-9 more-features-box">
                    <div class="more-features-box-text">
                        <div class="more-features-box-text-icon"><i class="fa fa-angle-right" aria-hidden="true"></i>
                        </div>
                        <div class="more-features-box-text-description">
                            <h3>Rechercher des médecins</h3>
                            <p>Vous pouvez rechercher des médecins partout en France.</p>
                        </div>
                    </div>
                    <div class="more-features-box-text">
                        <div class="more-features-box-text-icon"><i class="fa fa-angle-right" aria-hidden="true"></i>
                        </div>
                        <div class="more-features-box-text-description">
                            <h3>Consulter votre IMC</h3>
                            <p>Vous pouvez calculer votre indice de masse corporelle pour suivre l'évolution de votre
                                santé.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<footer id="footer">
    <div class="top-footer">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-4 marb20">
                    <div class="ftr-tle">
                        <h4 class="white no-padding">A propos de nous...</h4>
                    </div>
                    <div class="info-sec">
                        <p>L'équipe DMF s'engage à vous simplifier la vie au quotidien. La question de la santé est au
                            coeur de nos préoccupations.</p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4 marb20">
                    <div class="ftr-tle">
                        <h4 class="white no-padding">Numéros utiles</h4>
                    </div>
                    <div class="info-sec">
                        <ul class="quick-info">
                            <li>Samu: 15</li>
                            <li>Police: 17</li>
                            <li>Pompiers: 18</li>
                            <li>Urgences: 112</li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4 marb20">
                    <div class="ftr-tle">
                        <h4 class="white no-padding">Suivez-nous!</h4>
                    </div>
                    <div class="info-sec">
                        <ul class="social-icon">
                            <li class="bglight-blue"><i class="fab fa-facebook-f"></i></li>
                            <li class="bgred"><i class="fab fa-google-plus-g"></i></li>
                            <li class="bglight-blue"><i class="fab fa-twitter"></i></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-line">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    © Copyright - Les Pingouins du Désert
                    <div class="credits">

                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!--/ footer-->

<script src="{$view.links.Js}/jquery.min.js"></script>
<script src="{$view.links.Js}/jquery.easing.min.js"></script>
<script src="{$view.links.Js}/bootstrap.min.js"></script>
<script src="{$view.links.Js}/custom.js"></script>

</body>

</html>