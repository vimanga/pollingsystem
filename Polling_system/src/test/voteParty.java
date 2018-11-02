package test;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.Statement;

import java.sql.Connection;

@WebServlet("/voteParty")
public class voteParty extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
      
	Connection con = null;
	Statement stmt = null;
	
    public voteParty() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nic_num = request.getParameter("nic");
		String p_name  = request.getParameter("part_name");
		
		System.out.println("NIC : " + nic_num + "  " + "Part Name : " + p_name);
		
		DbManager db = new DbManager();
		Connection conn = null;

		String sql = "INSERT INTO votes VALUES('"+nic_num+"', '"+ p_name +"')";
		
		
		
		try {
			conn = db.getConnection();
			stmt = conn.createStatement();
			stmt.executeUpdate(sql);
			
			System.out.print("Vote Successfull");
			response.sendRedirect("VoteSuccess.jsp");
		} 
		catch (SQLException e) {
			System.out.println(e);
			response.sendRedirect("VoteUnsuccess.jsp");
		} 
		catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

}
