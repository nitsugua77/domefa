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

        <h2>Welcome, {$view.username}!<br /><br /><br />You are logged in.</h2><br /><br />

        <a href="{$view.links.Home}?user={$view.username}"><button class="btn btn-primary btn-lg btn-primary" name="index">Home</button></a>
        <br /><br />
        <form action="{$view.urlbaseaddr}index.php/session/index?m=2" method="post">
                <button class="btn btn-lg btn-primary" name="logout" type="submit" value="2">Logout</button>
        </form>
    </div> <!-- /jumbotron -->
</div> <!-- /container -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src= "js/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="js/ie10-viewport-bug-workaround.js"></script>

</body>
</html>