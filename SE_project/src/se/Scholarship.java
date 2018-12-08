package se;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class Scholarship {
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql ="";
	String scholarship_type="";
	public Scholarship(){
		
	}
	
	/*관리자 - 전체 학생의 성적 보여주기*/
	public ResultSet[] manage_scholarship() throws Exception{
		ResultSet[] rs = new ResultSet[2];
		conn = getConnection();
		sql ="select id,sum(score)/count(*) , count(*) from course group by id order by sum(score)/count(*) desc";
		pstmt = (PreparedStatement) conn.prepareStatement(sql);
		rs[0] = pstmt.executeQuery();
		
		sql = "select count(c.id) from (select id,sum(score)/count(*) from course group by id order by sum(score)/count(*) desc) as c";
		pstmt = (PreparedStatement) conn.prepareStatement(sql);
		rs[1] = pstmt.executeQuery();
		
		if( rs[0].next() ){
			rs[0].previous();
			return rs;
		}
		else{
			return rs;
		}
		
	}
	
	
	/*관리자 - 전체 학생의 장학등록*/
	public boolean give_scholarship(String id , String kind) throws Exception{

		sql ="update scholarship set id=? , scholarship_kind =?";
		pstmt = (PreparedStatement) conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, kind);
		int result = pstmt.executeUpdate();
		if( result == 1 ){
			return true;
		}
		else{
			return false;
		}
		
	}
	
	/*학생 - 장학여부 확인*/
	public String check_scholarship(String id) throws Exception{
		conn = getConnection();
		sql ="select * from scholarship where id =?";
		pstmt = (PreparedStatement) conn.prepareStatement(sql);
		pstmt.setString(1, id);
		 rs = pstmt.executeQuery();
		if( rs.next()){
			 scholarship_type = rs.getString("scholarship_kind");
			return scholarship_type;
		}
		else{
			return scholarship_type;
		}
		
		
	}
	
	public Connection getConnection() throws Exception{
		String jdbcUrl = "jdbc:mysql://localhost:3306/se_term?useUnicode=true&characterEncoding=utf8";
		Class.forName("com.mysql.jdbc.Driver");
		conn = (Connection) DriverManager.getConnection(jdbcUrl, "root", "asdasd1");
		return conn;
	}
}
