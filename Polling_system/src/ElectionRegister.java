

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ElectionRegister
 */
@WebServlet("/ElectionRegister")
public class ElectionRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ElectionRegister() {
        super();
        // TODO Auto-generated constructor stub
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String eid = request.getParameter("E_Id");
		String ename = request.getParameter("E_name");
		String edate = request.getParameter("E_date");
		
		

		try {

			DbManager db = new DbManager();
			Connection conn = null;
			conn = db.getConnection();

			
			Statement st = conn.createStatement();

			//ResultSet rs = st.executeQuery("select email from voter2 where email='" + email + "'");

			

				PreparedStatement preparedStatement = null;
				
				
				String query = "insert into election (eid,ename,edate) values(?,?,?)";
				
				preparedStatement = conn.prepareStatement(query);
				
				preparedStatement.setString(1, eid);
				preparedStatement.setString(2, ename);
				preparedStatement.setString(3, edate);
				
				
				preparedStatement.executeUpdate();
				

				//Statement stinsert = conn.createStatement();

				//stinsert.executeUpdate(insert);

				System.out.print("Register Successfull");
				response.sendRedirect("ElectionSuccess.jsp");
			//}

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		doGet(request, response);
	}

}
