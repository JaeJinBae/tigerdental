$(document).ready(function(){
	var active = $('.active');

	//$("#gnb a").hover(function(){
	//	$(this).next('ul').show().parent().siblings().children('ul').hide();
	//});

	$('img[usemap]').rwdImageMaps();

	$('#gnb .active').parents('li').addClass('active').children('a').addClass('active');

});