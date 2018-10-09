$(function(){
	$(".hidebtn").hide();
	$(".inhere").hide();
	$(".name").bind("input",function(){
	if($(this).val().length >= 0){
    	$(".hidebtn").click();
    }
	});
	$(".hidebtn").click(function(){
			$.ajax({
				type: "post",
				url: "test.php",
				data: $("form").serialize(),
				success: function(responseText,status,xhr){
					//alert(responseText.length);
					$(".testa").attr("href",responseText);
					if(responseText.length == 1){
						$(".enter").click(function(){
							$(".inhere").show();
							$(".name").focus(function(){
								$(".inhere").hide();
							});
						});
					}else{
						$(".inhere").remove();
						$(".testa").attr("href",responseText);
					}
					/*
						if(responseText.length == 11) {
							$(".testa").attr("href",responseText);
						}else{
							$(".enter").click(function(){
								alert(responseText.length);
								$(".testa").attr("href","javascript:void(0)");
								$(".inhere").html(responseText);
							});
						}
					*/
				}
			})
		});

  $("#mycanvas").hide();
  $(".name").focus(function(){
		$("#mycanvas").show(1000);
		//$("#mycanvas")..slideToggle().slideDown(3000);;

	}).focusout(function(){
		$("#mycanvas").hide(1000);
	});

/*
	$(".clickfls").hide();
	$(".name").click(function(){
		$(".clickfls").show();
	});*/
})