<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <link href="bootstrap.min.css" rel="stylesheet" type="text/css">
   <link href="style.css" rel="stylesheet">
<link rel="stylesheet" href="Main.css">
<title>Main</title>
</head>
<body>
<!--  
	<div id="main_view">
		<h2>통합정보시스템</h2>

		<form  action="login.jsp" method="post">
		   아이디 : <input type="text" name ="id" >
		  </br></br>
		  비밀번호 : <input type="password" name="pwd" >
		  <br>
		  <input type="submit" value="로그인">
		</form> 
	</div>
	col-lg-6
	-->
	
	<div class="main_box">
				<div class="form-wrapper">
						<div class="panel panel-skin">
							<div class="panel-heading">
								<h3 class="panel-title"><span >로그인화면</span>  </h3>
							</div>
								<div class="panel-body">
									
										<form action="login.jsp" role="form" class="lead">
											<div class="row">
												<div class="row_box">
													<div class="form-group">
													<label>아이디</label>
													<input type="text" name="id" class="form-control input-md">
												</div>
											</div>
											
										</div>

										<div class="row">
											<div class="row_box">
												<div class="form-group">
													<label>비밀번호</label>
													<input type="password" name="pwd" class="form-control input-md">
												</div>
											</div>

										<input type="submit" value="로그인" class="btn btn-skin btn-block btn-lg">
									</form>
							</div>				
						
						</div>
						</div>
					
</body>
</html>