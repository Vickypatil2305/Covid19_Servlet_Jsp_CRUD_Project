package in.covid19.project.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import in.covid19.project.dto.AllDTO;

public class MemberAddPatientModel {

	public static Connection con=null;
	public static PreparedStatement ps=null;
	public static int row=0;
	public static ResultSet rs=null;
	public static boolean flag=false;

	public static long autoIncrement(){
		
		long id=0;
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/COVID19","root","root");
			ps=con.prepareStatement("select MAX(patientId) from ADDPATIENT");
			rs=ps.executeQuery();
				if(rs.next()){
					id=rs.getLong(1);	
				}
			
			con.close();
		}catch(SQLException | ClassNotFoundException se){
				se.printStackTrace();
		}
		
	id++;		
	System.out.println("id ="+ id);
	return id;	
	}
	
	
	public static boolean addPatient(AllDTO dto){
		
		//long pId=autoIncrement();
		/*String fName=dto.getFirstName();
		String lName=dto.getLastName();
		String ad=dto.getAddress();
		long mNO=dto.getMobileNo();
		String sample=dto.getSample();
		long sampleId=dto.getSampleId();	
					OR	
		ps.setLong(1, autoIncrement());
		ps.setString(2,dto.getFirstName());
		ps.setString(3, dto.getLastName());
		ps.setString(4, dto.getAddress());
		ps.setLong(5,dto.getMobileNo());
		ps.setString(6, dto.getSample());
		ps.setLong(7, dto.getSampleId());

		
				*/
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/COVID19","root","root");
			ps=con.prepareStatement("insert into addpatient values(?,?,?,?,?,?,?)");				
										//OR
		//	ps=con.prepareStatement("insert into addpatient(pId,fName,lName,ad,mNo,sample,sampleId) values(?,?,?,?,?,?,?)");				

					ps.setLong(1, autoIncrement());
					ps.setString(2,dto.getFirstName());
					ps.setString(3, dto.getLastName());
					ps.setString(4, dto.getAddress());
					ps.setLong(5,dto.getMobileNo());
					ps.setString(6, dto.getSample());
					ps.setLong(7, dto.getSampleId());
			//		ps.setDate(8,dto.getTimestamp())
			row=ps.executeUpdate();
					if(row>0){
						flag=true;
					}
									
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{}
		
	return flag;
	}	
}