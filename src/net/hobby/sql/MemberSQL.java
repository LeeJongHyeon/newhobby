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
	
	public int memberSelect(MemberVO member){ 	  
		int success=0;
		try{
			sql="select pwd from member where member_id = ?)" ;
			pstmt = conn.prepareStatement(sql);
			pstmt.setString( 1, member.getMember_id());

			
			success =  pstmt.executeUpdate();
			
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("ERROR SQL : " + sql); 
		}
		
		return success;
	}
	
	
}








