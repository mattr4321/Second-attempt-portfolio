/*global global$*/(document).on('turbolinks:load', function(){
  /*global global$*/('.rating').raty({ path: '/assets', scoreName: 'comment[rating]'});
  ('.rated').raty({ path: '/assets',
      readOnly: true,
      score: function() {
        return (this).attr('data-score');
      }
    });
});