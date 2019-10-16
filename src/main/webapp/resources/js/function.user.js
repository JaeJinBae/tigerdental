$(function(){
    $("#m_emailcode").on("change", function(){
        var $text = $(this).children("option:selected").text(),
            $val = $(this).val();

        if(!$val)	$("#m_email2").val('');
        else		$("#m_email2").val($text);
    });

    $("#r_emailcode").on("change", function(){
        var $text = $(this).children("option:selected").text(),
            $val = $(this).val();

        if(!$val)	$("#r_email2").val('');
        else		$("#r_email2").val($text);
    });
});

//게시판 검색
function board_search_it(fm){
	if(TRIM(fm.input_key.value) == ""){
		alert("검색어를 입력하세요");
		$("input[name=input_key]").val('').focus();
		return false;
	}

	if(TRIM(non_script(fm.input_key.value)) == ""){
		alert("스크립트를 제거하신 후 입력하세요");
		$("input[name=input_key]").val('').focus();
        return false;
	}
}


//온라인상담 검색
function inquire_search_it(fm){
	if(TRIM(fm.input_key.value) == ""){
		alert("검색어를 입력하세요");
		$("input[name=input_key]").val('').focus();
		return false;
	}

	if(TRIM(non_script(fm.input_key.value)) == ""){
		alert("스크립트를 제거하신 후 입력하세요");
		$("input[name=input_key]").val('').focus();
        return false;
	}
}


//회원로그인
function member_login_it(fm){
	if( !$("#member").validate() ) return false;
}


//회원
function member_it($mode, $param){
	var fm = document.member,
		answer = "";

	if($mode == "reset"){
		fm.reset();
		answer = confirm("메인페이지로 이동하시겠습니까?");
		if(answer)	location.href = "/";

	}else if($mode == "insert"){
		if( !$("#agree").is(":checked") ){
			alert("개인정보취급방침 항목은 필수입니다");
			$("#agree").focus();
			return;
		}

		if( !$("#member").validate() ) return;

		if( $("input[name=m_id_check]").val() == 0 ){
			alert("아이디 중복확인 하셔야 합니다");
			return;
		}

		if( fm.m_email1.value && fm.m_email2.value ){
			if(!reg_exp("email", fm.m_email1.value + "@" + fm.m_email2.value)){
				alert("이메일 형식이 틀립니다");
				$("#m_email1").focus();
				return;
			}
		}

		if( $("#m_id").val() != $("input[name=m_id_hidden]").val() ){
			alert("아이디가 변조되었습니다\n아이디를 다시 입력하세요");
			$("input[name=m_id_check]").val('0');
			$("input[name=m_id_hidden]").val('');
			$("#m_id").val('').focus();
			return;
		}

		//if(fm.nicechk.value == "0"){
		//	alert("휴대전화 인증을 하셔야 합니다");
		//	return;
		//}

		try{
			$("input[name=m_sex]").attr("disabled", false);
			$("#birth_year, #birth_month, #birth_date, #phone1").attr("disabled", false);
		}catch(e){}


		fm.submit();

	}else if($mode == "find_id" || $mode == "find_pw" || $mode == "modify"){
		if( !$("#member").validate() ) return;

		if($mode == "modify"){
			//nice_clear('0');

			try{
				$("input[name=m_sex]").attr("disabled", false);
				$("#birth_year, #birth_month, #birth_date, #phone1").attr("disabled", false);
			}catch(e){}
		}
		fm.submit();

	}else if($mode == "check_pass"){
		if( !$("#member").validate() ) return;
		fm.submit();

	}else if($mode == "without"){
		var $checked = $("input[name=reason]").is(":checked"),
			$val = $("input[name=reason]:checked").val(),
			$content = $("#reason_etc").val();

		if(!$checked){
			alert("탈퇴사유를 선택하세요");
			$("input[name=reason]").eq(0).focus();
			return;
		}

		if( ($val == "etc") && (TRIM($content) == "") ){
			alert("탈퇴사유를 입력하세요");
			$("#reason_etc").val('').focus();
			return;
		}

		fm.submit();

	}else if($mode == "download"){
		instance_iframe("mem_download.php?seq="+$param);

	}else if($mode == "attach_del"){
		answer = confirm("삭제하시겠습니까?");

		if(answer){
			$.post("mem_proc.php", {mode : $mode, seq : $param}, function(data){
				if(data == 0){
					alert("오류가 발생하였습니다");
					return;
				}else{
					$("#file_" + $param).html("<input type='file' name='upload[]' style='width:450px' /><br>");
				}
			});
		}
	}

}