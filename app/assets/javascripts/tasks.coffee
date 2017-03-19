# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

class TasksController
  constructor: (@base_element) ->
    console.log "TasksController loaded"
    $('#runner').runner
      milliseconds: false
    console.log('Runner initialised')
    $('#runner-start').click () =>
      $('#runner').runner('start')
      console.log('Started')
    $('#runner-stop').click () =>
      $('#runner').runner('stop')
      console.log('Stopped')
    $('#runner-reset').click () =>
      $('#runner').runner('reset')
      console.log('Reset')
    $('#runner-submit-time').click (e) =>
      e.preventDefault()
      @current_time = $('#runner').text()
      $.ajax
        url: $(e.target).attr('href')
        dataType: "script"
        method: "patch"
        data: 'current_time' : @current_time
        # type: 'POST'
        success: (data, textStatus, jqXHR) =>
          # window.gc.notification "Request sent successfully"
      window.location.reload()
      

$('body').ready =>
  return unless $('body').is('.controller_tasks')
  new TasksController($('body'))
