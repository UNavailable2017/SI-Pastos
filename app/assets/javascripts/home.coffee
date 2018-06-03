# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "turbolinks:load", ->
  $('.parallax').parallax()
  $('.carousel').carousel()
  $(".button-collapse").sideNav()
  $('.materialboxed').materialbox()
  Chartkick.configure({language: "es"})

  $('.datepicker').pickadate({
    selectMonths: true, # Creates a dropdown to control month
    selectYears: 15, # Creates a dropdown of 15 years to control year,
    monthsFull: [
      'Enero', 'Febrero', 'Marzo', 'Abril',
      'Mayo', 'Junio', 'Julio', 'Agosto',
      'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'
    ],
    weekdaysShort: ['Dom', 'Lun', 'Mar', 'Mir', 'Jue', 'Vie', 'Sab'],
    dateFormat: 'dd-mm-yy',
    today: 'Hoy',
    clear: 'Limpiar',
    close: 'Aceptar',
    closeOnSelect: false # Close upon selecting a date,
  })
