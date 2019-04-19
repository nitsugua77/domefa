
<div class="navbar-wrapper ">
    <div class="container">
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container col-md-12">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="{$view.links.Home}">  <img src="{$view.urlbaseaddr}img/smile_logo.svg" alt="Logo"><b>De Paris à Montréal</b></a>
                </div>
                {if !isset($view.username)}
                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="{$view.links.Home}">Home</a></li>
                            <li><a href="{$view.links.Home}#footer-ancre">About us</a></li>

                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active"><a href="{$view.urlbaseaddr}index.php/session/index">Login <span class="sr-only">(current)</span></a></li>
                            <li><a href="{$view.urlbaseaddr}index.php/session/index?sign=1">Sign up</a></li>

                        </ul>
                    </div>
                {else}
                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="{$view.links.Home}">Home</a></li>
                            <li><a href="{$view.links.Home}#footer-ancre">About us</a></li>
                            <li><a href="{$view.links.Voyages_Montreal}">Montreal</a></li>
                            <li><a href="{$view.links.Voyages_New_York}">New York</a></li>
                            <li><a href="{$view.links.Voyages_Toronto}">Toronto / Niagara</a></li>
                            <li><a href="{$view.links.Voyages_Park_Omega}">Park Omega</a></li>
                            <li><a href="{$view.urlbaseaddr}index.php/comment/index">Comments</a></li>

                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="">{$view.username}</a></li>
                            <li class="active">
                                <form action="{$view.urlbaseaddr}index.php/session/index?m=2" method="post">
                                    <button class="btn btn-primary" name="logout" type="submit" value="2">Logout</button>
                                </form>
                            </li>
                        </ul>
                    </div>
                {/if}

            </div>
        </nav>
    </div>
</div>