// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//



//= require jquery
//= require jquery_ujs

//= require scrollReveal
//= require pace/pace
//= require jquery.turbolinks 
//= require turbolinks
//= require typed
//= require popper
//= require tether
//= require bootstrap-sprockets
//= require trix

//= require_tree .



  $(document).ready(function() {
        $('#foody').on('click', function() {
            $('.audio-play')[0].currentTime = 0; 
            return $('.audio-play')[0].play(); 
         }); 

        $('.intro-message').mouseenter(function() {
            $('.intro-message').css('background-color', 'white'); 
            $('#typed').css('color', 'black'); 
            $('#ux').css('color', 'black').css('text-shadow', 'none'); 
        }); 

 

  }); 








$(function() {
    window.scrollReveal = new scrollReveal();
  });

  

$(function(){
  $("#typed").typed({
    strings: ["Erik Young"],
    // Optionally use an HTML element to grab strings from (must wrap each string in a <p>)
    stringsElement: null,
    // typing speed
    typeSpeed: 110,
    // time before typing starts
    startDelay: 1200,
    // backspacing speed
    backSpeed: 30,
    // time before backspacing
    backDelay: 500,
    // loop
    loop: true,
    // false = infinite
    loopCount: false,
    // show cursor
    showCursor: true,
    // character for cursor
    cursorChar: "",
    // attribute to type (null == text)
    attr: null,
    // either html or text
    contentType: 'html',
    // call when done callback function
    callback: function() {},
    // starting callback function before each string
    preStringTyped: function() {},
    //callback for every typed string
    onStringTyped: function() {},
    // callback for reset
    resetCallback: function() {}
  });
});


  
// $('.selectpicker').selectpicker('refresh');