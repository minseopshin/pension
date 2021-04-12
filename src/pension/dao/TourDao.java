package pension.dao;

import java.sql.*;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import pension.dto.TourDto;

public class TourDao {
	Connection conn;
	public TourDao() throws Exception	{
		Class.forName("com.mysql.jdbc.Driver");
	 	String db="jdbc:mysql://localhost:3306/pension";
	 	conn=DriverManager.getConnection(db,"root","1234");
	}
	public ArrayList<TourDto> tlist() throws Exception	{
		String sql = "select * from tour order by id desc";
		
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		ArrayList<TourDto> tlist = new ArrayList<TourDto>();
		while(rs.next())	{
			TourDto tdto = new TourDto();
			tdto.setContent(rs.getString("content"));
			tdto.setFname(rs.getString("fname"));
			tdto.setId(rs.getInt("id"));
			tdto.setReadnum(rs.getInt("readnum"));
			tdto.setTitle(rs.getString("title"));
			tdto.setUserid(rs.getString("userid"));
			tdto.setWriteday(rs.getString("writeday"));
			tlist.add(tdto);
		}
		return tlist;
	}
	public void twrite_ok(HttpServletRequest request,HttpSession session) throws Exception {
		String path = request.getRealPath("/tour/img");
		int size = 1024*1024*10;
		MultipartRequest multi = new MultipartRequest(
				request, path, size, "utf-8", new DefaultFileRenamePolicy());
		String userid = (String) session.getAttribute("userid");
		String title = multi.getParameter("title");
		String content = multi.getParameter("content");
		String fname = multi.getFilesystemName("fname");
		
		String sql = "insert into tour(userid,title,content,fname,writeday) values(?,?,?,?,now())";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, userid);
		pstmt.setString(2, title);
		pstmt.setString(3, content);
		pstmt.setString(4, fname);
		
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
	}
}
