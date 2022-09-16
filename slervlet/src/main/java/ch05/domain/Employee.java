package ch05.domain;

import java.time.LocalDate;

public class Employee {
	private int employeeId;
	private String name;
	private LocalDate hireDate;
	
	public Employee(int employeeId, String name, LocalDate hireDate) {
		this.employeeId = employeeId;
		this.name = name;
		this.hireDate = hireDate;
	}
	
	@Override
	public String toString() {
		return employeeId + ", " + name + ", " + hireDate;
	}
}