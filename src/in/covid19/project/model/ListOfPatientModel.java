package in.covid19.project.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import in.covid19.project.dto.AllDTO;

public class ListOfPatientModel {
		
	public static ArrayList listOfPatient(){
		System.out.println("----------------listmethod started------------------------");
		
		ArrayList al=new ArrayList();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Covid19","root","root");
			PreparedStatement ps=con.prepareStatement("select * from ADDPATIENT ");	
				
			ResultSet rs=ps.executeQuery();
				while(rs.next()){
					AllDTO dto=new AllDTO();	
							dto.setPatientId(rs.getLong(1));
							dto.setFirstName(rs.getString(2));
							dto.setLastName(rs.getString(3));
							dto.setSample(rs.getString(6));
						//	dto.setDateTime(rs.getTimestamp("date"));
				al.add(dto);
				
				}
			con.close();
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}			
		System.out.println("----------------listmethod ended------------------------");

	return al;
	}
}