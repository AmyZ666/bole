package BoleAction;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import model.User;
import model.company;
import model.position;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.junit.Test;

import test.HibernateSessionFactory;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class AdminAction  extends ActionSupport {
	
	public String comSea() throws Exception {
		String name;
		HttpServletRequest request = ServletActionContext.getRequest();
		name=new String(request.getParameter("name"));

		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();

		
		
		List<company> list ;
		
		
		if(name.equalsIgnoreCase("")){
			list= session.createSQLQuery("select * from company").addEntity(company.class).list();
		}else{
			list = session.createSQLQuery("select * from company where name like '%"+name+"%'").addEntity(company.class).list();
		}
		
		tx.commit();
		session.close();
		
		ArrayList<company> pross = new ArrayList<company>();
		company pros;
		for (int i = 0; i < list.size(); i++) {
			pros = new company();
			pros.setId(list.get(i).getId());
			pros.setAddress(list.get(i).getAddress());
			pros.setDomain(list.get(i).getDomain());
			pros.setIntroduce(list.get(i).getIntroduce());
			pros.setInvest_name(list.get(i).getInvest_name());
			pros.setInvest_stage(list.get(i).getInvest_stage());
			pros.setLogo(list.get(i).getLogo());
			pros.setName(list.get(i).getName());
			pros.setShort_introduce(list.get(i).getShort_introduce());
			pros.setShort_name(list.get(i).getShort_name());
			pros.setSize(list.get(i).getSize());
			pros.setStage(list.get(i).getStage());
			pros.setStart_date(list.get(i).getStart_date());
			pros.setWebsite(list.get(i).getWebsite());
			pross.add(pros);

		}
		ActionContext.getContext().getSession().put("com_sea", pross);
		
		return "success";
	}
	
	public String Pwd() throws Exception {
		String yuan,xin,chong;
		HttpServletRequest request = ServletActionContext.getRequest();
		yuan=new String(request.getParameter("yuan"));
		xin=new String(request.getParameter("xin"));
		chong=new String(request.getParameter("chong"));
		System.out.println(yuan+xin+chong);
		return "success";
	}
	
	public String posSea() throws Exception {
		String name;
		HttpServletRequest request = ServletActionContext.getRequest();
		name=new String(request.getParameter("name"));
		
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		List<position> list;
		if(name.equalsIgnoreCase("")){
			 list = session
						.createSQLQuery(
								"select p.*,c.stage,c.domain,c.size,c.name as com_name,f.name as com_founder from position p,company c,founder f where p.com_id=c.id&&p.com_id=f.com_id&&c.id=f.com_id order by hot_num desc")
						.addEntity(position.class).list();
		}else{
			 list = session
						.createSQLQuery(
								"select p.*,c.stage,c.domain,c.size,c.name as com_name,f.name as com_founder from position p,company c,founder f where p.com_id=c.id&&p.com_id=f.com_id&&c.id=f.com_id&&(p.name like '%"
										+ name
										+ "%'||c.name like '%"
										+ name
										+ "%') order by hot_num desc")
						.addEntity(position.class).list();
		}
		
		tx.commit();
		session.close();

		ArrayList<position> pross = new ArrayList<position>();
		position pros;
		for (int i = 0; i < list.size(); i++) {
			pros = new position();
			pros.setCom_id(list.get(i).getCom_id());
			pros.setEducution(list.get(i).getEducution());
			pros.setExp(list.get(i).getExp());
			pros.setName(list.get(i).getName());
			pros.setSalary(list.get(i).getSalary());
			pros.setStart_time(list.get(i).getStart_time());
			pros.setTempt(list.get(i).getTempt());
			pros.setAddress(list.get(i).getAddress());
			pros.setId(list.get(i).getId());
			pros.setCom_founder(list.get(i).getCom_founder());
			pros.setCom_name(list.get(i).getCom_name());
			pros.setDomain(list.get(i).getDomain());
			pros.setSize(list.get(i).getSize());
			pros.setStage(list.get(i).getStage());
			pross.add(pros);

		}
		ActionContext.getContext().getSession().put("adm_poss", pross);
		System.out.println(name);
		return "success";
	}
	
	public String Ban() throws Exception {
		int stauts;
		HttpServletRequest request = ServletActionContext.getRequest();
		stauts=new Integer(request.getParameter("stauts").toString());
		System.out.println(stauts);
		return "success";
	}
	
	public String Del() throws Exception {
		int id;
		System.out.println("删除用户");
		HttpServletRequest request = ServletActionContext.getRequest();
		id=new Integer(request.getParameter("drop_uid").toString());
		System.out.println("删除用户"+id);
		return "success";
	}
	
	public String Cha() throws Exception {
		int id;
		int stauts;
		System.out.println("修改用户");
		HttpServletRequest request = ServletActionContext.getRequest();
		stauts=new Integer(request.getParameter("stauts").toString());
		id=new Integer(request.getParameter("change_uid").toString());
		System.out.println(stauts);
		System.out.println("修改"+id);
		return "success";
	}
	
	public String Sea() throws Exception {
		String name;
		System.out.println("查询用户");
		HttpServletRequest request = ServletActionContext.getRequest();
		name=new String(request.getParameter("name"));
		
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();

		
		
		List<User> list ;
		
		
		if(name.equalsIgnoreCase("")){
			list= session.createSQLQuery("select * from user").addEntity(User.class).list();
		}else{
			list = session.createSQLQuery("select * from user where userName like '%"+name+"%'").addEntity(User.class).list();
		}
		
		tx.commit();
		session.close();
		
		ArrayList<User> pross = new ArrayList<User>();
		User pros;
		for (int i = 0; i < list.size(); i++) {
			pros = new User();
			pros.setId(list.get(i).getId());
			pros.setPassWord(list.get(i).getPassWord());
			pros.setStatus(list.get(i).getStatus());
			pros.setEmail(list.get(i).getEmail());
			pros.setUserName(list.get(i).getUserName());
			pross.add(pros);

		}
		ActionContext.getContext().getSession().put("user_sea", pross);
		return "success";
	}
	

}
