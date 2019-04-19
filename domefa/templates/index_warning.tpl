<!DOCTYPE html>
<html lang="en">

{if isset($view.headjs)}
    {include file='headjs.tpl'}
{else}
    {include file='head.tpl'}
{/if}

<body>
{include file='navbar.tpl'}
<div class="container theme-showcase" role="main">
    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron center-block">
        <h2>You can't go here without being logged!</h2><h2>You can login here :</h2>
        <div class='center-block col-md-12'>
            <a href="{$view.urlbaseaddr}index.php/session/index"><button class="btn btn-lg btn-primary btn-block" name="login">Login</button></a>
        </div><br /><br />

        <h2>Or you can sign up here :</h2>
        <div class='center-block col-md-12'>
            <a href="{$view.urlbaseaddr}index.php/session/index?sign=1"><button class="btn btn-lg btn-primary btn-block" name="sign up">Sign up</button></a>
        </div><br /><br />

        <h2>Back home :</h2>
        <div class='center-block col-md-12'>
            <a href="{$view.links.Home}"><button class="btn btn-lg btn-primary btn-block" name="home">Home</button></a>
        </div><br />
    </div> <!-- /jumbotron -->
</div> <!-- /container -->
</body>
</html>