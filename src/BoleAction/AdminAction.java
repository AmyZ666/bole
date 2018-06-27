package BoleAction;
import java.util.Map;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import model.JianToCom;
import model.User;
import model.company;
import model.jianli;
import model.pos_description;
import model.pos_order;
import model.pos_other;
import model.position;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.junit.Test;

import test.HibernateSessionFactory;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import javax.persistence.Entity;
public class AdminAction  extends ActionSupport {
	
	
	public String Mian() throws Exception {
		String status,id;
		HttpServletRequest request = ServletActionContext.getRequest();
		status=request.getParameter("yesorno");
		id=request.getParameter("jtc_id");
		Session s = HibernateSessionFactory.getSession();
		Transaction transaction = s.beginTransaction();
		
		//hql更新部分列 
		Query query = s.createQuery("update JianToCom t set t.status = '"+status+"' where id = '"+id+"'");  
        query.executeUpdate();
        transaction.commit();
        
		s.close();
		System.out.println("yesorno:"+status+"id"+id);
		return "success";
	}
	
	public String Back_jianli() throws Exception {
		String id;
		String status;
		HttpServletRequest request = ServletActionContext.getRequest();
		id=request.getParameter("com_id");
		status=request.getParameter("status");
		int auto_id;
		if(status.equals("0")){
			ActionContext.getContext().getSession().put("auto_id", 1);
		}else if(status.equals("1")){
			ActionContext.getContext().getSession().put("auto_id", 2);
		}else{
			ActionContext.getContext().getSession().put("auto_id", 3);
		}

		Session s = HibernateSessionFactory.getSession();
		Transaction transaction = s.beginTransaction();
		List<JianToCom> list = s.createSQLQuery("select * from jiantocom where com_id='"+id+"' and status='"+status+"'").addEntity(JianToCom.class).list();
		List<jianli> list1 = s.createSQLQuery("select * from jianli").addEntity(jianli.class).list();
		List<position> list2= s.createSQLQuery("select p.*,c.stage,c.domain,c.size,c.name as com_name,f.name as com_founder from position p,company c,founder f where p.com_id=c.id&&p.com_id=f.com_id&&c.id=f.com_id").addEntity(position.class).list();
		
		transaction.commit();
		s.close();
		ArrayList<JianToCom> jtcc = new ArrayList<JianToCom>();
		ArrayList<jianli> jis = new ArrayList<jianli>();
		ArrayList<position> pross = new ArrayList<position>();

		JianToCom jtc;
		jianli ji;
		position pros;
		for(int i=0;i<list.size();i++){
			jtc=new JianToCom();
			jtc.setId(list.get(i).getId());
			jtc.setCom_id(list.get(i).getCom_id());
			jtc.setPos_id(list.get(i).getPos_id());
			jtc.setStatus(list.get(i).getStatus());
			jtc.setCommit_time(list.get(i).getCommit_time());
			jtc.setUser_id(list.get(i).getUser_id());
			jtc.setYesorno(list.get(i).getYesorno());
		
			jtcc.add(jtc);
		}
		for(int i=0;i<list1.size();i++){
			ji= new jianli();
			ji.setEducation(list1.get(i).getEducation());
			ji.setEmail(list1.get(i).getEmail());
			ji.setExp(list1.get(i).getExp());
			ji.setHope_city(list1.get(i).getHope_city());
			ji.setHope_position(list1.get(i).getHope_position());
			ji.setHope_salary(list1.get(i).getHope_salary());
			ji.setId(list1.get(i).getId());
			ji.setImg(list1.get(i).getImg());
			ji.setName(list1.get(i).getName());
			ji.setPhone(list1.get(i).getPhone());
			ji.setPro_introduction(list1.get(i).getPro_introduction());
			ji.setProduce(list1.get(i).getProduce());
			ji.setSchool_education(list1.get(i).getSchool_education());
			ji.setSchool_major(list1.get(i).getSchool_major());
			ji.setSchool_name(list1.get(i).getSchool_name());
			ji.setSelf_introduction(list1.get(i).getSelf_introduction());
			ji.setSex(list1.get(i).getSex());
			ji.setUpdate_time(list1.get(i).getUpdate_time());
			ji.setUser_id(list1.get(i).getUser_id());

			jis.add(ji);
		}
		for (int i = 0; i < list2.size(); i++) {
			pros = new position();
			
			pros.setCom_id(list2.get(i).getCom_id());
			pros.setEducution(list2.get(i).getEducution());
			pros.setExp(list2.get(i).getExp());
			pros.setName(list2.get(i).getName());
			pros.setSalary(list2.get(i).getSalary());
			pros.setStart_time(list2.get(i).getStart_time());
			pros.setTempt(list2.get(i).getTempt());
			pros.setAddress(list2.get(i).getAddress());
			pros.setId(list2.get(i).getId());
			pros.setCom_founder(list2.get(i).getCom_founder());
			pros.setCom_name(list2.get(i).getCom_name());
			pros.setDomain(list2.get(i).getDomain());
			pros.setSize(list2.get(i).getSize());
			pros.setStage(list2.get(i).getStage());
			pros.setStatus(list2.get(i).getStatus());
		
			pross.add(pros);

		}
		System.out.println(123456);
		ActionContext.getContext().getSession().put("poss_re", pross);
		
		ActionContext.getContext().getSession().put("jtcc", jtcc);
		ActionContext.getContext().getSession().put("jis", jis);
		
		return "success";
	}
	public String Back_pos() throws Exception {
		String id,status;
		HttpServletRequest request = ServletActionContext.getRequest();
		id=request.getParameter("pos_id");
		status=request.getParameter("status");
		System.out.println(id);
		System.out.println(status);
		
		Session s = HibernateSessionFactory.getSession();
		Transaction transaction = s.beginTransaction();
		
		//hql更新部分列 
		Query query = s.createQuery("update position t set t.status = '"+status+"' where id = '"+id+"'");  
        query.executeUpdate();
		
		//s.saveOrUpdate(c);
		transaction.commit();
		s.close();
		
		return "success";
	}
	
