package in.covid19.project.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import in.covid19.project.dto.AllDTO;
import in.covid19.project.resourcebundel.connectionmethod.ConnectionMethod;

public class UpdateReportModel {

	public static boolean updateReport(AllDTO dto){
		System.out.println("------------modelmethod started------------------------");

		long pId=dto.getPatientId();
		String sample=dto.getSample();
		long sampleId=MemberAddPatientModel.autoIncrement();
		System.out.println(pId +"......................"+sample+",,,,,,,,,"+sampleId);

		Connection con=ConnectionMethod.connectivity();
		boolean flag=false;
		
		try {
			PreparedStatement ps=con.prepareStatement("update  ADDPATIENT set Sample=?,SampleId=? where PatientId=?");	//PatientId must me written same as written in tables
				ps.setString(1,sample);	
				ps.setLong(2, sampleId);				
				ps.setLong(3,pId);
				
			int rs=ps.executeUpdate();
			System.out.println("rs ="+rs);
			
				if(rs>0){System.out.println("rs");
					flag=true;
				}
			con.close();
			
		}  catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println("------------modelmethod ended------------------------");

	return flag;
	}
}
