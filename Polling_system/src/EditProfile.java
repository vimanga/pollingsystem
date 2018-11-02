

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Voters;
/**
 * Servlet implementation class EditProfile
 */
@WebServlet("/EditProfile")
public class EditProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditProfile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Voters voter = new Voters();
		
		voter.setfirstname(request.getParameter("firstname"));
		voter.setlastname(request.getParameter("lastname"));
		voter.setemail(request.getParameter("email"));
		voter.setnic(request.getParameter("nic"));
		voter.setpassword(request.getParameter("password"));
	
		try {
			
		DbManager db = new DbManager();
		Connection conn = null;
		conn = db.getConnection();
		
		PreparedStatement preparedStatement = null;
		
		String query = "update voters set FirstName=?,LastName=?,email=?,NIC=?,password=? where NIC=?";
		
		preparedStatement = conn.prepareStatement(query);
		
		preparedStatement.setString(1, voter.getfirstname());
		preparedStatement.setString(2, voter.getlastname());
		preparedStatement.setString(3, voter.getemail());
		preparedStatement.setString(4, voter.getnic());
		preparedStatement.setString(5, voter.getpassword());
		preparedStatement.setString(6, voter.getnic());
		
		preparedStatement.executeUpdate();
		
		response.sendRedirect("Login.jsp");
		
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
