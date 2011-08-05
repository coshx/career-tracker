updateContent = (event, newContent) ->
  $(newContent).filter('[data-content-key]').each ->
    contentKey = $(this).attr("data-content-key")
    $("[data-content-key=" + contentKey + "]").html($(this).html())

$.ajaxSetup
  contentType: "html"
  dataType: "html"

jQuery ->
  $('[data-remote]').live 'ajax:success', (event, data, xhr, status) ->
    updateContent(event, data)