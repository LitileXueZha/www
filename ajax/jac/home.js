$(function(){
/*
	$(".hmul li img").hover(function(){
		//$(this).parent().parent().find("li").addClass("small");
		$(this).removeClass("small").attr("id","big");
		$("li img").not($("#big")).addClass("small");
		//$(".hmul").css("width","300px");
		//$(".big").css({"width":"100px"});
	},
	function(){
		//$("li img").not($("#big")).css("border","1px solid red");
		$(this).removeAttr("id");
	});
*/
	
/*
	var width1 = $(".in").css("width");
	var width2 = $(".in img").css("width");
	var re2 = /\d+/;
	wt1 = re2.exec(width1);
	wt2 = re2.exec(width2);
	var width = (wt1-wt2)/2 + "px";
	$(".in img").css("margin-left",width);

	$(".hmdiv").hide();
	$(".in").hover(function(){
		$(".hmdiv").css("display","block");
	},
	function(){
		$(".hmdiv").css("display","none");
	});
*/
	//$(".in img").css("opacity",".5")
/*
	$(".hmul li img").hover(function(){
		$(this).css("opacity",".5");
		var srcs = $(this).attr("src");
		$(".in img").attr("src",srcs);
		$(".in img").css("opacity","1"); 
		},
		function(){
			$(".in img").css("opacity",".5")
			$(this).css("opacity","1");
		}
	);
	$(".in img").hover(function(){
		$(this).css("opacity","1");
	});
*/
$("li img").css("opacity",".5");
var btns = $("li img");
for(var i = 0;i< btns.length;i++){
	$(btns[i]).hover(function(){
		var srcs = $(this).attr("src");
		$(".in img").css("opacity","1").attr("src",srcs);
	  $(this).css("opacity","1");
	},
		function(){
			$(".in img").css("opacity",".7");
			$(this).css("opacity",".5");
	});
}
$(".in img").hover(function(){
	$(this).css("opacity","1");
},
function(){
	$(this).css("opacity",".7");
});

/*
setTimeout(function(){
		for(var i = 0;i< btns.length;i++){
			var srcs = $(btns[i]).attr("src");
			$(".in img").css("opacity","1").attr("src",srcs);
		}
	},1000);

function set(){
	for(var i = 0;i< btns.length;i++){
		var srcs = $(btns[i]).attr("src");
		$(".in img").css("opacity","1").attr("src",srcs);
		if(i == 4){
			//i = 0;
		}
	}
}
function a(b){
	console.log(b);
}
for (var i = 0; i < 4; i++) {
	setInterval(set(),18000);
}

*/














})