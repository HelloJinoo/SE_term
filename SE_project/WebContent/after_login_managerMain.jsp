<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="function.js"></script>
</head>
<body>

			<form action="show_member.jsp" method ="post">
				<input type="submit" value="회원조회" >
			</form>
			<form action="regist_member.jsp" method ="post">
				<input type="submit" value="회원등록" >
			</form>

			<form action="modify_member.jsp" method ="post">
				<input type="submit" value="회원수정" >
			</form>
			
			<form action="manage_scholarship.jsp" method ="post">
				<input type="submit" value="장학관리" >
			</form>
			
			
			<input type="button" value ="로그아웃" onclick="logout()">
			
			
</body>
</html>