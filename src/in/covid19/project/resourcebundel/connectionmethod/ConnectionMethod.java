package in.covid19.project.resourcebundel.connectionmethod;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ResourceBundle;

public class ConnectionMethod {

	private static Connection con;
	
	public static Connection connectivity(){
		
		
			ResourceBundle rb=ResourceBundle.getBundle("in.covid19.project.resourcebundel.connectionmethod.db");
				String driver=rb.getString("driver");
				String url=rb.getString("dbUrl");				
				String userName=rb.getString("userName");
				String password=rb.getString("password");
		
			try {
				
				if(con==null){				//con will have value if we call driver many times so it won't create connection over and over that's why if is here.
					Class.forName(driver);
				//	System.out.println("driver loded");
					con=DriverManager.getConnection(url,userName,password);//don't need to put quots coz these are already string
				//	System.out.println("connection bn gya hai");
				}
				
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
	return con;
	}	
	/*public static void main(String[] args) {
	     connectivity();
	}*/
}