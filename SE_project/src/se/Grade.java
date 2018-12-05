package se;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class Grade {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql ="";
	
	public Grade(){
		
	}
	
	/*교수 - 성적부여*/
	public boolean give_grade(String value[], String subject_number) throws Exception{
		conn = getConnection();
		int flag = 0;
		for(int i=0; i< value.length; i++){
			String sp[] = value[i].split(",");
			String id = sp[0];
			String grade = sp[1];
			int score=0;
			sql = "update course set grade = ? where subject_number = ? && id = ?";
			pstmt = (PreparedStatement) conn.prepareStatement(sql);
			pstmt.setString(1, grade);
			pstmt.setString(2, subject_number);
			pstmt.setString(3, id);
			int result = pstmt.executeUpdate();	
			sql = "update course set score = ? where subject_number = ? && id = ?";
			pstmt = (PreparedStatement) conn.prepareStatement(sql);
			if( grade.equals("A")){
				score = 4;
			}
			else if(grade.equals("B") ){
				score = 3;
			}
			else if(grade.equals("C")){
				score = 2;
			}
			else if(grade.equals("D")){
				score = 1;
			}
			pstmt.setInt(1, score);
			pstmt.setString(2, subject_number);
			pstmt.setString(3, id);
			result = pstmt.executeUpdate();
			if(result == 1){
				flag =1;
			}
		}
		
		if(flag ==1){
			return true;
		}
		else{
			return false;
		}

	}

	/*학생 - 성적확인 */
	public ResultSet check_grade(String id) throws Exception{
		conn = getConnection();
		sql = "select s.subject_number, s.subject_name , s.grade , a.grade , a.score from subject s , course a where a.id = ? && a.subject_number = s.subject_number;";
		pstmt = (PreparedStatement) conn.prepareStatement(sql);
		pstmt.setString(1, id);
	
		rs = pstmt.executeQuery();
		if( rs.next()){
			rs.previous();
			return rs;
		}
		else{
			return rs;
		}

	}

	public Connection getConnection() throws Exception{
		String jdbcUrl = "jdbc:mysql://localhost:3306/se_term?useUnicode=true&characterEncoding=utf8";
		Class.forName("com.mysql.jdbc.Driver");
		conn = (Connection) DriverManager.getConnection(jdbcUrl, "root", "asdasd1");
		return conn;
	}
}
