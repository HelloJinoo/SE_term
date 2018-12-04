<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>교수 페이지</title>
<link rel="stylesheet" href="Main.css?after">
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
				<li class="active"><a href="after_login_professorMain.jsp">Home</a></li>
				<li><a href="regist_subject.jsp">강의등록</a></li>
				<li><a href="show_mylecture.jsp">성적부여</a></li>
				<li><a onclick="logout()" style="cursor:pointer">로그아웃</a></li>
			  </ul>
            </div>
         
        </div>
    </nav>
    
    <div class = "show_box2">
		<h2>강의등록</h2>
		<form action="regist_subject2.jsp">
		<table class= "myinformation">
			<tr>
				<td>
					강의명 
				</td>
				 <td>
					 <input type="text" name="sub_name" required style="width:250px">
				 </td>
			<tr>
				<td>
					교수명 
				</td> 
				<td>
				<input type="text" name="pro_name" value=<%=session.getAttribute("id")%> disabled="true" style="width:250px"> 
				</td>
			</tr>
			<tr>
				<td>
					학년 
				</td>
				 <td>
					<input type="number" name="grade" required style="width:250px"> 
				 </td>
			</tr>
			<tr>
				<td>
					인원 
				</td>
				 <td>
					<input type="number" name="personnel" required style="width:250px">
				 </td>
			</tr>
			<tr>
				<td>
					시간 
				</td>
				 <td>
					 <input type="text" name="time" required style="width:250px">
				 </td>
			</tr>
			<tr>
				<td>
					요일 
				</td>
				 <td>
					<input type="text" name="day" required style="width:250px"> 
				 </td>
			</tr>
			<tr>
				<td>
					장소 
				</td>
				 <td>
					<input type="text" name="place" required style="width:250px">
				 </td>
			</tr>
			
			
	
			</table>
			<input type="submit" value="강의등록" > 
		</form>
		
	</div>
	
	
	
</body>
</html>