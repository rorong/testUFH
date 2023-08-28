// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "jquery"
import 'rails-ujs';
import 'jquery-peity'
import 'jquery-ui'
import 'metismenu'
import 'moment'
import 'perfect-scrollbar'
import 'bootstrap-select'
import 'deznav-min'
import 'deznav-init'
import 'custom'
import 'Chart-bundle'
import 'apexchart'
import 'bootstrap-bundle-min'
import 'owl'
import 'dashboard-1'
import 'dataTables-min'
import 'dataTables-init'
import 'dropzone-min'
import 'highlight.pack.min'
import 'datetimepicker'
import 'fullcalendar-min'
import 'fullcalendar-init'
// import 'moment-min'
// import 'dataTables-buttons'
// import 'dataTables-bootstrap4-min'
window.$ = window.jQuery = jQuery
$(function () {
  $('#datetimepicker1').datetimepicker({
    inline: true,
  });
});

$(document).ready(function(){
  $("#country").on("change", function(){
    $.ajax({
      type: "GET",
      url: "/get_states_for_country?country=" + this.value
    })
  });
});
