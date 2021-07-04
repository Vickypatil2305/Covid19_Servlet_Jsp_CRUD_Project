package in.covid19.project.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JOptionPane;

import in.covid19.project.dto.AllDTO;
import in.covid19.project.dto.LoginDTO;
import in.covid19.project.resourcebundel.connectionmethod.ConnectionMethod;

public class LoginModel {

	public static Connection con=null;//ConnectionMethod.connectivity();
	public static PreparedStatement ps=null;
	public static int row=0;
	public static ResultSet rs=null;
	public static boolean flag=false;
		
	public static int memberLogin(AllDTO dto){
	//System.out.println("---------memberlogin method Started-------------");
	
		long memberId=dto.getMemberId();
		String password=dto.getPassword();
				//System.out.println(memberId +"............"+password);
	
		int value=0;
		
	try{	Class.forName("com.mysql.jdbc.Driver")	;	
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/COVID19","root","root");
			
			ps=con.prepareStatement("select * from LOGINMEMBER where memberId=?");		//memberId must me written same as written in tables
						ps.setLong(1,memberId);			
			rs=ps.executeQuery();		     
					if(rs.next()){
							if(rs.getString(2).equalsIgnoreCase(password)){
								value=1;	//if password correct
							}else if(rs.getLong(1)==memberId){
								value=3;	//if wrong memberId
							}else {
								value=2;		//if wrong password
							}
					}				
	}catch (Exception e) {
			e.printStackTrace();
	}finally{
		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}	
	//System.out.println("---------memberlogin method ended-------------");
	return value;
	}	
////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////
	
	public static boolean labLogin(AllDTO dto){
	//	System.out.println("---------login method Started-------------");
		
		long labId=dto.getLabId();
		String password=dto.getPassword();
			System.out.println(labId +"............"+password);
		
		try{			
			Class.forName("com.mysql.jdbc.Driver")	;	
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/COVID19","root","root");
			ps=con.prepareStatement("select * from loginlab where LabId=?");		//LabId must me written same as written in tables
						ps.setLong(1,labId);						
			ResultSet rs=ps.executeQuery();
						if(rs.next()){
								flag=true;
						}
		} catch (SQLException e) {
				e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		//System.out.println("---------login method ended-------------");
	return flag;
	}
	
	
	public static boolean authenticate(LoginDTO dto){
		System.out.println("---------login authenticate method Started-------------");
		
		long memberId=dto.getMemberId();
		String password=dto.getPassword();
				System.out.println(memberId +"............"+password);
		
			
		try{	Class.forName("com.mysql.jdbc.Driver")	;	
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Filter","root","root");
				ps=con.prepareStatement("update  Login set Password=? where MemberId=?");		//memberId must me written same as written in tables
								ps.setString(1,password);			
								ps.setLong(2,memberId);			
				row=ps.executeUpdate();		     
						if(row>0){
								flag=true;
						}				
		}catch (Exception e) {
				e.printStackTrace();
		}finally{
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}	
		System.out.println("---------memberlogin method ended-------------");
		return flag;
	}
}