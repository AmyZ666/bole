package model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="position")
public class position {
	private String name;
	private String salary;
	private String exp;
	private String educution;
	private String tempt;
	private Date start_time;
	private int com_id;
	
	@Id
	@GeneratedValue
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getExp() {
		return exp;
	}
	public void setExp(String exp) {
		this.exp = exp;
	}
	public String getEducution() {
		return educution;
	}
	public void setEducution(String educution) {
		this.educution = educution;
	}
	public String getTempt() {
		return tempt;
	}
	public void setTempt(String tempt) {
		this.tempt = tempt;
	}
	public Date getStart_time() {
		return start_time;
	}
	public void setStart_time(Date start_time) {
		this.start_time = start_time;
	}
	public int getCom_id() {
		return com_id;
	}
	public void setCom_id(int com_id) {
		this.com_id = com_id;
	}
	
}
