# This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# the compiled file.
#
# WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
# GO AFTER THE REQUIRES BELOW.
#
#= require jquery
#= require jquery_ujs
#= require turbolinks
#= require tether
#= require bootstrap-sprockets
#= require bootstrap-slider
#= require switchery
#= require cocoon
#= require_self

$(document).on 'turbolinks:load', ->
  $("input.slider").slider
    tooltip: 'always'
    formatter: (val) -> "$" + val

  $(".btn-pay").on 'click', (e) ->
    e.preventDefault()
    $(".backdrop").fadeIn('fast')
    $(".apple-pay").show().animate({
      bottom: 0
    }, 'fast')

  if $(".insurance").length > 0
    $(".insurance .policy").on 'change', (e) ->
      sum = 0
      $(".insurance .policy:checked").each ->
        sum += Number($(this).data('amount'))
      $(".total").text("$" + sum)

  $(".switch[data-switchery!=true]").each ->
    new Switchery(this)

