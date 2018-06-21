package BoleAction;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import test.HibernateSessionFactory;

import model.company;
import model.founder;
import model.pro_com;
import model.weal;


import com.opensymphony.xwork2.ActionSupport;

public class CompanyAction extends ActionSupport implements SessionAware{
	public company com;
	public weal wl;
	public founder fd;	
	public pro_com pd;
	
	private Map session;
	public void setSession(Map session){
		
		this.session=session;
	}
	
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
		company c = new company();
		int id=(Integer)(session.get("id"));
		c.setId(id);
		c.setName(getCom().getName());
		c.setStage(getCom().getStage());
;		c.setShort_name(getCom().getShort_name());
		c.setLogo("logo");
		c.setWebsite(getCom().getWebsite());
		c.setAddress(getCom().getAddress());
		c.setDomain(getCom().getDomain());
		c.setSize(getCom().getSize());
		c.setStage(getCom().getStage());
		c.setShort_introduce(getCom().getShort_introduce());
		
		Session s = HibernateSessionFactory.getSession();
		Transaction transaction = s.beginTransaction();
		s.saveOrUpdate(c);
		transaction.commit();
		s.close();
		
		//System.out.println("这个id是：" + id);
		
		return "success";
	}
	public String company2() throws Exception{
		weal w = new weal();
		int com_id=(Integer)(session.get("id"));
		w.setCom_id(com_id);
		w.setWeal_name(getWl().getWeal_name());
		
	//	System.out.println(getWl().getWeal_name());
	//	System.out.println(com_id);
		
		Session s = HibernateSessionFactory.getSession();
		Transaction transaction = s.beginTransaction();
		
		s.save(w);
		
		transaction.commit();
		s.close();
		
		return "success";
	}
	public String company3() throws Exception{
		//System.out.println(getFd().getName());
		//System.out.println(getFd().getPosition());
		
		founder f = new founder();
		int com_id = (Integer)(session.get("id"));
		
		System.out.println(com_id);
		
		f.setCom_id(com_id);
		f.setName(getFd().getName());
		f.setIntroduce(getFd().getIntroduce());
		f.setPosition(getFd().getPosition());
		f.setSina(getFd().getSina());
		
		Session s = HibernateSessionFactory.getSession();
		Transaction transaction = s.beginTransaction();
		
		s.saveOrUpdate(f);
		
		transaction.commit();
		s.close();
		
		return "success";
	}
	public String company4() throws Exception{
		//System.out.println(getPd().getName());
		//System.out.println(getPd().getIntroduce());
		
		pro_com pc = new pro_com();
		int com_id = (Integer)(session.get("id"));
		
		System.out.println(com_id);
		
		pc.setCom_id(com_id);
		pc.setIntroduce(getPd().getIntroduce());
		pc.setName(getPd().getName());
		pc.setUrl(getPd().getUrl());
		pc.setImg("YGY最帅");
		
		Session s = HibernateSessionFactory.getSession();
		Transaction transaction = s.beginTransaction();
		
		s.saveOrUpdate(pc);
		
		transaction.commit();
		s.close();
		
		return "success";
	}
	public String company5() throws Exception{
		//company c = new company();
		String introduce = (getCom().getIntroduce());
		int id=(Integer)(session.get("id"));
		//c.setId(id);
		
		
		Session s = HibernateSessionFactory.getSession();
		Transaction transaction = s.beginTransaction();
		
		//hql更新部分列 
		Query query = s.createQuery("update company t set t.introduce = '"+introduce+"' where id = id");  
        query.executeUpdate();
		
		//s.saveOrUpdate(c);
		transaction.commit();
		s.close();
		return "success";
	}
	
}