	public String Pos() throws Exception {
		ListAction.List();
		String id;
		HttpServletRequest request = ServletActionContext.getRequest();
		id=request.getParameter("pos_id");
		System.out.println(id);
		if(id==null){
			return "error";
		}
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		List<pos_order> list_order = session.createSQLQuery("select * from pos_order where pos_id='"+id+"'").addEntity(pos_order.class).list();
		List<pos_other> list_other = session.createSQLQuery("select * from pos_other where pos_id='"+id+"'").addEntity(pos_other.class).list();
		List<pos_description> list_description = session.createSQLQuery("select * from pos_description where pos_id='"+id+"'").addEntity(pos_description.class).list();
		List<position> list = session
				.createSQLQuery(
						"select p.*,c.stage,c.domain,c.size,c.name as com_name,f.name as com_founder from position p,company c,founder f where p.com_id=c.id&&p.com_id=f.com_id&&c.id=f.com_id order by hot_num desc")
				.addEntity(position.class).list();
		tx.commit();
		session.close();
		
		ArrayList<pos_order> orders = new ArrayList<pos_order>();
		ArrayList<pos_other> others = new ArrayList<pos_other>();
		ArrayList<pos_description> depts = new ArrayList<pos_description>();
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
			pros.setStatus(list.get(i).getStatus());
			pross.add(pros);
			
		}
		ActionContext.getContext().getSession().put("poss_all", pross);
		
		pos_order order;
		for(int i=0;i<list_order.size();i++){
			order=new pos_order();
			order.setId(list_order.get(i).getId());
			order.setName(list_order.get(i).getName());
			order.setPos_id(list_order.get(i).getPos_id());
			orders.add(order);
		}
		ActionContext.getContext().getSession().put("orders", orders);
		
