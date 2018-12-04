<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="Main.css">
<link href="bootstrap.min.css" rel="stylesheet" type="text/css">
<script src="function.js"></script>
</head>
<body>
<!--
			<h2><%=session.getAttribute("id")%> 로그인하셨습니다.</h2>
			<form action="regist_subject.jsp" method ="post">
				<input type="submit" value="강의등록" >
			</form>
			<form action="show_mylecture.jsp" method ="post">
				<input type="submit" value="성적부여" >
			</form>
				<input type="button" value ="로그아웃" onclick="logout()"> -->
				
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
				<li class="active"><a href="after_login_professorMain.jsp">Home</a></li>
				<li><a href="regist_subject.jsp">강의등록</a></li>
				<li><a href="show_mylecture.jsp">성적부여</a></li>
				<li><a onclick="logout()" style="cursor:pointer">로그아웃</a></li>
			  </ul>
            </div>
         
        </div>
    </nav>
</body>
</html>