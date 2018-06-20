package BoleAction;

import org.hibernate.Session;
import org.hibernate.Transaction;

import test.HibernateSessionFactory;

import model.company;
import model.founder;
import model.pro_com;
import model.weal;


import com.opensymphony.xwork2.ActionSupport;

public class CompanyAction extends ActionSupport{
	public company com;
	public weal wl;
	public founder fd;	
	public pro_com pd;
	
	
	public pro_com getPd() {
		return pd;
	}
	public void setPd(pro_com pd) {
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
		System.out.println(getPd().getName());
		System.out.println(getPd().getIntroduce());
		return "success";
	}
	public String company5() throws Exception{
		System.out.println(getCom().getName());
		company c = new company();
		c.setName(getCom().getName());
		c.setShort_name(getCom().getShort_name());
		c.setLogo("logo");
		c.setWebsite(getCom().getWebsite());
		c.setAddress(getCom().getAddress());
		c.setDomain(getCom().getDomain());
		c.setSize(getCom().getSize());
		c.setStage(getCom().getStage());
		c.setShort_introduce(getCom().getShort_introduce());
		c.setIntroduce(getCom().getIntroduce());
		
		Session session = HibernateSessionFactory.getSession();
		Transaction transaction = session.beginTransaction();
		session.save(c);
		transaction.commit();
		session.close();
		return "success";
	}
	
}
