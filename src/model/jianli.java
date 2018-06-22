package model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "jianli")
public class jianli {
	private int id;
	private int user_id;
	private Date update_time;
	private String name;
	private String sex;
	private String education;
	private String exp;
	private String phone;
	private String email;
	private String hope_city;
	private String hope_position;
	private String hope_salary;
	private String school_name;
	private String school_education;
	private String school_major;
	private Date start_school;
	private Date end_school;
	private String self_introduction;

	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public Date getUpdate_time() {
		return update_time;
	}

	public void setUpdate_time(Date update_time) {
		this.update_time = update_time;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getExp() {
		return exp;
	}

	public void setExp(String exp) {
		this.exp = exp;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getHope_city() {
		return hope_city;
	}

	public void setHope_city(String hope_city) {
		this.hope_city = hope_city;
	}



	public String getHope_position() {
		return hope_position;
	}

	public void setHope_position(String hope_position) {
		this.hope_position = hope_position;
	}

	public String getHope_salary() {
		return hope_salary;
	}

	public void setHope_salary(String hope_salary) {
		this.hope_salary = hope_salary;
	}

	public String getSchool_name() {
		return school_name;
	}

	public void setSchool_name(String school_name) {
		this.school_name = school_name;
	}

	public String getSchool_education() {
		return school_education;
	}

	public void setSchool_education(String school_education) {
		this.school_education = school_education;
	}

	public String getSchool_major() {
		return school_major;
	}

	public void setSchool_major(String school_major) {
		this.school_major = school_major;
	}

	public Date getStart_school() {
		return start_school;
	}

	public void setStart_school(Date start_school) {
		this.start_school = start_school;
	}

	public Date getEnd_school() {
		return end_school;
	}

	public void setEnd_school(Date end_school) {
		this.end_school = end_school;
	}

	public String getSelf_introduction() {
		return self_introduction;
	}

	public void setSelf_introduction(String self_introduction) {
		this.self_introduction = self_introduction;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	

}
