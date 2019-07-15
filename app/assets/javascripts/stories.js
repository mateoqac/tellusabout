// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// $(document).on('ready page:load', function() {
//   console.log("READY IN STORY")
//   CountryStateSelect({ chosen_ui: true, country_id: "story_country", state_id: "story_state" ,city_id: "story_city",city_place_holder: "Please select city", state_place_holder: 'Please select state'})
// })
  

$(document).ready(function() {
  var stay = $('meta[name=psj').attr('controller') == 'stories' && $('meta[name=psj').attr('action') == 'new';
  console.log(stay)
  if(stay)
    console.log("ready")
    CountryStateSelect({ chosen_ui: true, country_id: "story_country", state_id: "story_state" ,city_id: "story_city",city_place_holder: "Please select city", state_place_holder: 'Please select state'});
  
    
})

 