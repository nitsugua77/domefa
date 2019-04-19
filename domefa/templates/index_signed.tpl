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
        <h2>You have just signed up!</h2><h2>You can login here :</h2><br />
        <div class='center-block col-md-12'>
            <a href="{$view.urlbaseaddr}index.php/session/index"><button class="btn btn-lg btn-primary btn-block" name="logout">Login</button></a>
        </div><br />
    </div> <!-- /jumbotron -->
</div> <!-- /container -->
</body>
</html>