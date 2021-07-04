package in.covid19.project.dto;

public class LoginDTO {
	
	
	
	private long memberId=0;
	private long labId=0;
	private String password=null;

	
	
	
	public long getMemberId() {
		return memberId;
	}	
	public void setMemberId(long memberId) {
		this.memberId = memberId;
	}
	
	public long getLabId() {
		return labId;
	}
	public void setLabId(long labId) {
		this.labId = labId;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
}
