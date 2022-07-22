


  $(document).ready(function(){
      $('a').click(function(){

          if(!$(this).hasClass('chon')){
          $('a').removeClass('chon');
          $(this).addClass('chon');
          }

      })
  });


