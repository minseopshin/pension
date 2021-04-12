package pension.dao;

import java.sql.*;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import pension.dto.GongjiDto;

public class GongjiDao {
	Connection conn;
	public GongjiDao() throws Exception	{
		Class.forName("com.mysql.jdbc.Driver");
	 	String db="jdbc:mysql://localhost:3306/pension";
	 	conn=DriverManager.getConnection(db,"root","1234");
	}
	public void gwrite_ok(HttpServletRequest request) throws Exception	{
		request.setCharacterEncoding("utf-8");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		String sql = "insert into gongji(title,content,writeday) values(?,?,now())";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, title);
		pstmt.setString(2, content);
		
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
	}
	public ArrayList<GongjiDto> glist() throws Exception	{
		String sql = "select * from gongji order by id desc";
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		ArrayList<GongjiDto> glist = new ArrayList<GongjiDto>();
		while(rs.next())	{
			GongjiDto gdto = new GongjiDto();
			gdto.setId(rs.getInt("id"));
			gdto.setContent(rs.getString("content"));
			gdto.setReadnum(rs.getInt("readnum"));
			gdto.setTitle(rs.getString("title"));
			gdto.setWriteday(rs.getString("writeday"));
			
			glist.add(gdto);
		}
		return glist;
	}
	public GongjiDto gcontent(HttpServletRequest request) throws Exception 	{
		String id = request.getParameter("id");
		String sql = "select * from gongji where id="+id;
		
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		rs.next();
		
		GongjiDto gdto = new GongjiDto();
		gdto.setId(rs.getInt("id"));
		gdto.setContent(rs.getString("content").replace("\r\n", "<br>"));
		// 문자열.replace("찾을문자","바꿀문자");
		gdto.setReadnum(rs.getInt("readnum"));
		gdto.setTitle(rs.getString("title"));
		gdto.setWriteday(rs.getString("writeday"));
		return gdto;
	}
	public void delete(HttpServletRequest request) throws Exception	{
		String id = request.getParameter("id");
		String sql= "delete from gongji where i="+id;
		
		Statement stmt = conn.createStatement();
		stmt.executeUpdate(sql);
	}
}
