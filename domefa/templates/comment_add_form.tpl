<!DOCTYPE html>
<html lang="en">

{if isset($view.headjs)}
{include file='headjs.tpl'}
{else}
{include file='head.tpl'}
{/if}

  <body>
  {include file='navbar.tpl'}

    <div class="container">
      <div class="row">

        <div id="pageBody">
          <div class="col-md-offset-1 col-sm-8 col-md-10 main">
              <h1 class="text-center">Add new comment</h1>
              <form method="post" action="" enctype="multipart/form-data">
                  <label for="username">Username</label><br />
                  <input class="form-control" type="text" name="username" id="username" size="50" /><br />
                  <label for="content">Content</label><br />
                  <input class="form-control" type="text" name="content" id="content" /><br />
                  <input class="btn btn-default login-form-btn center-block" type="submit" name="submit" /><br />
              </form>
              {if $view.saved == 1}
                  <div class="alert-success"><p>The comment has been saved!</p></div>
              {/if}
              {if $view.error == 1}
                  <div class="alert-danger"><p>The comment has not been created! Please try again.</p></div>
              {/if}
              <p class="w-full text-center"><br /><br /><a href="{$view.urlbaseaddr}index.php/comment/index/">List comments</a><br /><br /></p>
          </div>
        </div> <!-- END pageBody -->
        
      </div>
    </div>

{if $view.bodyjs == 1}
    {include file='bodyjs.tpl'}
{/if}

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>
    
  </body>
</html>