# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#

$ ->  
  $(".clickable").click -> 
    $name = $(this).data('name')
    $('.name-label').html($name)
    $("input[name='email[leader_name]']").val($name)

