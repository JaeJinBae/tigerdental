/*
today : 'N',
diff : {a : 'standard1', b : 'standard2', c : 'int/string'},
year : {a : 'standard', b : '1'},
month : {a : 'standard', b : '1'},
day : {a : 'standard', b : '1'},
last_day : 'standard',
yoil : 'standard'

today : Y/N (오늘날짜 : 옵션이 없을때 Y)
diff : a => id, b => id, c => int/string (a,b : 필수값, default : int)
year : a => id, b => 1/-1 (a : 있으면 a값 없으면 올해년)
month : a => id, b => 1/-1 (a : 있으면 a값 없으면 올해월)
day : a => id, b => 1/-1 (a : 있으면 a값 없으면 올해일)
last_day : Y/N/ID (Y : 금일의 마지막일, ID : id값의 마지막일)
yoil : Y/N/ID (Y : 금일의 요일, ID : id값의 요일)
*/


function jDate($Obj, $OPTION){
	if(!$Obj)		return;

	$OPTION = jDate_Option_Check($OPTION);
	setTimeout(function(){}, 400);
	jDate_Proc($Obj, $OPTION);
}

//옵션체크
function jDate_Option_Check($OPTION){
	$OPTION = ($OPTION) ? $OPTION : {};

	$OPTION.diff = ( ($OPTION.diff == undefined) || ($OPTION.diff == "N") ) ? false : $OPTION.diff;
	$OPTION.year = ( ($OPTION.year == undefined) || ($OPTION.year == "N") ) ? false : $OPTION.year;
	$OPTION.month = ( ($OPTION.month == undefined) || ($OPTION.month == "N") ) ? false : $OPTION.month;
	$OPTION.day = ( ($OPTION.day == undefined) || ($OPTION.day == "N") ) ? false : $OPTION.day;
	$OPTION.last_day = ( ($OPTION.last_day == undefined) || ($OPTION.last_day == "N") ) ? false : $OPTION.last_day;
	$OPTION.yoil = ( ($OPTION.yoil == undefined) || ($OPTION.yoil == "N") ) ? false : $OPTION.yoil;
	$OPTION.today = ( ($OPTION.today == undefined) || ($OPTION.today == "N") ) ? false : $OPTION.today;

	if( !$OPTION.diff && !$OPTION.year && !$OPTION.month && !$OPTION.day && !$OPTION.last_day && !$OPTION.today  && !$OPTION.yoil ){
		$OPTION.today = true;
	}else{
		$OPTION.today = ($OPTION.today == "Y") ? true : false;
	}

	return $OPTION;
}

//실행
function jDate_Proc($Obj, $OPTION){
	if( $OPTION.today )			jDate_Insert( $Obj, jDate_Today() );
	if( $OPTION.year )			jDate_Insert( $Obj, jDate_Year($OPTION) );
	if( $OPTION.month )			jDate_Insert( $Obj, jDate_Month($OPTION) );
	if( $OPTION.day )			jDate_Insert( $Obj, jDate_Day($OPTION) );
	if( $OPTION.last_day )		jDate_Insert( $Obj, jDate_LastDay($OPTION) );
	if( $OPTION.diff )			jDate_Insert( $Obj, jDate_Diff($OPTION) );
	if( $OPTION.yoil )			jDate_Insert( $Obj, jDate_Yoil($OPTION) );
}

//오늘날짜
function jDate_Today(){
	var $dt = new Date();

	return $dt.getFullYear() + "-" + ($dt.getMonth() + 1) + "-" + $dt.getDate();
}

//년
function jDate_Year($OPTION){
	var $Date = ($OPTION.year.a == undefined) ? jDate_Today() : jDate_Value_Check($OPTION.year.a),
		$Diff = ($OPTION.year.b == undefined) ? 0 : $OPTION.year.b,
		$Data = {year : $Diff};

	return jDate_SetDate($Date, $Data);
}

//월
function jDate_Month($OPTION){
	var $Date = ($OPTION.month.a == undefined) ? jDate_Today() : jDate_Value_Check($OPTION.month.a),
		$Diff = ($OPTION.month.b == undefined) ? 0 : $OPTION.month.b,
		$Data = {month : $Diff};

	return jDate_SetDate($Date, $Data);
}

//일
function jDate_Day($OPTION){
	var $Date = ($OPTION.day.a == undefined) ? jDate_Today() : jDate_Value_Check($OPTION.day.a),
		$Diff = ($OPTION.day.b == undefined) ? 0 : $OPTION.day.b,
		$Data = {day : $Diff};

	return jDate_SetDate($Date, $Data);
}

