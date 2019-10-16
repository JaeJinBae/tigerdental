/*
option
StartDay : 시작일
EndDay : 종료일
Compare : 비교할ID
Diff : 시작일과 종료일의 차이값을 입력할 ID
Before : 이전날짜
Dayoff : 요일(0,6) => 일요일,토요일
DayoffString : 쉬는날 (2015-01-01,2015-05-05)
Holiday : 공휴일적용
Sunday : 일요일사용유무
CallBack : Y/N 날짜입력 후 다음함수 실행 => jCal_CallBack
*/

function jCal($Obj, $OPTION){
	$("#AjaxjCalendar").remove();

	if(!$Obj)	return;
	else		$Obj = jChk_Obj($Obj);

	var $Params = "UserObj=" + $Obj + "&";
	$Params += ($OPTION) ? jCal_Make_Param($OPTION) : "";

	var $Obj_H = jChk_Position($Obj);

	$("#Mask").after("<div id='AjaxjCalendar' style='position:absolute;top:0;left:0;display:none'></div>");
	$("#AjaxjCalendar").css({
		"z-index" : 90000,
		"top" : $Obj_H.User_TOP + "px",
		"left" : $Obj_H.User_LEFT + "px"
	});

	jCal_load($Params);
}


//Obj확인
function jChk_Obj($Obj){
	var $CNT = $("#"+$Obj).size(),
		TypeOF = "";

	if( ($CNT <= 0) && ($Obj) ){
		var $Temp_ID = "jTemp_ID";

		$("input[name="+$Obj+"]").attr("id", $Temp_ID);
	}

	var $jTemp = ($CNT <= 0) ? $Temp_ID : $Obj;
	return $jTemp;
}


//파라미터 만들기
function jCal_Make_Param($OPTION){
	var $Params = "";

	for(var imsi in $OPTION){
		$Params += imsi + "=" + $OPTION[imsi] + "&";
	}

	return $Params;
}


//객체높이확인
function jChk_Position($Obj){
	var $Position = {
		User_TOP : $("#"+$Obj).offset().top,
		User_LEFT : $("#"+$Obj).offset().left + $("#"+$Obj).width() + 20,
		Win_TOP : $(window).height(),
		Win_LEFT : $(window).width()
	};

	return $Position;
}


//날짜 입력
function jCal_in($Obj, $Date, $Compare, $Diff, $Params, $CallBack){
	var TrueOrFlase = true,
		TypeOF = "";

	if($Compare)	TrueOrFlase = jChk_Compare($Obj, $Date, $Compare, $Diff);

	if(TrueOrFlase == true){
		TypeOF = jChk_type($Obj);

		if(TypeOF == undefined)		$("#"+$Obj).html($Date);
		else						$("#"+$Obj).val($Date);

		if($CallBack == "Y"){
			setTimeout(function(){
				jCal_CallBack();
			}, 300);
		}

		jCal_close();
	}
}


//타입체크
function jChk_type($Obj){
	return document.getElementById($Obj).type;
}


//날짜비교
function jChk_Compare($Obj, $Date, $Compare, $Diff){
	if($Compare)	$Compare = jChk_Obj($Compare);
	if($Diff)		$Diff = jChk_Obj($Diff);

	var $Date1_arr = $("#" + $Compare).val().split("-");
	var $Date2_arr = $Date.split("-");

	var $Date1 = new Date($Date1_arr[0], $Date1_arr[1]-1, $Date1_arr[2]);
	var $Date2 = new Date($Date2_arr[0], $Date2_arr[1]-1, $Date2_arr[2]);

	if($Date1 > $Date2){
		alert('시작일이 빠릅니다');
		$("#" + $Obj).val('');

		if($Diff)	$("#" + $Diff).val('');

		return false;
	}else{
		var $Calc = ( $Date2.getTime()-$Date1.getTime() ) / (24*60*60*1000);

		if($Diff)	$("#"+$Diff).val($Calc);

		return true;
	}
}


//달력실행
function jCal_load($Params){
	var $PAGE = "/lib/js/jCal/jCal.php?" + $Params;

	$("#AjaxjCalendar").load($PAGE).show();
}


//달력닫기
function jCal_close(){
	$("#AjaxjCalendar").remove();
}