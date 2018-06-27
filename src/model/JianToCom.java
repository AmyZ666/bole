package model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "JianToCom")
public class JianToCom {
	private int id;
	private int user_id;
	private int com_id;
	private int status;
	private int pos_id;
	private int yesorno;
	private Date commit_time;
	
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
	public int getCom_id() {
		return com_id;
	}
	public void setCom_id(int com_id) {
		this.com_id = com_id;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	

	public int getYesorno() {
		return yesorno;
	}
	public void setYesorno(int yesorno) {
		this.yesorno = yesorno;
	}
	public int getPos_id() {
		return pos_id;
	}
	public void setPos_id(int pos_id) {
		this.pos_id = pos_id;
	}
	public Date getCommit_time() {
		return commit_time;
	}
	public void setCommit_time(Date commit_time) {
		this.commit_time = commit_time;
	}
	
	
	
}
