// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(function() {
    $('.card-content').noisy({
        'intensity' : 1, 
        'size' : 200, 
        'opacity' : 0.08, 
        'fallback' : '', 
        'monochrome' : false
    });
    $('.show-on-submit, .invalid-form').hide();

    window.submitRsvp = function() {
        $('button[type=submit]').prop('disabled', true);
        $('.invalid-form').hide();
        $('.show-on-submit').show();
        return true;
    };

    window.validateRsvp = function() {
        if ($('form :invalid').length > 0) {
            $('.invalid-form').show();
        }
    };

});