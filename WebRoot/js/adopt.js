$(document).ready(function() {
	$('.itd1').hover(function(){ //主页图片透明度变化
		$(this).find('img').css({opacity:0.3});
		$(this).find('p').fadeIn(500);
	},function(){
		$(this).find('img').css({opacity:1});
		$(this).find('p').fadeOut(500);
	});
})