package model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="company")
public class produce {
	private int com_id;
	private String produce_name;
	private String produce_introuce;
	@Id
	@GeneratedValue
	public int getCom_id() {
		return com_id;
	}
	public void setCom_id(int com_id) {
		this.com_id = com_id;
	}
	public String getProduce_name() {
		return produce_name;
	}
	public void setProduce_name(String produce_name) {
		this.produce_name = produce_name;
	}
	public String getProduce_introuce() {
		return produce_introuce;
	}
	public void setProduce_introuce(String produce_introuce) {
		this.produce_introuce = produce_introuce;
	}
	
	
}
