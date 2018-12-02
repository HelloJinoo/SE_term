<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@page import="se.Subject" %>
 <%@page import="java.sql.ResultSet" %>  
</head>
<body>

		<%
			Subject s = new Subject();
			String id = (String)session.getAttribute("id");
			ResultSet rs = s.view_timetable(id);
			if(rs.next()){

				rs.previous();
		%>
		
		<h2>시간표 확인</h2>
		<table class="myinformation" >
			<tr>
				<th>
					선택
				</th>
				<th>
					과목번호
				</th>
				<th>
					과목명
				</th>
				<th>
					교수명
				</th>
				<th>
					시간
				</th>
				<th>
					날짜
				</th>
				<th>
					학년
				</th>
				<th>
					장소
				</th>
			</tr>
			<%
				while(rs.next()){
			%>
			<tr>
				<td>
					<input type ="button" value ="수강취소" onClick="location.href='cancel_subject.jsp?subject_num=<%=rs.getString("subject_number") %>'">
				</td>
				<td>
					<%=rs.getString("subject_number")%> 
				</td>
				<td>
					 <%=rs.getString("subject_name")%> 
				</td>
				<td>
					<%=rs.getString("professor_name")%> 
				</td>
				<td>
					<%=rs.getString("time")%> 
				</td>
				<td>
					<%=rs.getString("day")%> 
				</td>
				<td>
					<%=rs.getString("grade")%> 
				</td>
				<td>
					<%=rs.getString("place")%> 
				</td>
			</tr>
		<%}
			%>
			
		</table>
		<%}
			else{
			%>	
				<script>
					alert("신청한 강의가 없습니다.");
					location.href="after_login_studentMain.jsp";
				</script>
			<% 
			} %>
</body>
</html>