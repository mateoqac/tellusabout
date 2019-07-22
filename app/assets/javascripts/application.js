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
//= require bootstrap
// = require chosen-jquery
//= require country_state_select
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

$(document).on("turbolinks:load", function() {
  $('.chosen-select').chosen({
    allow_single_deselect: true,
    no_results_text: 'No results matched',
    width: '200px'
  });

  if (!($(".stories.new").length > 0)) {
    return;
  }

  CountryStateSelect({ chosen_ui: true, country_id: "story_country", state_id: "story_state" ,city_id: "story_city",city_place_holder: "Please select city", state_place_holder: 'Please select state'});
});

$(document).on("turbolinks:load", function(){
  window.setTimeout(function () {
      $(".alert").fadeTo(300, 0).slideUp(300, function () {
          $(this).remove();
      });
}, 3000);
})