		pos_description dept;
		for(int i=0;i<list_description.size();i++){
			dept=new pos_description();
			dept.setId(list_description.get(i).getId());
			dept.setName(list_description.get(i).getName());
			dept.setPos_id(list_description.get(i).getPos_id());
			depts.add(dept);
		}
		ActionContext.getContext().getSession().put("depts", depts);
		
		pos_other other;
		for(int i=0;i<list_order.size();i++){
			other=new pos_other();
			other.setId(list_other.get(i).getId());
			other.setName(list_other.get(i).getName());
			other.setPos_id(list_other.get(i).getPos_id());
			others.add(other);
		}
		ActionContext.getContext().getSession().put("others", others);
		System.out.println(id);
		return "success";
		
	}
	
	public String Com() throws Exception {
		String com_id;
		HttpServletRequest request = ServletActionContext.getRequest();
		com_id=request.getParameter("com_id");

		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();

		
		
		List<company> list ;
		
		
		
		list= session.createSQLQuery("select * from company where id="+com_id).addEntity(company.class).list();
		
		
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
			pros.setStatus(list.get(i).getStatus());
			pross.add(pros);

		}
		ActionContext.getContext().getSession().put("com_shen", pross);
		ActionContext.getContext().getSession().put("admin_left_id", 3);
		
	
		System.out.println(com_id);
		return "success";
		
	}
	
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
			pros.setStatus(list.get(i).getStatus());
			pross.add(pros);

		}
		ActionContext.getContext().getSession().put("com_sea", pross);
		ActionContext.getContext().getSession().put("admin_left_id", 3);
		return "success";
	}
	
	public String Pwd() throws Exception {
		String yuan,xin,chong;
		ActionContext.getContext().getSession().put("admin_left_id", 2);
		HttpServletRequest request = ServletActionContext.getRequest();
		yuan=new String(request.getParameter("yuan"));
		xin=new String(request.getParameter("xin"));
		chong=new String(request.getParameter("chong"));
		System.out.println(yuan+xin+chong);
		if(xin.equals(chong)){
			Session session = HibernateSessionFactory.getSession();
			Transaction tx = session.beginTransaction();

			
			
			List<User> list ;
			list= session.createSQLQuery("select * from user where status=1").addEntity(User.class).list();
			
			
			if(list.get(0).getPassWord().equals(yuan)){
				Query query = session.createQuery("update User u  set u.passWord = '"+xin+"' where id = '"+list.get(0).getId()+"'");  
		        query.executeUpdate();
		        ActionContext.getContext().getSession().put("admin_left_pwd", 3);
			}else{
				ActionContext.getContext().getSession().put("admin_left_pwd", 1);
			}
			tx.commit();
			session.close();
			
			return "success";
		}else{
			ActionContext.getContext().getSession().put("admin_left_pwd", 2);
			return "success";
		}
		
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
			pros.setStatus(list.get(i).getStatus());
			pross.add(pros);

		}
		ActionContext.getContext().getSession().put("adm_poss", pross);
		ActionContext.getContext().getSession().put("admin_left_id", 4);
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
		
		Session s = HibernateSessionFactory.getSession();
		Transaction transaction = s.beginTransaction();
		
		User user = new User();
		user.setId(id);
		
		s.delete(user);
		
		transaction.commit();
		s.close();
		
		ActionContext.getContext().getSession().put("admin_left_id", 1);
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

		Session s = HibernateSessionFactory.getSession();
		Transaction transaction = s.beginTransaction();
		
		//hql更新部分列 
		Query query = s.createQuery("update User u  set u.status = '"+stauts+"' where id = '"+id+"'");  
        query.executeUpdate();
		
		//s.saveOrUpdate(c);
		transaction.commit();
		s.close();
		
		ActionContext.getContext().getSession().put("admin_left_id", 1);
	
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
			list= session.createSQLQuery("select * from user where status!=1").addEntity(User.class).list();
		}else{
			list = session.createSQLQuery("select * from user where userName like '%"+name+"%' and status!=1").addEntity(User.class).list();
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
		ActionContext.getContext().getSession().put("admin_left_id", 1);
		return "success";
	}
	

}
