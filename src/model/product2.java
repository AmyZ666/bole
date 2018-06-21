package model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "product_class2")
public class product2 {
	private int id;
	private String name;
	private int class1_id;

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

	public int getClass1_id() {
		return class1_id;
	}

	public void setClass1_id(int class1_id) {
		this.class1_id = class1_id;
	}
}
