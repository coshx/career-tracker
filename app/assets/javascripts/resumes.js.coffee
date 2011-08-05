# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('li.achievement').draggable()
  $('#resume-achievements').droppable
    over: (event, ui) ->
      $(this).css('background-color', '#FEF2B1')
    out: (event, ui) ->
      $(this).css('background-color', 'white')
    drop: (event, ui) ->
      ui.draggable.hide()
      ui.draggable.children('a').trigger('click')
    deactivate: (event, ui) ->
      ui.draggable.hide()
