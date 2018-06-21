package model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "product")
public class product {
	private int id;
	private int hot_num;
	private String name;
	private int class2_id;

	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getHot_num() {
		return hot_num;
	}

	public void setHot_num(int hot_num) {
		this.hot_num = hot_num;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getClass2_id() {
		return class2_id;
	}

	public void setClass2_id(int class2_id) {
		this.class2_id = class2_id;
	}

}
