package model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "position")
public class position {
	private int id;
	private String name;
	private String salary;
	private String exp;
	private String educution;
	private String tempt;
	private Date start_time;
	private int com_id;
	private String address;
	private int hot_num;
	private String com_name;
	private String com_founder;
	private String domain;
	private String stage;
	private String size;

	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getName() {
		return name;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getHot_num() {
		return hot_num;
	}

	public void setHot_num(int hot_num) {
		this.hot_num = hot_num;
	}

	public String getCom_name() {
		return com_name;
	}

	public void setCom_name(String com_name) {
		this.com_name = com_name;
	}

	public String getCom_founder() {
		return com_founder;
	}

	public void setCom_founder(String com_founder) {
		this.com_founder = com_founder;
	}

	public String getDomain() {
		return domain;
	}

	public void setDomain(String domain) {
		this.domain = domain;
	}

	public String getStage() {
		return stage;
	}

	public void setStage(String stage) {
		this.stage = stage;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

}
