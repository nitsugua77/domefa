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
              <div class="comment-part col-md-12 center-block">
                  <h1 class="text-center letter" data-letter="C">C</h1>
                  <h1 class="text-center letter" data-letter="o">o</h1>
                  <h1 class="text-center letter" data-letter="m">m</h1>
                  <h1 class="text-center letter" data-letter="m">m</h1>
                  <h1 class="text-center letter" data-letter="e">e</h1>
                  <h1 class="text-center letter" data-letter="n">n</h1>
                  <h1 class="text-center letter" data-letter="t">t</h1>
                  <h1 class="text-center letter" data-letter="s">s</h1>
              </div>
            <div class="table-responsive col-md-12">
              <table class="table table-bordered" >
                <thead class="thread-dark">
                  <tr>
                      <th>ID</th>
                      <th>Username</th>
                      <th>Content</th>

                  </tr>
                </thead>
                  {foreach from=$view.results item=comment}
                    <tr>
                        <td>{$comment.id}</td>
                        <td>{$comment.username}</td>
                        <td>{$comment.content}</td>
                        
                        <td>
                            <a href="{$view.urlbaseaddr}index.php/comment/edit/?id={$comment.id}">Modify</a>
                        </td>
                        <td>
                            <a href="{$view.urlbaseaddr}index.php/comment/delete/?id={$comment.id}">Delete</a>
                        </td>
                    </tr>
                  {/foreach}
              </table>
            </div>
            <p class="w-full text-center"><a href="{$view.urlbaseaddr}index.php/comment/add/">Add new comment</a></p>
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