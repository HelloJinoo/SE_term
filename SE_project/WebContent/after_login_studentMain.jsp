
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="Main.css">
<link href="bootstrap.min.css" rel="stylesheet" type="text/css">

<script src="function.js"></script>
<title>학생 페이지</title>
</head>
<body>
	<!--
		<form action="show_myinformation.jsp" method ="post">
			<input type="submit" value="개인정보확인" name="id" >
		</form>
		</br>
		<form action="show_allsubject.jsp" method ="post">
			<input type="submit" value="수강편람조회" >
		</form>
		<form action="apply_subject.jsp" method ="post">
			<input type="submit" value="수강신청" >
		</form>
		<form action="view_timetable.jsp" method ="post">
			<input type="submit" value="시간표확인" >
		</form>
		<form action="check_grade.jsp" method ="post">
			<input type="submit" value="성적조회" >
		</form>
		<form action="check_graduate.jsp" method ="post">
			<input type="submit" value="졸업자가진단" >
		</form>
		<form action="check_scholarship.jsp" method ="post">
			<input type="submit" value="장학여부확인" >
		</form>
			<input type="button" value ="로그아웃" onclick="logout()">
	-->
		
	<nav class="navbar navbar-custom navbar-fixed-top top-nav-collapse" role="navigation">
			<div class="login_container">
					<p class="bold text-right log" > <%=(String)session.getAttribute("id")%> 로그인하셨습니다.</p>
			</div>

        <div class="container navigation">
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    <i class="fa fa-bars"></i>
                </button>
       
            </div>

            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
			  <ul class="nav navbar-nav">
				<li class="active"><a href="after_login_studentMain.jsp">Home</a></li>
				<li><a href="show_myinformation.jsp?id=<%=session.getAttribute("id") %>">개인정보조회</a></li>
				<li><a href="show_allsubject.jsp">수강편람조회</a></li>
				<li><a href="apply_subject.jsp">수강신청</a></li>
				<li><a href="view_timetable.jsp">시간표확인</a></li>
				<li><a href="check_grade.jsp">성적조회</a></li>
				<li><a href="check_graduate.jsp">졸업자가진단</a></li>
				<li><a href="check_scholarship.jsp">장학여부확인</a></li>
				<li><a onclick="logout()" style="cursor:pointer">로그아웃</a></li>
			  </ul>
            </div>
         
        </div>
    </nav>
	
	
</body>
</html>