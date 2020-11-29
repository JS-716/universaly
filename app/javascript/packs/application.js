// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
import $ from 'jquery';

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
});

// $(function() {
// 	var rangePercent = $('[type="range"]').val();
// 	$('[type="range"]').on('change input', function() {
// 		rangePercent = $('[type="range"]').val();
// 		$('h4').html(rangePercent+'<span></span>');
// 		$('[type="range"], h4>span').css('filter', 'hue-rotate(-' + rangePercent + 'deg)');
// 		// $('h4').css({'transform': 'translateX(calc(-50% - 20px)) scale(' + (1+(rangePercent/100)) + ')', 'left': rangePercent+'%'});
//     $('h4').css({'transform': 'translateX(-50%) scale(' + (1+(rangePercent/50)) + ')', 'left': rangePercent+'%'});
//     // $('h4').css({'transform': 'translateX(-50%) scale(' + (1+(rangePercent/100)) + ')', 'left': rangePercent+'%'});
// 	});
// });

// var $r = $('input[type="range"]');
// var $ruler = $('<div class="rangeslider__ruler" />');

// // Initialize
// $r.rangeslider({
//   polyfill: false,
//   onInit: function() {
//     $ruler[0].innerHTML = getRulerRange(this.min, this.max, this.step);
//     this.$range.prepend($ruler);}
// });

// function getRulerRange(min, max, step) {
//   var range = '';
//   var i = 0;
  
//   while (i <= max) {
//     range += i + ' ';
//     i = i + step;
//   }
//   return range;
// }

var slider = document.getElementById("myRange");
var output = document.getElementById("demo");
output.innerHTML = slider.value; // Display the default slider value

// Update the current slider value (each time you drag the slider handle)
slider.oninput = function() {
  output.innerHTML = this.value;
}
