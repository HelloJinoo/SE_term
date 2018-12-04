<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				<li class="active"><a href="after_login_managerMain.jsp">Home</a></li>
				<li><a href="show_member.jsp">회원조회</a></li>
				<li><a href="regist_member.jsp">회원등록</a></li>
				<li><a href="modify_member.jsp">회원수정</a></li>
				<li><a href="manage_scholarship.jsp">장학관리</a></li>
				<li><a onclick="logout()" style="cursor:pointer">로그아웃</a></li>
			  </ul>
            </div>
         
        </div>
    </nav>
			
		<div class="show_box">
				<form action="regist_member2.jsp" method="post">
					<table class="myinformation">
						<tr>
							<td>
								ID
							</td>
							<td>
								<input type="text" name="id" required>
							</td>
						</tr>
						<tr>
							<td>
								비밀번호
							</td>
							<td>
								<input type="password" name="pwd" required>
							</td>
						</tr>
					  <tr>
						<td>
								주소
							</td>
							<td>
								<input type="text" name="addr" required>
							</td>
						</tr>
						<tr>
						<td>
								현황(재학:1 / 휴학:0)
							</td>
							<td>
								<input type="number" name="current" max="1" min="0" required>
							</td>
						</tr>
						<tr>
						<td>
								권한(학생:1 / 교수:2)
							</td>
							<td>
								<input type="number" name="authority" max="2" min="1" required>
							</td>
						</tr>
					</table>
						<input type="submit" value="회원등록">
				</form>
		</div>
</body>
</html>