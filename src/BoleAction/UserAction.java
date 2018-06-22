package BoleAction;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import model.jianli;
import model.position;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;
import org.hibernate.Transaction;

import test.HibernateSessionFactory;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction  extends ActionSupport {
	
	public String jianli() throws Exception{
		
		int id;
		
		HttpServletRequest request = ServletActionContext.getRequest();
		id=new Integer(request.getParameter("id").toString());
		System.out.println(id);
		
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();

		List<jianli> list = session
				.createSQLQuery(
						"select * from jianli where user_id='"+id+"'")
				.addEntity(jianli.class).list();
		tx.commit();
		session.close();
		
		ArrayList<jianli> pross = new ArrayList<jianli>();
		jianli pros;
		for (int i = 0; i < list.size(); i++) {
			pros = new jianli();
			pros.setId(list.get(i).getId());
			pros.setUser_id(list.get(i).getUser_id());
			pros.setName(list.get(i).getName());
			pros.setEducation(list.get(i).getEducation());
			pros.setEmail(list.get(i).getEmail());
			pros.setEnd_school(list.get(i).getEnd_school());
			pros.setExp(list.get(i).getExp());
			pros.setHope_city(list.get(i).getHope_city());
			pros.setHope_position(list.get(i).getHope_position());
			pros.setHope_salary(list.get(i).getHope_salary());
			pros.setPhone(list.get(i).getPhone());
			pros.setSchool_education(list.get(i).getSchool_education());
			pros.setSchool_major(list.get(i).getSchool_major());
			pros.setSchool_name(list.get(i).getSchool_name());
			pros.setSelf_introduction(list.get(i).getSelf_introduction());
			pros.setSex(list.get(i).getSex());
			pros.setStart_school(list.get(i).getStart_school());
			pros.setUpdate_time(list.get(i).getUpdate_time());
			System.out.println(list.get(i).getName());
			pross.add(pros);

		}
		ActionContext.getContext().getSession().put("jianli", pross);
		
		return "success";
	}

}
