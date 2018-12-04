<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.ResultSet" %>  
     <%@ page import ="se.Scholarship" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link href="bootstrap.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="Main.css">
<title>Insert title here</title>
</head>
<body>
	<%
		Scholarship s = new Scholarship();
		ResultSet rs = s.manage_scholarship();
		if(rs.next()){
			rs.previous();
		%>
		
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
		<form action ="manage_scholarship2.jsp">
		<table class="myinformation" >
				<tr>
					<th>
						학번
					</th>
					<th>
						전체 성적
					</th>
					<th>
						선택
					</th>
				</tr>
		<% 
		while(rs.next()){
				float sum = Integer.parseInt( rs.getString("sum(score)"));
				float total_subject = Integer.parseInt(rs.getString("count(*)"));
				String total_grade = String.format("%.2f", sum / total_subject) ;
				
	%>
			<tr>
				<td>
					<%=rs.getString("id")%>
				</td>
				<td>
					<%=total_grade%>
				</td>
				<td>
							<select name ="kind">
								<option value="<%=rs.getString("id")%>,total">전액장학금</option>
								<option value="<%=rs.getString("id")%>,portion">부분장학금</option>
								<option value="<%=rs.getString("id")%>,no">장학금x</option>
							</select>
				</td>
				
				
			</tr>
		<%} %>
			</table>
			<input type="submit" value="장학생 등록">
			</form>
			</div>
			<%}
				else{
			%>
				<script>
					alert("등록된 성적이 없습니다.");
					location.href="after_login_managerMain.jsp";
				</script>
			<% }
			%>
	
</body>
</html>