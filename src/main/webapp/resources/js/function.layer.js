/*
option
background : 'Y'
loading : 'Y'
drag : 'Y'
nodrag : '클래스명'
*/


function Layer($ID, $URL, $PARAM, $OPTION, $DOUBLE){
	$ID = ($ID == undefined) ? "" : $ID;
	$URL = ($URL == undefined) ? "" : $URL;
	$PARAM = ($PARAM == undefined) ? "" : $PARAM;

	if(!$URL)	return;

	Layer_Popup($URL, $PARAM, $OPTION, $DOUBLE, $ID);
}


function Layer_Popup($URL, $PARAM, $OPTION, $DOUBLE, $FOCUS){
	$PARAM = ($PARAM) ? $PARAM : "";
	$DOUBLE = (!$DOUBLE) ? "N" : $DOUBLE;
	$FOCUS = ($FOCUS == undefined) ? "" : $FOCUS;

	if($PARAM)	$PARAM += "&focus=" + $FOCUS;
	else		$PARAM = "focus=" + $FOCUS;

	if($DOUBLE == "N")	$("div").filter("[id*=LayerPOP]").remove();

	var $CNT = parseInt( $("div").filter("[id*=LayerPOP]").size() )+1,
		$LAYER = "LayerPOP" + $CNT,
		$PAGE = $URL + "?LayerID=" + $LAYER + "&" + $PARAM,
		$MASK = $("#Mask");

	$OPTION = (!$OPTION) ? {} : $OPTION;
	$OPTION.loading = (!$OPTION.loading) ? "Y" : $OPTION.loading;
	$OPTION.drag = (!$OPTION.drag) ? "N" : $OPTION.drag;
	$OPTION.background = (!$OPTION.background) ? "Y" : $OPTION.background;

	if($OPTION.loading == "Y")	Ajax_Loading($LAYER, "Y");

	$MASK.after("<div id='"+$LAYER+"' style='position:absolute;top:0;left:0;display:none'></div>");

	$("#"+$LAYER).load($PAGE, function(){
		setTimeout(function(){
			Layer_Center($LAYER, $OPTION);
			$("#" + $LAYER).focus();
		}, 1000);
	});

	if( ($CNT == 1) && ($OPTION.background == "Y") ){
		$MASK.css({
			opacity: (30 / 100),
			filter: 'alpha(opacity='+30+')',
			position: 'absolute',
			zIndex: "999",
			top: '0px',
			left: '0px',
			width: '100%',
			height: $(document).height(),
			background: "#000"
		}).on("click",function(){
			Layer_Close($FOCUS);
		}).on("mouseover",function(){
			$(this).css("cursor","pointer");
		}).show();
	}

	if($OPTION.drag == "Y")		Layer_Drag($LAYER, $OPTION);
}


function layer_popup($URL, $PARAM, $OPTION, $DOUBLE, $FOCUS){
	$PARAM = ($PARAM) ? $PARAM : "";
	$DOUBLE = (!$DOUBLE) ? "N" : $DOUBLE;
	$FOCUS = ($FOCUS == undefined) ? "" : $FOCUS;

	if($DOUBLE == "N")	$("div").filter("[id*=LayerPOP]").remove();

	var $CNT = parseInt( $("div").filter("[id*=LayerPOP]").size() )+1,
		$LAYER = "LayerPOP" + $CNT,
		$PAGE = $URL + "?" + $PARAM;
		$MASK = $("#Mask");

	$OPTION = (!$OPTION) ? {} : $OPTION;
	$OPTION.loading = (!$OPTION.loading) ? "Y" : $OPTION.loading;
	$OPTION.drag = (!$OPTION.drag) ? "N" : $OPTION.drag;
	$OPTION.background = (!$OPTION.background) ? "Y" : $OPTION.background;

	if($OPTION.loading == "Y")	Ajax_Loading($LAYER, "Y");

	$MASK.after("<div id='"+$LAYER+"' style='position:absolute;top:0;left:0;display:none'></div>");

	$("#"+$LAYER).load($PAGE, function(){
		setTimeout(function(){
			Layer_Center($LAYER, $OPTION);
		}, 1000);
	});

	if( ($CNT == 1) && ($OPTION.background == "Y") ){
		$MASK.css({
			opacity: (30 / 100),
			filter: 'alpha(opacity='+30+')',
			position: 'absolute',
			zIndex: "999",
			top: '0px',
			left: '0px',
			width: '100%',
			height: $(document).height(),
			background: "#000"
		}).on("click",function(){
			Layer_Close($FOCUS);
		}).on("mouseover",function(){
			$(this).css("cursor","pointer");
		}).show();
	}

	if($OPTION.drag == "Y")		Layer_Drag($LAYER, $OPTION);
}


