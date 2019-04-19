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
              <h1 class="text-center">Delete comment</h1>
              {if $view.saved == 1}
                  <div class="alert-success"><p>The comment has been deleted!</p></div>
              {/if}
              {if $view.error == 1}
                  <div class="alert-danger"><p>The comment could not been deleted! Please try again.</p></div>
              {/if}
              <p class="w-full text-center"><br /><br /><a href="{$view.urlbaseaddr}index.php/comment/index/">List comments</a><br /><br /></p>
          </div>
        </div> <!-- END pageBody -->
        
      </div>
    </div>


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>
    
  </body>
</html>