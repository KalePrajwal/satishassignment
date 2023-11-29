package com.springmvc.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "employee_app")
public class Employee {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int eid;
	private String ename;
	private String city;
	private String enumber;
	private String pincode;
	private double salary;

	public int getEid() {
		return eid;
	}

	public void setEid(int eid) {
		this.eid = eid;
	}

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getEnumber() {
		return enumber;
	}

	public void setEnumber(String enumber) {
		this.enumber = enumber;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	public double getSalary() {
		return salary;
	}

	public void setSalary(double salary) {
		this.salary = salary;
	}

	@Override
	public String toString() {
		return "Empolyee [eid=" + eid + ", ename=" + ename + ", city=" + city + ", enumber=" + enumber + ", pincode="
				+ pincode + ", salary=" + salary + "]";
	}

	public Employee() {
	}

	public Employee(int eid, String ename, String city, String enumber, String pincode, double salary) {
		super();
		this.eid = eid;
		this.ename = ename;
		this.city = city;
		this.enumber = enumber;
		this.pincode = pincode;
		this.salary = salary;
	}

}
