$(function(){
  $('a.fancybox:not(.fancyboxed)').live('click', function(){
    $(this).addClass('fancyboxed').fancybox().click();
    return false;
  });
});
