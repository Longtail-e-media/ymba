$(document).ready(function(){
    $(window).scroll(function(){
  if ($(this).scrollTop() > 100){
    $(".navbar").addClass("scrollheight");
  }else{
    $(".navbar").removeClass("scrollheight");
  }
    })
})