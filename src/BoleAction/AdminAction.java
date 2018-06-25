package BoleAction;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import model.User;
import model.position;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.junit.Test;

import test.HibernateSessionFactory;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class AdminAction  extends ActionSupport {
	
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
		System.out.println("修改用户");
		HttpServletRequest request = ServletActionContext.getRequest();
		id=new Integer(request.getParameter("change_uid").toString());
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
