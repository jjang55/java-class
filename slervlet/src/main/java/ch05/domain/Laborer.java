package ch05.domain;

public class Laborer {
	private String name;
	private int jobId;
	private int employeeId;
	
	public Laborer(String name, int jobId, int employeeId) {
		this.name = name;
		this.jobId = jobId;
		this.employeeId = employeeId;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public int getJobId() {
		return jobId;
	}
	
	public void setJobId(int jobId) {
		this.jobId = jobId;
	}
	
	public int getEmployeeId() {
		return employeeId;
	}
	
	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}
}