function Layer_Center($LAYER, $OPTION){
	var $winheight =  window.innerHeight ? window.innerHeight : $(window).height(),
		$TOP = ( $OPTION && ($OPTION.TOP != undefined) ) ? $OPTION.TOP : ( $(window).scrollTop() ) + ( $winheight - $("#"+$LAYER).height() ) / 2,
		$LEFT = ( $OPTION && ($OPTION.LEFT != undefined) ) ? $OPTION.LEFT : ( $(window).scrollLeft() ) + ( $(window).width() - $("#"+$LAYER).width() ) / 2,
		$CNT = parseInt( $LAYER.replace("LayerPOP", "") );

	$("#"+$LAYER).css({
		"position" : "absolute",
		"z-index" : parseInt(1000) + $CNT,
		"top" : $TOP + "px",
		"left" : $LEFT + "px",
		"background" : "#fff"
	}).show();

	Ajax_Loading();
}


function Layer_Close($FOCUS, $LayerID, $Return){
	$FOCUS = ($FOCUS == undefined) ? "" : $FOCUS;
	$Return = ($Return == undefined) ? "" : $Return;

	var $CNT = parseInt($("div").filter("[id*=LayerPOP]").size());

	if($LayerID)	$("#" + $LayerID).remove();
	else			$("#LayerPOP" + $CNT).remove();

	if($CNT == 1)	$("#Mask").hide();
	if($FOCUS)		$("#" + $FOCUS).focus();
	if($Return)		$("#" + $Return).focus();
}


function Ajax_Loading($LAYER, $On_Off){
	$On_Off = (!$On_Off) ? "N" : $On_Off;

	if($On_Off == "Y"){
		$("#Mask").after("<div id='Ajax_Loading' style='display:none;top:0;left:0'><img src='/images/ajax-loader.gif'></div>")

		var $TOP = $LEFT = $WIDTH = $HEIGHT = 0,
			$Ajax_Loading = $("#Ajax_Loading"),
			$Target = ($("#"+$LAYER).size() != 0) ? "Layer" : "window"

		if($Target == "Layer"){
			$LAYER = $("#"+$LAYER);

			$TOP = ($LAYER.offset().top + ($LAYER.height() / 2)) - ($Ajax_Loading.height() / 2);
			$LEFT = ($LAYER.offset().left + ($LAYER.width() / 2)) - ($Ajax_Loading.width() / 2);
		}else{
			$TOP = ($(window).scrollTop()) + ( $(window).height() - $Ajax_Loading.height() ) / 2,
			$LEFT = ($(window).scrollLeft()) + ( $(window).width() - $Ajax_Loading.width() ) / 2;
		}

		$("#Ajax_Loading").css({
			"position" : "absolute",
			"z-index" : parseInt(100001),
			"top" : $TOP + "px",
			"left" : $LEFT + "px"
		}).show();
	}else{
		$("#Ajax_Loading").remove();
	}
}


function Layer_Drag($Layer, $OPTION){
	$OPTION.nodrag = ($OPTION.nodrag == undefined) ? '' : $OPTION.nodrag;

	$("#"+$Layer).draggable({
		cancel : $OPTION.nodrag,
		cursor : "move"
	});
}