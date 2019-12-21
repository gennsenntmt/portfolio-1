$(function(){
  $('.choose-box2__container__description__input').keyup(function() {
    let cnt = $(this).val().length;
    $('.showCnt').text(cnt);
  });
});

