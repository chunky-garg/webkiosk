
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <title>Webkiosk | Calendar</title>
    %{--<r:require modules="bootstrap-file-upload"/>--}%
    <link rel="stylesheet" href="../css/animate.min.css">
    <link rel="stylesheet" href="../js/plugins/fullcalendar/fullcalendar.css">
    <link rel="stylesheet" href="../css/bootstrap-checkbox.css">
    <link rel="stylesheet" href="../js/plugins/colorpalette/bootstrap-colorpalette.css">
</head>

<body class="brownish-scheme">
<div id="wrap">
    <div class="row">
        <div class="col-md-6" xmlns="http://www.w3.org/1999/html">
            <section class="tile">

                <div class="tile-body">
                    <div id='calendar'></div>
                </div>



            </section>
        </div>



    </div>
</div>


<script>
    $(function() {


        // Initialize external events

        $('#external-events div.external-event').each(function () {

            // Make events draggable using jQuery UI
            $(this).draggable({
                zIndex: 999,
                revert: true,
                revertDuration: 0,
                drag: function () {
                    $('.cal-options .date-info').addClass('out')
                    $('.cal-options #event-delete').addClass('in')
                },
                stop: function () {
                    $('.cal-options .date-info').removeClass('out')
                    $('.cal-options #event-delete').removeClass('in')
                }
            });

        });

        $('#calendar').fullCalendar({
            header: {
                left: 'prev,next today',
                center: 'title',
                right: 'month,agendaWeek,agendaDay'
            },
            editable: true,
            droppable: true,
            drop: function (date, allDay) {
                var copiedEventObject = {
                    title: $(this).text(),
                    start: date,
                    allDay: allDay,
                    color: $(this).css('border-left-color')
                };
                $('#calendar').fullCalendar('renderEvent', copiedEventObject, true);
                // is the "remove after drop" checkbox checked?
                if ($('#drop-remove').is(':checked')) {
                    // if so, remove the element from the "Draggable Events" list
                    $(this).remove();
                }
            }
        });

        // Hide default header
        $('.fc-header').hide();

        // Show current date
        var currentDate = $('#calendar').fullCalendar('getDate');

        $('#cal-current-day').html($.fullCalendar.formatDate(currentDate, "dddd"));
        $('#cal-current-date').html($.fullCalendar.formatDate(currentDate, "MMM yyyy"));

        // Previous month action
        $('#cal-prev').click(function () {
            $('#calendar').fullCalendar('prev');
            currentDate = $('#calendar').fullCalendar('getDate');
            $('#cal-current-day').html($.fullCalendar.formatDate(currentDate, "dddd"));
            $('#cal-current-date').html($.fullCalendar.formatDate(currentDate, "MMM yyyy"));
        });

        // Next month action
        $('#cal-next').click(function () {
            $('#calendar').fullCalendar('next');
            currentDate = $('#calendar').fullCalendar('getDate');
            $('#cal-current-day').html($.fullCalendar.formatDate(currentDate, "dddd"));
            $('#cal-current-date').html($.fullCalendar.formatDate(currentDate, "MMM yyyy"));
        });

        // Change to month view
        $('#change-view-month').click(function () {
            $('#calendar').fullCalendar('changeView', 'month');

            // safari fix
            $('#content .main').fadeOut(0, function () {
                setTimeout(function () {
                    $('#content .main').css({'display': 'table'});
                }, 0);
            });

        });

        // Change to week view
        $('#change-view-week').click(function () {
            $('#calendar').fullCalendar('changeView', 'agendaWeek');

            // safari fix
            $('#content .main').fadeOut(0, function () {
                setTimeout(function () {
                    $('#content .main').css({'display': 'table'});
                }, 0);
            });

        });

        // Change to day view
        $('#change-view-day').click(function () {
            $('#calendar').fullCalendar('changeView', 'agendaDay');

            // safari fix
            $('#content .main').fadeOut(0, function () {
                setTimeout(function () {
                    $('#content .main').css({'display': 'table'});
                }, 0);
            });

        });

        // Change to today view
        $('#change-view-today').click(function () {
            $('#calendar').fullCalendar('today');
            currentDate = $('#calendar').fullCalendar('getDate');
            $('#cal-current-day').html($.fullCalendar.formatDate(currentDate, "dddd"));
            $('#cal-current-date').html($.fullCalendar.formatDate(currentDate, "MMM yyyy"));
        });

        // Submitting new event form
        $('#add-event').submit(function(e){
            e.preventDefault();
            var form = $(this);

            if(form.parsley('isValid')) {

                var newEvent = $('<div class="external-event" data-color="'+$("#event-color").val()+'">'+$('#event-title').val() +'</div>');

                newEvent.css({'border-left-color': $("#event-color").val() || "#717171"});

                if ($('#external-events .external-event').length > 0) {
                    $('#external-events .external-event:last').after(newEvent);
                } else {
                    $('#external-events .events').after(newEvent);
                };

                $('#external-events .external-event:last').after(newEvent);

                $('#external-events .external-event').draggable({
                    zIndex: 999,
                    revert: true,
                    revertDuration: 0,
                    drag: function() {
                        $('.cal-options .date-info').addClass('out')
                        $('.cal-options #event-delete').addClass('in')
                    },
                    stop: function() {
                        $('.cal-options .date-info').removeClass('out')
                        $('.cal-options #event-delete').removeClass('in')
                    }
                });

                form[0].reset();

                $('#cal-new-event').modal('hide');

            } else {

                $('#event-title').focus();
                return false;

            }

        });

        // Event deleting function
        $('.cal-options #event-delete').droppable({
            accept: "#external-events .external-event",
            hoverClass: "active",
            drop: function(event, ui) {
                ui.draggable.remove();
                $(this).removeClass( "active in" );
                $('.cal-options .date-info').removeClass('out')
            }
        });

    });

</script>

</body>
</html>