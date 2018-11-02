

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class updateElection
 */
@WebServlet("/updateElection")
public class updateElection extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Id = request.getParameter("idNo");
		String eName = request.getParameter("eName");
		String eDate = request.getParameter("eDate");
		
		System.out.println(Id);
		
		try {
			DbManager db = new DbManager();
			Connection conn = null;
			conn = db.getConnection();
			PreparedStatement preparedStatement = null;
			
			String query = "update election set eid=?,ename=?,edate=? where eid=?";
			
			preparedStatement = conn.prepareStatement(query);
			
			preparedStatement.setString(1,Id);
			preparedStatement.setString(2,eName);
			preparedStatement.setString(3,eDate);
			preparedStatement.setString(4,Id);
			
			
			preparedStatement.executeUpdate();
			
			response.sendRedirect("ElectionView.jsp");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		

		
		}
	}


