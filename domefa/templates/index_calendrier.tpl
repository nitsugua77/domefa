


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Calendrier</title>


    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link rel="Stylesheet" href="{$view.urlbaseaddr}css/calendrier.css">
    <link rel="Stylesheet" href="{$view.urlbaseaddr}css/account_management_patient.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <script src="{$view.links.Js}/calendrier.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">

</head>
<script>

    $(document).ready(function() {
        var date = new Date();
        var d = date.getDate();
        var m = date.getMonth();
        var y = date.getFullYear();

        /*  className colors

        className: default(transparent), important(red), chill(pink), success(green), info(blue)

        */


        /* initialize the external events
        -----------------------------------------------------------------*/

        $('#external-events div.external-event').each(function() {

            // create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
            // it doesn't need to have a start or end
            var eventObject = {
                title: $.trim($(this).text()) // use the element's text as the event title
            };

            // store the Event Object in the DOM element so we can get to it later
            $(this).data('eventObject', eventObject);

            // make the event draggable using jQuery UI
            $(this).draggable({
                zIndex: 999,
                revert: true,      // will cause the event to go back to its
                revertDuration: 0  //  original position after the drag
            });

        });


        /* initialize the calendar
        -----------------------------------------------------------------*/

        var calendar =  $('#calendar').fullCalendar({
            header: {
                left: 'title',
                center: 'agendaDay,agendaWeek,month',
                right: 'prev,next today'
            },
            editable: true,
            firstDay: 1, //  1(Monday) this can be changed to 0(Sunday) for the USA system
            selectable: true,
            defaultView: 'month',

            axisFormat: 'h:mm',
            columnFormat: {
                month: 'ddd',    // Mon
                week: 'ddd d', // Mon 7
                day: 'dddd M/d',  // Monday 9/7
                agendaDay: 'dddd d'
            },
            titleFormat: {
                month: 'MMMM yyyy', // September 2009
                week: "MMMM yyyy", // September 2009
                day: 'MMMM yyyy'                  // Tuesday, Sep 8, 2009
            },
            allDaySlot: false,
            selectHelper: true,
            select: function(start, end, allDay) {
                var title = prompt('Event Title:');
                if (title) {
                    calendar.fullCalendar('renderEvent',
                        {
                            title: title,
                            start: start,
                            end: end,
                            allDay: allDay
                        },
                        true // make the event "stick"
                    );
                }
                calendar.fullCalendar('unselect');
            },
            droppable: true, // this allows things to be dropped onto the calendar !!!
            drop: function(date, allDay) { // this function is called when something is dropped

                // retrieve the dropped element's stored Event Object
                var originalEventObject = $(this).data('eventObject');

                // we need to copy it, so that multiple events don't have a reference to the same object
                var copiedEventObject = $.extend({}, originalEventObject);

                // assign it the date that was reported
                copiedEventObject.start = date;
                copiedEventObject.allDay = allDay;

                // render the event on the calendar
                // the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
                $('#calendar').fullCalendar('renderEvent', copiedEventObject, true);

                // is the "remove after drop" checkbox checked?
                if ($('#drop-remove').is(':checked')) {
                    // if so, remove the element from the "Draggable Events" list
                    $(this).remove();
                }

            },

            events: [
                {
                    title: 'Rdv dentiste',
                    start: new Date(y, m, 1)
                },


                {
                    title: 'Rdv IRM',
                    start: new Date(y, m, d+1, 19, 0),
                    end: new Date(y, m, d+1, 22, 30),

                },
                {
                    title: 'Rdv dermato',
                    start: new Date(y, m, 28),
                    className: 'success'
                }
            ],
        });


    });

</script>
<style>

    body {
        margin-bottom: 40px;
        margin-top: 0px;
        text-align: center;
        font-size: 14px;
        font-family: 'Roboto', sans-serif;

    }

    #wrap {
        width: 1100px;
        margin: 0 auto;
    }

    #external-events {
        float: left;
        width: 150px;
        padding: 0 10px;
        text-align: left;
    }

    #external-events h4 {
        font-size: 16px;
        margin-top: 0;
        padding-top: 1em;
    }

    .external-event { /* try to mimick the look of a real event */
        margin: 10px 0;
        padding: 2px 4px;
        background: #3366CC;
        color: #fff;
        font-size: .85em;
        cursor: pointer;
    }

    #external-events p {
        margin: 1.5em 0;
        font-size: 11px;
        color: #666;
    }

    #external-events p input {
        margin: 0;
        vertical-align: middle;
    }

    #calendar {
        /* 		float: right; */
        margin: 0 auto;
        width: 900px;
        background-color: #FFFFFF;
        border-radius: 6px;
        box-shadow: 0 1px 2px #C3C3C3;
        -webkit-box-shadow: 0px 0px 21px 2px rgba(0,0,0,0.18);
        -moz-box-shadow: 0px 0px 21px 2px rgba(0,0,0,0.18);
        box-shadow: 0px 0px 21px 2px rgba(0,0,0,0.18);
    }

</style>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="item" href="{$view.links.HomePatient}"><img src="{$view.links.Image}/DMF.png" alt="Dossier Médical Facilité"
                                                              style="width:70px"></a>
        <a class="navbar-brand" href="{$view.links.HomePatient}" style="font-size: 25px"> &nbsp; Le Dossier Médical
            Facilité &nbsp; &nbsp; </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item dropdown">
                    <button type="button" class="btn btn-default btn-sm"
                            style=" background: rgba(255,255,255,0); border: none;">
                        <a href="{$view.urlbaseaddr}index.php/recherche/indexMedecin" id="navbarDropdown" role="button" aria-haspopup="true"
                           aria-expanded="false" class="water">
                            Rechercher un médecin &nbsp;
                        </a>
                    </button>
                </li>
                <li>
                    <button type="button" class="btn btn-default btn-sm"
                            style=" background: rgba(255,255,255,0);  border: none;">
                        <a href="{$view.urlbaseaddr}index.php/recherche/imc" id="navbarDropdown2" aria-haspopup="true" aria-expanded="false"
                           class="water">
                            Calculer son IMC &nbsp;
                        </a>
                    </button>
                </li>

                <li class="nav-item dropdown">
                    <button type="button" class="btn btn-default btn-sm"
                            style=" background: rgba(255,255,255,0);  border: none;">
                        <a href="{$view.links.HomePatient}" id="navbarDropdown5" role="button"
                           aria-haspopup="true"
                           aria-expanded="false" class="water">
                            Mon compte
                        </a>
                    </button>
                </li>

                <li>


                    <button type="button" class="btn btn-default btn-sm water"
                            style=" background: rgba(255,255,255,0); border: none;"><a
                                tabindex="0" data-toggle="popover" data-trigger="focus" data-placement="bottom"
                                title="Modifier"
                                data-content="Veuillez envoyer un mail à dmf@gmail.com pour toute modification."
                                aria-haspopup="true" aria-expanded="false"
                                class="water">Modifier</a></button>
                </li>
                <li>
                    <!--<button type="button" ><a
                                href="log_out.html" id="navbarDropdown4" aria-haspopup="true" aria-expanded="false"
                                class="water"> Déconnexion</a></button>-->
                    <form action="{$view.urlbaseaddr}index.php/session/index" method="post">
                        <button class="btn btn-default " style=" background: rgba(255,255,255,0); border: none; font-size: 16px;" name="logout" type="submit" value="2">Déconnexion</button>
                    </form>
                </li>

            </ul>
        </div>
    </div>
</nav>

<body>

<div id='wrap'>

    <div id='calendar'></div>

    <div style='clear:both'></div>
</div>
</body>
</html>