package model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="company")
public class company {
	private int id;
	private String name;
	private String short_name;
	private String logo;
	private String website;
	private String address;
	private Date start_date;
	private String short_introduce;
	private String introduce;
	private String domain;
	private String stage;
	private String size;
	private String invest_stage;
	private String invest_name;
	
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getShort_name() {
		return short_name;
	}
	public void setShort_name(String short_name) {
		this.short_name = short_name;
	}
	public String getLogo() {
		return logo;
	}
	public void setLogo(String logo) {
		this.logo = logo;
	}
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}

	public Date getStart_date() {
		return start_date;
	}
	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}
	public String getShort_introduce() {
		return short_introduce;
	}
	public void setShort_introduce(String short_introduce) {
		this.short_introduce = short_introduce;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
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
	public String getInvest_stage() {
		return invest_stage;
	}
	public void setInvest_stage(String invest_stage) {
		this.invest_stage = invest_stage;
	}
	public String getInvest_name() {
		return invest_name;
	}
	public void setInvest_name(String invest_name) {
		this.invest_name = invest_name;
	}
}
