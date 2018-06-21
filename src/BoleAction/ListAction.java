package BoleAction;

import java.util.Date;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.xml.crypto.Data;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.junit.Test;
import org.omg.CORBA.PRIVATE_MEMBER;

import model.User;
import model.company;
import model.position;
import model.product;
import model.product1;
import model.product2;
import model.weal_pos;

import test.HibernateSessionFactory;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ListAction extends ActionSupport {
	private String pos_name;

	public String getPos_name() {
		return pos_name;
	}

	public void setPos_name(String pos_name) {
		this.pos_name = pos_name;
	}

	public String ListSearch() throws Exception {
		String name;
		HttpServletRequest request = ServletActionContext.getRequest();
		name=new String(request.getParameter("pos_name").getBytes("ISO-8859-1"), "UTF-8");
		if(name==null)
		name = getPos_name();
		System.out.println(name);
		
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();

		List<position> list = session
				.createSQLQuery(
						"select p.*,c.stage,c.domain,c.size,c.name as com_name,f.name as com_founder from position p,company c,founder f where p.com_id=c.id&&p.com_id=f.com_id&&c.id=f.com_id&&(p.name like '%"
								+ name
								+ "%'||c.name like '%"
								+ name
								+ "%') order by hot_num desc")
				.addEntity(position.class).list();
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
		ActionContext.getContext().getSession().put("poss_sea", pross);
		return "success";
	}

	public static String List() throws Exception {

		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();

		List<position> list = session
				.createSQLQuery(
						"select p.*,c.stage,c.domain,c.size,c.name as com_name,f.name as com_founder from position p,company c,founder f where p.com_id=c.id&&p.com_id=f.com_id&&c.id=f.com_id order by hot_num desc")
				.addEntity(position.class).list();
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
		ActionContext.getContext().getSession().put("poss_all", pross);
		return "success";
	}
}
