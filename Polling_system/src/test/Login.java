package test;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

@WebServlet("/Login")
public class Login extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");

		DbManager db = new DbManager();
		Connection conn = null;

		try {
			conn = db.getConnection();

			Statement st = (Statement) conn.createStatement();

			ResultSet rs;
			rs = st.executeQuery("select * from voters where NIC='" + uname + "' and password='" + pass + "'");

			if (rs.next()) {

				HttpSession session = request.getSession();
				session.setAttribute("NIC", uname);
				session.setAttribute("firstname", rs.getString(1));
				session.setAttribute("lastname", rs.getString(2));
				session.setAttribute("email", rs.getString(3));
				session.setAttribute("password", rs.getString(5));

				response.sendRedirect("voting.jsp");
				
				
			} else if (rs.next() == false) {
				ResultSet rs2;
				rs2 = st.executeQuery("select * from admin where adminId='" + uname + "' and password='" + pass + "'");

				if (rs2.next()) {

					HttpSession session = request.getSession();
					session.setAttribute("username", uname);

					response.sendRedirect("admin.jsp");
					
				
			} 
			else {
			
			request.setAttribute("errorPassword", "Invalid Password or Username");
			RequestDispatcher rd1 = request.getRequestDispatcher("Login.jsp");
			rd1.forward(request, response);
			response.sendRedirect("Login.jsp");
			
			}
			}
			return;
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
