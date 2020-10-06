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
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
//= require jquery3
//= require popper
//= require bootstrap

var scroll_bottom = function () {
  // console.log($('#message-container').length)
  // console.log($('#message-container'))
  // $('#message-container').scrollTop($('#message-container').scrollHeight);
  // if ($('#message-container').length > 0) {
  //   console.log($('#message-container')[0])
  //   $('#message-container').scrollTop($('#message-container').height());
  // }
  // console.log('new')
  // $('#message-container').animate({
  //   scrollTop: $('#message-container .msg:last-child').position().top
  // }, 'slow');
}

scroll_bottom()