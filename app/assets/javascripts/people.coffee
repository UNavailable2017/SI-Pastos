# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$('.datepicker').pickadate({
  selectMonths: true, # Creates a dropdown to control month
  selectYears: 10, # Creates a dropdown of 15 years to control year,
  dateFormat: 'dd-mm-yy',
  today: 'Today',
  clear: 'Clear',
  close: 'Ok',
  closeOnSelect: false # Close upon selecting a date,
})
