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
//= require fancybox
//= require_tree .

$(document).ready(function() {
    $('.scroller').carouFredSel({
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
    });

    $('.fancybox').fancybox({
        prevEffect: 'none',
        nextEffect: 'none',
        helpers		: {
            title: { type : 'inside' }
        }
    });

    $('.gallery .pager a').click(function() {
        var currentPage = ($(this).attr('data'));
        $('.gallery .page').hide();
        $('[data*='+currentPage+']').show();
    });

    $('a.disabled').click(function(o) {
        return false;
    });
});

function hideAdditionalInfo() {
    $('.replace_scroller_link').toggle();
    $('section.article').toggle();
    $('section.gallery').toggle();
    $('section.project-intro').toggle();
    $('.projects .list').toggle();
    $('.projects .data .additional').toggle();
    $('.horizontal-carousel').toggle();
    $('.horizontal-carousel .wrapper').carouFredSel({
        responsive: true,
        scroll: {
            fx: "crossfade",
            duration: 1000
        },
        items: {
            visible: 1,
            width: 1200,
            height: 903
        },
        pagination: {
            container: '.thumbs',
            anchorBuilder: function(nr) {
                var src = $('.img', this).css('background-image');
                src = src.slice(4, -1).replace('/original/', '/thumb/');
                return '<img src="' + src + '" />';
            }
        }
    });
    $('.scroller').trigger("updateSizes");
}