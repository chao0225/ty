window.onload=function(){	
	var index=0;
	var next=0;
	$(function () {  
		$('.swiper .next').click(function () {  
			$(".swiper_wrap ul").animate({marginLeft:"-1120px"},800, function () {  
				$(".swiper_wrap ul>li").eq(0).appendTo($(".swiper_wrap ul"));  
				$(".swiper_wrap ul").css('marginLeft','0px');  
				//小白点
				next+=1;
				if(next==7){
					next=0;
				}
				$(".swiper_page ul li").eq(next).css("background","#cd0b2d");
				$(".swiper_page ul li").eq(index).css("background","#fff");
				index=next;
			}); 
		})  

		$('.swiper .prev').click(function () {  
			$(".swiper_wrap ul").css('marginLeft','-1120px');  
			$(".swiper_wrap ul>li").eq(4).prependTo($(".swiper_wrap ul"));  
			$(".swiper_wrap ul").animate({marginLeft:"0px"},800);
			//小白点
			next-=1;
			if(next==0){
				next=7;
			}
			$(".swiper_page ul li").eq(next).css("background","#cd0b2d");
			$(".swiper_page ul li").eq(index).css("background","#fff");
			index=next; 
		})
	})
	$(function(){
		$(".swiper_page ul li").eq(0).css("background","#cd0b2d");	
		function choices(){
			$(".swiper_wrap ul").animate({marginLeft:"-1120px"},800, function () {  
				$(".swiper_wrap ul>li").eq(0).appendTo($(".swiper_wrap ul"));  
				$(".swiper_wrap ul").css('marginLeft','0px'); 
			});
			//小白点
			next++;
			if(next==7){
				next=0;
			}
			$(".swiper_page ul li").eq(next).css("background","#cd0b2d");
			$(".swiper_page ul li").eq(index).css("background","#fff");
			index=next;
			   
		}
			var tabChange = setInterval(choices,5000);
			//鼠标悬停暂停切换
			$('.swiper_wrap').mouseover(function(){
				clearInterval(tabChange);
			});
			$('.swiper_wrap').mouseout(function(){
				tabChange = setInterval(choices,5000);
			});
			
	})
}