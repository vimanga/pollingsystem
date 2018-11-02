

import java.sql.*;
import com.mysql.jdbc.Connection;


public class DbManager {
	
		
		public Connection  getConnection() throws SQLException, ClassNotFoundException{
			Class.forName("com.mysql.jdbc.Driver");  
			Connection conn=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/Polling_System","root","vimanga123");
			return conn;
		}
		
	
	
}