//월의 마지막 날짜
function jDate_LastDay($OPTION){
	var $Date = ( ($OPTION.last_day == undefined) || ($OPTION.last_day == "Y") ) ? jDate_Today() : jDate_Value_Check($OPTION.last_day),
		$O = jDate_Array($Date);

	return new Date($O['Y'], $O['M'], 0).getDate();
}

//두날짜의 차이
function jDate_Diff($OPTION){
	var $Date1 = ($OPTION.diff.a == undefined) ? "" : jDate_Value_Check($OPTION.diff.a),
		$Date2 = ($OPTION.diff.b == undefined) ? "" : jDate_Value_Check($OPTION.diff.b),
		$Type = ($OPTION.diff.c == undefined) ? "int" : $OPTION.diff.c;

	if($Date1 && $Date2){
		var $O1 = jDate_Array($Date1),
			$O2 = jDate_Array($Date2),
			$T1 = new Date(parseInt($O1['Y']), parseInt($O1['M']) - 1, parseInt($O1['D'])),
			$T2 = new Date(parseInt($O2['Y']), parseInt($O2['M']) - 1, parseInt($O2['D'])),
			$D = $T2.getTime() - $T1.getTime(),
			$PD = Math.floor($D / (1000 * 60 * 60 * 24));

		if($Type == "int")	return $PD;
		else				return jDate_Diff_String($PD);
	}else{
		return "";
	}
}

//두날짜의 차이 한글(30일기준)
function jDate_Diff_String($Date){
	var $Y = $M = $D = $R = "";
	$Date = parseInt($Date);

	if($Date < 30){
		$R = $Date + "일";
	}else if($Date < 365){
		$M = Math.floor($Date / 30);
		$D = $Date- ($M * 30);
		$R = $M + "개월 " + $D + "일";
	}else{
		$Y = Math.floor($Date / 365);
		$M = Math.floor( ($Date - ($Y * 365)) / 30 );
		$D = $Date - ($Y * 365) - ($M * 30);
		$R = $Y + "년 " + $M + "개월 " + $D + "일";
	}

	return $R;
}

//요일
function jDate_Yoil($OPTION){
	var $Date = ( ($OPTION.yoil == undefined) || ($OPTION.yoil == "Y") ) ? jDate_Today() : jDate_Value_Check($OPTION.yoil),
		$O = jDate_Array($Date),
		$Week = new Array("일", "월", "화", "수", "목", "금", "토"),
		$Day = ( new Date($O['Y'], $O['M'] - 1, $O['D']) ).getDay();

	return $Week[$Day];
}

//날짜세팅
function jDate_SetDate($Date, $Diff){
	var $dt = new Date(),
		$O = jDate_Array($Date);
		$Y = ($Diff.year == undefined) ? 0 : parseInt($Diff.year),
		$M = ($Diff.month == undefined) ? 0 : parseInt($Diff.month),
		$D = ($Diff.day == undefined) ? 0 : parseInt($Diff.day);

	$dt.setFullYear($O['Y'] + $Y, $O['M'] - 1 + $M, $O['D'] + $D);

	var y = $dt.getFullYear(),
		m = $dt.getMonth() + 1,
		d = $dt.getDate();

	return y + "-" + jDate_addZero(m) + "-" + jDate_addZero(d);
}

//날짜를 배열로
function jDate_Array($Date){
	var $Array = new Array(),
		$Date_Array = $Date.split("-");

	$Array['Y'] = Number($Date_Array[0]);
	$Array['M'] = Number($Date_Array[1]);
	$Array['D'] = Number($Date_Array[2]);

	return $Array;
}

//두자리로 만들기
function jDate_addZero($value){
	$value = parseInt($value);
	$value = $value.toString();

	return ($value < 10) ? "0" + $value : $value;
}

//비교대상 값 확인
function jDate_Value_Check($Obj){
	var $type = jDate_Type($Obj);

	if($type == "text")		return $("#" + $Obj).val();
	else					return $("#" + $Obj).text();
}

//타입확인
function jDate_Type($Obj){
	return (document.getElementById($Obj).type == undefined) ? "div" : "text";
}

//값 입력
function jDate_Insert($Obj, $value){
	var $type = jDate_Type($Obj);

	if($type == "text")		$("#" + $Obj).val($value);
	else					$("#" + $Obj).html($value);
}