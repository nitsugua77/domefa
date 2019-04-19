<!DOCTYPE html>
<html lang="en">

{if isset($view.headjs)}
    {include file='headjs.tpl'}
{else}
    {include file='head.tpl'}
{/if}
<body>

{include file='navbar.tpl'}
{if !isset($view.errormessage)}
    {$userMessage = 'Account login'}
{else}
    {if $view.errormessage == 0}
        {$userMessage = 'Account login'}
    {elseif $view.errormessage == 1}
        {$userMessage = 'Wrong credentials <a href="index?m=0">Try again</a>'}
    {elseif $view.errormessage == 2}
        {$userMessage = 'You are logged out. <a href="index?m=0">You can login again</a>'}
    {elseif $view.errormessage == 3}
        {$userMessage = 'Invalid session. <a href="index?m=0">Please login again</a>'}
    {/if}
{/if}

{if !isset($smarty.get.sign)}
    {if !isset($view.errormessage) || $view.errormessage == 0}
        <div class="container main">
            <div class="row col-sm-6 col-xs-4">
                <img src="http://www.frenchmomentsblog.com/wp-content/uploads/2011/03/Tour-Eiffel-French-Moments-02.jpg">
            </div>
            <div class="row col-sm-6 center">
                <form class="form-signin" action="{$view.urlbaseaddr}index.php/session/index" method="post" data-toggle="validator" role="form">
                    <span class="col-sm-12 login-form-title">{$userMessage}</span>
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
                        <button class="btn btn-default login-form-btn center-block" name="submit" type="submit" value="1">Submit</button>
                    </div>
                </form>
                <div class="w-full text-center bot-space">
                </div>
                <div class="w-full text-center sign-bot">
                    <a href="{$view.urlbaseaddr}index.php/session/index?sign=1" class="txt-bot">Sign Up</a>
                </div>
            </div>
        </div>
    {else}
        <div class="container theme-showcase" role="main">
            <!-- Main jumbotron for a primary marketing message or call to action -->
            <div class="jumbotron center-block">
                <h2>{$userMessage}</h2>
            </div> <!-- /jumbotron -->
        </div> <!-- /container -->
    {/if}

{else}
    <div class="container main">
        <div class="row col-sm-6 center">
            <form class="form-signin" action="{$view.urlbaseaddr}index.php/session/index?sign=1" method="post" data-toggle="validator" role="form">
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
            <div class="w-full text-center bot-space">
            </div>
            <div class="w-full text-center sign-bot">
                <a href="{$view.urlbaseaddr}index.php/session/index" class="txt-bot">Login</a>
            </div>
        </div>
        <div class="row col-sm-6 col-xs-4 text-right">
            <img src="https://media.istockphoto.com/photos/skyline-montreal-picture-id604039134?k=6&m=604039134&s=612x612&w=0&h=uemBH6JYoFeWnJgSfCg2ZoGJGFfEnbVFN69U25tn1Nc=">
        </div>
    </div> <!-- /container -->
{/if}




<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="js/ie10-viewport-bug-workaround.js"></script>

</body>
</html>