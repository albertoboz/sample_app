

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
});
