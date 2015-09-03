$(window).load(function () {
    $('.scroller').carouFredSel({
        width: "100%",
        height: 209,
        items: {
            visible: "variable",
            minimum: 2,
            start: true,
            width: 246,
            height: 209
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
        helpers: {
            title: {type: 'inside'}
        }
    });

    $('.fancytext').fancybox({
        autoWidth: false,
        autoHeight: true,
        width: '50%',
        maxWidth: 700
    });

    $('.gallery .pager a').click(function () {
        var currentPage = ($(this).attr('data'));
        $('.gallery .page').hide();
        $('[data*=' + currentPage + ']').show();
    });

    $('a.disabled').click(function (o) {
        return false;
    });

// CSS3 Calc substitute --
    $('.projects .additional ul').width($('.projects .data').width() - 76);
// -- CSS3 Calc substitute
});

function hideAdditionalInfo() {
    $('.replace_scroller_link').toggle();
    $('section.article').toggle();
    $('section.gallery').toggle();
    $('section.project').toggle();
    $('.projects .list').toggle();
    $('.projects .list-nav').toggle();
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
            anchorBuilder: function (nr) {
                var src = $('.img', this).css('background-image');
                src = src.slice(4, -1).replace('/original/', '/thumb/');
                return '<img src="' + src + '" />';
            }
        }
    });
    $('.scroller').trigger("updateSizes");
}