// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function() {
    $(".scroller").carouFredSel({
        width: "100%",
        height: 150,
        items: {
            visible: "variable",
            minimum: 2,
            start: true,
            width: 250,
            height: 147
        },
//        circular: false,
//        infinite: false,
        scroll: {
            items: 1
        },
        auto: false,
        prev: {
            button: ".to-left",
            key: "left"
        },
        next: {
            button: ".to-right",
            key: "right"
        },
        swipe: true
    }, {
        debug: true
    });

    $('a.disabled').click(function(o) {
        return false;
    });
});

function hideAdditionalInfo() {
    $('.replace_scroller_link').toggle();
    $('section.article').toggle();
    $('section.gallery').toggle();
    $('.projects .list').toggle();
    $('.projects .data .additional').toggle();
    $(".scroller").trigger("updateSizes");
}