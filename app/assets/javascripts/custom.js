

$(document).on('turbolinks:load', function(){
  $(function() {
    $('.alert').delay(3000).fadeOut();
  });

  $('.rating').raty({ path: '/assets', scoreName: 'comment[rating]' });

  $('.rated').raty({ path: '/assets',
      readOnly: true,
      score: function() {
        return $(this).attr('data-score');
      }
    });

  // elevate zoom
  $('.img-zoom').elevateZoom({
    responsive: true,
    zoomWindowWidth:500,
    zoomWindowHeight:300,
    zoomWindowFadeIn: 500,
    zoomWindowFadeOut: 750,
    scrollZoom : true
  });
});
