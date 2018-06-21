package BoleAction;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;
import org.hibernate.Transaction;

import test.HibernateSessionFactory;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import model.pos_description;
import model.pos_order;
import model.pos_other;
import model.position;

public class ToudiAction extends ActionSupport{
	
	public String Toudi() throws Exception{
		ListAction.List();
		String id;
		HttpServletRequest request = ServletActionContext.getRequest();
		id=request.getParameter("pos_id");
		if(id==null){
			return "error";
		}
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		List<pos_order> list_order = session.createSQLQuery("select * from pos_order where pos_id='"+id+"'").addEntity(pos_order.class).list();
		List<pos_other> list_other = session.createSQLQuery("select * from pos_other where pos_id='"+id+"'").addEntity(pos_other.class).list();
		List<pos_description> list_description = session.createSQLQuery("select * from pos_description where pos_id='"+id+"'").addEntity(pos_description.class).list();
		
		tx.commit();
		session.close();
		
		ArrayList<pos_order> orders = new ArrayList<pos_order>();
		ArrayList<pos_other> others = new ArrayList<pos_other>();
		ArrayList<pos_description> depts = new ArrayList<pos_description>();
		
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
		
		return "success";
	}
}
