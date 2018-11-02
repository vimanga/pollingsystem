

import java.io.IOException; 
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.regex.Pattern;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//import com.mysql.fabric.xmlrpc.base.Data;
//import com.mysql.jdbc.PreparedStatement;

@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String fname = request.getParameter("FirstName");
		String lname = request.getParameter("LastName");
		String email = request.getParameter("email");
		String nic = request.getParameter("ID");
		String Creatpass = request.getParameter("password"); 
		String Confirmpass = request.getParameter("Re-password");
		

		try {

			DbManager db = new DbManager();
			Connection conn = null;
			conn = db.getConnection();

			
			Statement st = conn.createStatement();

			//ResultSet rs = st.executeQuery("select email from voter2 where email='" + email + "'");

			/*if (Pattern.matches("[a-zA-Z]+", fname) == false) {
				request.setAttribute("errorFname", "Invalid Characters");
				RequestDispatcher rd1 = request.getRequestDispatcher("register.jsp");
				rd1.forward(request, response);
				response.sendRedirect("Register.jsp");
			}

			if (Pattern.matches("[a-zA-Z]+", lname) == false) {
				request.setAttribute("errorLname", "Invalid Characters in last name");
				RequestDispatcher rd2 = request.getRequestDispatcher("register.jsp");
				rd2.forward(request, response);
				response.sendRedirect("register.jsp");
			}

			if (Pattern.matches(
					"^[a-zA-Z0-9_+&*-]+(?:\\." + "[a-zA-Z0-9_+&*-]+)*@" + "(?:[a-zA-Z0-9-]+\\.)+[a-z" + "A-Z]{2,7}$",
					email) == false) {
				request.setAttribute("errorEmail", "Invalidemail");
				RequestDispatcher rd3 = request.getRequestDispatcher("register.jsp");
				rd3.forward(request, response);
				response.sendRedirect("register.jsp");
			}

			if (rs.next() == true) {

				request.setAttribute("errorEmail2", "email in use");
				RequestDispatcher rd4 = request.getRequestDispatcher("register.jsp");
				rd4.forward(request, response);
				response.sendRedirect("register.jsp");

			}

			if ((Pattern.matches("[a-zA-Z0-9-]+", nic) == false) || (nic.length() != 10)) {
				request.setAttribute("errorACCNO", "Invalid Account number");
				RequestDispatcher rd5 = request.getRequestDispatcher("register.jsp");
				rd5.forward(request, response);
				response.sendRedirect("register.jsp");
			}

			if (Creatpass.equals(Confirmpass) == false) {
				request.setAttribute("errorPass", "Password dont match");
				RequestDispatcher rd5 = request.getRequestDispatcher("register.jsp");
				rd5.forward(request, response);
				response.sendRedirect("register.jsp");
			}

			else {*/

				PreparedStatement preparedStatement = null;
				
				//String query = "insert into voter2(FirstName) values(?)";
				
				String query = "insert into voters(FirstName,LastName,email,NIC,password) values(?,?,?,?,?)";
				
				preparedStatement = conn.prepareStatement(query);
				
				preparedStatement.setString(1, fname);
				preparedStatement.setString(2, lname);
				preparedStatement.setString(3, email);
				preparedStatement.setString(4, nic);
				preparedStatement.setString(5, Creatpass);
				
				preparedStatement.executeUpdate();
				
				response.sendRedirect("Login.jsp");
				//Statement stinsert = conn.createStatement();

				//stinsert.executeUpdate(insert);

				
			//}

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
