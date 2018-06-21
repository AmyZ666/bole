package BoleAction;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;
import org.hibernate.Transaction;

import test.HibernateSessionFactory;

import com.opensymphony.xwork2.ActionSupport;

import model.pos_description;
import model.pos_order;
import model.pos_other;
import model.position;

public class ToudiAction extends ActionSupport{
	
	public String Toudi() throws Exception{
		String id;
		HttpServletRequest request = ServletActionContext.getRequest();
		id=request.getParameter("pos_id");
		if(id==null){
			return "error";
		}
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		List<pos_order> list_order = session.createSQLQuery("select * from pos_order where pos_id='"+id+"'").addEntity(pos_order.class).list();
		List<pos_other> pos_other = session.createSQLQuery("select * from pos_other where pos_id='"+id+"'").addEntity(pos_other.class).list();
		List<pos_description> pos_description = session.createSQLQuery("select * from pos_description where pos_id='"+id+"'").addEntity(pos_description.class).list();
		
		tx.commit();
		session.close();
		return "success";
	}
}
