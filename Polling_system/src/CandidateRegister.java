

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
import model.Candidate;
/**
 * Servlet implementation class CandidateRegister
 */
@WebServlet("/CandidateRegister")
public class CandidateRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CandidateRegister() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Candidate candidate = new Candidate();
		
		candidate.setname(request.getParameter("name"));
		candidate.setnumber(request.getParameter("number"));
		candidate.setage(request.getParameter("Age"));
		candidate.setparty(request.getParameter("Party"));
		
		
		//System.out.println("data reciver");

		try {

			DbManager db = new DbManager();
			Connection conn = null;
			conn = db.getConnection();

			
			Statement st = conn.createStatement();


				PreparedStatement preparedStatement = null;
				
				
				String query = "insert into candidate(name,number,age,party) values(?,?,?,?)";
				
				preparedStatement = conn.prepareStatement(query);
				
				preparedStatement.setString(1, candidate.getname());
				preparedStatement.setString(2, candidate.getnumber());
				preparedStatement.setString(3, candidate.getage());
				preparedStatement.setString(4, candidate.getparty());
				
				
				preparedStatement.executeUpdate();
				
				response.sendRedirect("Login.jsp");
				

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		
	}

}
