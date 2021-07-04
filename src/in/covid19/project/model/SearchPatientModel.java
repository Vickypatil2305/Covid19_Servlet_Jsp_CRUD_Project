package in.covid19.project.model;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import in.covid19.project.dto.AllDTO;
import in.covid19.project.resourcebundel.connectionmethod.ConnectionMethod;

import java.sql.Connection;

public class SearchPatientModel {

	
	private static Connection con=ConnectionMethod.connectivity();
	
	public static AllDTO searchPatient(AllDTO dto){
		System.out.println("------------modelmethod started------------------------");

		long pId=dto.getPatientId();
		
			AllDTO dto1=new AllDTO();
		
		try {
			PreparedStatement ps=con.prepareStatement("select * from AddPATIENT WHERE patientId=?");
					ps.setLong(1,pId);
			ResultSet rs=ps.executeQuery();
				if(rs.next()){
						dto1.setPatientId(rs.getLong(1));
						dto1.setFirstName(rs.getString(2));
						dto1.setLastName(rs.getString(3));
						dto1.setAddress(rs.getString(4));
						dto1.setMobileNo(rs.getLong(5));
						dto1.setSample(rs.getString(6));
				}
			con.close();		
		} catch (SQLException e) {
			e.printStackTrace();
		}System.out.println("------------modelmethod ended------------------------");

	return dto1;
	}	
}