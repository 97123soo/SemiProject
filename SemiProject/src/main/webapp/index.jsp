<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	 <jsp:forward page="/WEB-INF/views/common/menubar-test.jsp"/>


	<%-- 
 	<jsp:forward page="/WEB-INF/views/common/managerMenubar.jsp"/> 관리자 페이지-메뉴바
	<%@ include file="WEB-INF/views/common/menubar.jsp" %>  메뉴바(기본 틀, 로그아웃)
	<jsp:forward page="/WEB-INF/views/musicList/TOP100.jsp"/> top100
	 <jsp:forward page="/WEB-INF/views/musicList/newMusic.jsp"/> newMusic
	 	<jsp:forward page="/WEB-INF/views/manager/managerMember.jsp"/> 관리자 페이지-회원
 	<jsp:forward page="/WEB-INF/views/manager/managerMusic.jsp"/> 관리자 페이지-노래
	<jsp:foward page="/WEB-INF/views/video/video.jsp"/>
		<%@ include file="WEB-INF/views/common/modal.jsp" %> 

			 <jsp:forward page="/WEB-INF/views/common/menubar-test.jsp"/> 메뉴바(로그인)
			 
	 --%>
	 
</body>
</html>