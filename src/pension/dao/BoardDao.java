package pension.dao;


import java.sql.*;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import pension.dto.BoardDto;

public class BoardDao {
	Connection conn;
	public BoardDao() throws Exception	{
		Class.forName("com.mysql.jdbc.Driver");
	 	String db="jdbc:mysql://localhost:3306/pension";
	 	conn=DriverManager.getConnection(db,"root","1234");
	}
	public ArrayList<BoardDto> blist(HttpServletRequest request) throws Exception	{
		String sql = "select * from board";
		
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		ArrayList<BoardDto> blist = new ArrayList<BoardDto>();
		while(rs.next())	{
			BoardDto bdto = new BoardDto();
			bdto.setUserid(rs.getString("userid"));
			bdto.setId(rs.getInt("id"));
			bdto.setTitle(rs.getString("title"));
			bdto.setContent(rs.getString("content"));
			bdto.setReadnum(rs.getInt("readnum"));
			bdto.setWriteday(rs.getString("writeday"));
			
			blist.add(bdto);
		}
		return blist;
	}
	public void bwrite_ok (HttpServletRequest request,HttpSession session) throws Exception	{
		request.setCharacterEncoding("utf-8");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String userid = (String) session.getAttribute("userid");
		
		String sql = "insert into board(title,content,userid,writeday) values(?,?,?,now())";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, title);
		pstmt.setString(2, content);
		pstmt.setString(3, userid);
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();	
	}
	public void readnum(HttpServletRequest request) throws Exception	{
		String id = request.getParameter("id");
		String sql = "update board set readnum = readnum+1 where id="+id;
		
		Statement stmt = conn.createStatement();
		stmt.executeUpdate(sql);
		
		stmt.close();
		conn.close();
	}
	public BoardDto update(HttpServletRequest request) throws Exception	{
		String id = request.getParameter("id");
		
		String sql = "select * from board where id="+id;
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		rs.next();
		BoardDto bdto = new BoardDto();
		bdto.setUserid(rs.getString("userid"));
		bdto.setContent(rs.getString("content"));
		bdto.setWriteday(rs.getString("writeday"));
		bdto.setId(rs.getInt("id"));
		bdto.setTitle(rs.getString("title"));
		bdto.setReadnum(rs.getInt("readnum"));
		
		return bdto;
	}
	public void update_ok(HttpServletRequest request) throws Exception	{
		request.setCharacterEncoding("utf-8");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String id = request.getParameter("id");
		
		String sql = "update board set title=?, content=? where id=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, title);
		pstmt.setString(2, content);
		pstmt.setString(3, id);
		
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
	}
	public void delete(HttpServletRequest request) throws Exception	{
		String id = request.getParameter("id");
		
		String sql = "delete from board where id="+id;
		Statement stmt = conn.createStatement();
		stmt.executeUpdate(sql);
		
		stmt.close();
		conn.close();
	}
}
