package net.hobby.sql;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;

import net.hobby.conn.DBConn;
import net.hobby.domain.MemberVO;

public class MemberSQL {
	
	private Connection conn; 
	private Statement stmt; 
	private PreparedStatement pstmt;
	private ResultSet result;  
	private String sql; 
	private	String sqlTotal;
	private String subsql;
	
	
	public MemberSQL( ){ 
		try {
			conn = DBConn.getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public int memberInsert(MemberVO member){ 	  
		int success=0;
		try{
			sql="insert into member values(?, ?, ?, ?, ?, ?, ?, now())" ;
			pstmt = conn.prepareStatement(sql); 
			pstmt.setString( 1, member.getMember_id());
			pstmt.setString( 2, member.getPwd());
			pstmt.setString( 3, member.getName());
			pstmt.setString( 4, member.getGender());
			pstmt.setString( 5, member.getZipcode());
			pstmt.setString( 6, member.getAddr1());
			pstmt.setString( 7, member.getAddr2());
			
			success =  pstmt.executeUpdate();
			
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("ERROR SQL : " + sql); 
		}
		
		return success;
	}
	
	public int memberSelect(String member_id, String pwd){ 	  
		int success=0;
		try{
			sql="select pwd from member where member_id = ?" ;
			pstmt = conn.prepareStatement(sql);
			pstmt.setString( 1, member_id);
			
			result=pstmt.executeQuery();
			
			if (result.next()) {
				if (result.getString(1).equals(pwd)) {
					success = 1;
				} else {
					System.out.println("비밀번호가 일치하지 않습니다.");
					System.out.println(result.getString(1));
					System.out.println("pwd : "+pwd);
					success = 0;
				}
			}
			
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("ERROR SQL : " + sql); 
		}
		
		return success;
	}
	
	
}








