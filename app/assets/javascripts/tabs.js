$(function()  {
  let tabs = $(".news-todo-tab");
  function tabSwitch() {
    $(".active-1").removeClass("active-1");
    $(this).addClass("active-1");
    const index = tabs.index(this);
    $(".content-1").removeClass("show-1").eq(index).fadeIn().addClass("show-1");
    $(".content-1").addClass("hide-1").eq(index).fadeIn().removeClass("hide-1");
    $(".border-red-1").removeClass("line-up-1").eq(index).addClass("line-up-1");
    $(".border-red-1").addClass("line-down-1").eq(index).removeClass("line-down-1");
    $(".main__top__search").removeClass("result-up-1").eq(index).fadeIn().addClass("result-up-1");
    $(".main__top__search").addClass("result-down-1").eq(index).fadeIn().removeClass("result-down-1");
    $('.show-1').show();
    $('.hide-1').hide();
    $('.line-up-1').show();
    $(".line-down-1").hide();
    $('.result-up-1').show();
    $(".result-down-1").hide();
  }
  tabs.click(tabSwitch);    
});

$(function()  {
  $(window).load(function(){
    $('.hide-1').hide()
  })
});

$(function()  {
  $(window).load(function(){
    $('.line-down-1').hide()
  })
});

$(function()  {
  $(window).load(function(){
    $('.result-down-1').hide()
  })
});
