$(function(){
  $('.td-principal:contains("済")').parent("tr").css("background-color", "#FFEEFF");
  // $('.td-principal:contains("未了")').parent("tr").css("background-color", "gray");
  $('.td-principal:contains("要修正")').parent("tr").css("background-color", "#FFFFCC");
  $('.td-english:contains("◯")').css("background-color", "#AAFFFF");
  $('.td-math:contains("◯")').css("background-color", "#AAFFFF");
  $('.td-japanese:contains("◯")').css("background-color", "#AAFFFF");
  $('.td-science:contains("◯")').css("background-color", "#AAFFFF");
  $('.td-social_studies:contains("◯")').css("background-color", "#AAFFFF");
});