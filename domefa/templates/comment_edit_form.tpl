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
          <div class="col-sm-8 col-sm-offset-2 col-md-8 col-md-offset-2 main">
              <h1 class="text-center">Edit comment</h1>
              {foreach from=$view.results item=comment}
              <form method="post" action="" enctype="multipart/form-data">
                  <input type="hidden" name="id" value="{$comment.id}" />
                  <label for="username">Username</label><br />
                  <input class="form-control" type="text" name="username" id="username" size="50" value="{$comment.username}" /><br />
                  <label for="content">Content</label><br />
                  <input class="form-control" type="text" name="content" id="content" value="{$comment.content}" /><br />
                  <input class="btn btn-default login-form-btn center-block" type="submit" name="submit" /><br />
              </form>
              {/foreach}
              {if $view.saved == 1}
                  <div class="alert-success"><p>The comment has been saved!</p></div>
              {/if}
              {if $view.error == 1}
                  <div class="alert-danger"><p>The comment has not been saved! Please try again.</p></div>
              {/if}
              <p class="w-full text-center sign-bot"><br /><br /><a href="{$view.urlbaseaddr}index.php/comment/index/">List comments</a><br /><br /></p>
          </div>
        </div> <!-- END pageBody -->
        
      </div>
    </div>


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>
    
  </body>
</html>