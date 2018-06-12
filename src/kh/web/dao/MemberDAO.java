package kh.web.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import kh.web.DTO.MemberDTO;

public class MemberDAO {
	private Connection getConnection() throws Exception {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String dbId = "kh";
		String dbPw = "kh";
		
		return DriverManager.getConnection(url, dbId, dbPw);
	}
	
	public int insertDate(String id, String name) throws Exception{
		Connection con = this.getConnection();
		String sql = "INSERT INTO IDNAME VALUES(?,?)";
		PreparedStatement pstat = con.prepareStatement(sql);
		pstat.setString(1, id);
		pstat.setString(2, name);
		
		int result = pstat.executeUpdate();
		
		con.commit();
		con.close();
		pstat.close();
		
		return result;
	}
	
	public List<MemberDTO> selectData(String id) throws Exception{
		Connection con = this.getConnection();
		String sql = "SELECT * FROM IDNAME WHERE ID =?";
		PreparedStatement pstat = con.prepareStatement(sql);
		ResultSet rs = pstat.executeQuery();
		
		List<MemberDTO> list = new ArrayList<>();
		
		while(rs.next()) {
			
			MemberDTO dto = new MemberDTO();
			
			pstat.setString(1, rs.getString("id"));
			pstat.setString(2,  rs.getString("name"));
			
			list.add(dto);
		}
		con.commit();
		con.close();
		rs.close();
		
		return list;
	}
	
}
