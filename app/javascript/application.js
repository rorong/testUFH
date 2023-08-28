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
import 'custom'
import 'deznav-min'
import 'deznav-init'
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

  setTimeout(function() {
    $('#my-alert').fadeOut('slow');
  }, 5000);

  function carouselReview(){
      /*  testimonial one function by = owl.carousel.js */
      jQuery('.testimonial-one').owlCarousel({
        loop:true,
        autoplay:true,
        margin:30,
        nav:false,
        dots: false,
        left:true,
        navText: ['<i class="fa fa-chevron-left" aria-hidden="true"></i>', '<i class="fa fa-chevron-right" aria-hidden="true"></i>'],
        responsive:{
          0:{
            items:1
          },
          484:{
            items:2
          },
          882:{
            items:3
          },
          1200:{
            items:2
          },

          1540:{
            items:3
          },
          1740:{
            items:4
          }
        }
      })
    }
    jQuery(window).on('load',function(){
      setTimeout(function(){
        carouselReview();
      }, 1000);
    });
});
