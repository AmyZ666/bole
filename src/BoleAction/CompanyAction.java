package BoleAction;

import model.company;
import model.founder;
import model.produce;
import model.weal;

import com.opensymphony.xwork2.ActionSupport;

public class CompanyAction extends ActionSupport{
	public company com;
	public weal wl;
	public founder fd;	
	public produce pd;
	
	
	public produce getPd() {
		return pd;
	}
	public void setPd(produce pd) {
		this.pd = pd;
	}
	public founder getFd() {
		return fd;
	}
	public void setFd(founder fd) {
		this.fd = fd;
	}
	public weal getWl() {
		return wl;
	}
	public void setWl(weal wl) {
		this.wl = wl;
	}
	public company getCom() {
		return com;
	}
	public void setCom(company com) {
		this.com = com;
	}
	
	public String company1() throws Exception{
		System.out.println("23333333333");
		System.out.println(getCom().getName());
		System.out.println(getCom().getShort_name());
		System.out.println(getCom().getLogo());
		System.out.println(getCom().getWebsite());
		System.out.println(getCom().getAddress());
		System.out.println(getCom().getDomain());
		System.out.println(getCom().getSize());
		System.out.println(getCom().getStage());
		return "success";
	}
	public String company2() throws Exception{
		System.out.println(getWl().getWeal_name());
		return "success";
	}
	public String company3() throws Exception{
		System.out.println(getFd().getName());
		System.out.println(getFd().getPosition());
		return "success";
	}
	public String company4() throws Exception{
		System.out.println(getPd().getProduce_name());
		System.out.println(getPd().getProduce_introuce());
		return "success";
	}
	public String company5() throws Exception{
		return "";
	}
	
}
