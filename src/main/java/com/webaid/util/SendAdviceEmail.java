package com.webaid.util;

public class SendAdviceEmail {
	public void sendAdviceResultEmail(String name, String phone, String content){
		/*String [] receiverArr = {"isseo21@naver.com", "nugunaga02@naver.com", "hj_son1127@naver.com"};*/
		String [] receiverArr = {"bjj7425@naver.com", "bjj7425@naver.com", "bjj7425@naver.com"};
		String mailTitle = "타이거치과의원 웹사이트 상담요청이 등록되었습니다.";
		String mailContent = "<meta http-equiv='Content-Type' content='text/html; charset=utf-8'>"
							+"<div style='width:750px; margin:0px auto;'><div>"
							+"<div style='width:700px; margin:0px auto; font-size:25px; padding:40px 0 30px 0; text-align:center; border-bottom:solid 2px #a6a6a6; margin-bottom:30px;'>타이거치과의원 웹사이트 <span style='color:#483865;'>상담요청이 등록되었습니다.</span></div>"
							+"<div style='text-align:center; font-size:14px; margin-bottom:35px;'>◆신청자 정보</div>"
							+"<div style='width:416px;margin:0px auto;background-color:#f4f4f4;box-sizing:border-box;padding:15px 84px; margin-bottom:30px'>"
							+"<table cellspacing='0' border='0' cellpadding='2'>"
							+"<colgroup><col width='109px'><col width='*'></colgroup>"
							+"<tr><td>회원명</td><td><span style='font-weight:bold; color:#575e6d;'>"+name+"</span></td></tr>"
							+"<tr><td>연락처</td><td><span style='font-weight:bold; color:#575e6d;'>"+phone+"</span></td></tr></table></div>"
							+"<div style='text-align:center; font-size:14px; margin-bottom:35px;'>◆상담 정보</div>"
							+"<div style='width:416px;margin:0px auto;background-color:#f4f4f4;box-sizing:border-box;padding:15px 84px; margin-bottom:30px'><table cellspacing='0' border='0' cellpadding='2'>"
							+"<colgroup><col width='109px'><col width='*'></colgroup>"
							+"<tr><td>상담분야</td><td><span style='font-weight:bold; color:#575e6d;'></span></td></tr>"
							+"<tr><td>내용</td><td><span style='font-weight:bold; color:#575e6d;'>"+content+"</span></td></tr></table></div>"
							+"<div style='text-align:center;margin-bottom:40px'><a href='http://www.tigerdental.co.kr' style='display: block; margin: 0 auto; width: 150px; padding: 10px 0; text-align: center; background: #00b0ff; color: #fff; text-decoration: none;'>"
							+"홈페이지 바로가기</a></div></div>"
							+"<div style='width:100%;height:200px;border-top:solid 1px #d5d8de; box-sizing:border-box; padding:18px 0 0 0;font-size:12px;background-image:url(http://www.tigerdental.co.kr/resources/images/mail/img_footer_logo.jpg); background-repeat:no-repeat; background-position:0 0'>"
							+"<p style='color:#444;margin-bottom:10px; margin-top: 15px; margin-left: 175px; font-size: 13px;'>"
							+"본 메일은 발신 전용으로 회신하실 경우 답변 되지 않습니다.<br>문의사항이나 기타 이용안내는 고객센터 <span style='color: #00b0ff; font-weight: 800;text-decoration: underline;'>02-540-2080</span> 를 이용해주세요</p>"
							+"<p style='color:#777; margin-left: 175px;'>서울 강남구 도산대로 134 페이토빌딩 B1  |  대표자명 : 서인석<br>TEL : 02-540-2080  Copyright 2017 타이거치과의원 All rights reserved</p></div></div>";
		
		SendEmail se = new SendEmail();
		for(int i=0; i<3; i++){
			se.SendMail("", receiverArr[i], mailContent, mailTitle);
		}
		
	}
}
