

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Delete
 */
@WebServlet("/Delete")
public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Eid = request.getParameter("DidNo");
		DbManager db = new DbManager();
		Connection conn = null;
		System.out.println(Eid);
		
		try {
			
			conn = db.getConnection();
			String sql = "DELETE FROM election WHERE eid ='"+Eid+"'";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.executeUpdate();
			response.sendRedirect("ElectionView.jsp");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

}
}
