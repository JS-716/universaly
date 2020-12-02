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
  import { btnValidate } from "../lib/btn-validate";

// import "../lib/btn-add";
// import "../lib/btn-validate";
// import { initSelect2 } from '../components/init_select2';


document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
    btnValidate();

$(function()
{
    var app = $('#app'), init = $('#init'), layer = $('#layer'), input = $('#inp-cover input'), button = $('button');

    function toggleApp()
    {
        app.toggleClass('opened');

        if( button.hasClass('shadow') )
            button.toggleClass('shadow');
        else
            setTimeout(function(){ button.toggleClass('shadow'); },300);

        if( app.hasClass('opened') )
        {
            setTimeout(function(){ input.toggleClass('move-up'); },200);
            setTimeout(function(){ input.focus(); },500);
        }
        else
            setTimeout(function(){ input.toggleClass('move-up').val(''); },200);

        if( ! layer.hasClass('sl') )
        {
            setTimeout(function()
            {
                layer.addClass('sl');
            },800);
        }
        else
            setTimeout(function(){ layer.removeClass('sl'); },300);
    }

    layer.on('click',toggleApp);
    init.on('click',toggleApp);
});



});

