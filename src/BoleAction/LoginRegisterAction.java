package BoleAction;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.junit.Test;

import model.User;
import model.product;

import test.HibernateSessionFactory;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginRegisterAction extends ActionSupport{
	public User user;
	private List list;
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}

	public String login() throws Exception{
		//System.out.println("233333333333333");
		//System.out.println(getUser().getEmail());
		Session session = HibernateSessionFactory.getSession();
        Transaction tx = session.beginTransaction();

        List<User> list = session.createSQLQuery("select * from user").addEntity(User.class).list();

        tx.commit();
        session.close();
        for(int i = 0; i < list.size(); i ++){
        	if(list.get(i).getEmail().equals(getUser().getEmail())){
        		if(list.get(i).getPassWord().equals(getUser().getPassWord())) {
        			Product();
        			ActionContext.getContext().getSession().put("status",list.get(i).getStatus());
        			ActionContext.getContext().getSession().put("id",list.get(i).getId());
        			ActionContext.getContext().getSession().put("username",list.get(i).getUserName());
        			return "success";
        		}
        	}
        }
		return "error";
	
	}
	//@Test
	public void Product() throws SQLException{

		Session session = HibernateSessionFactory.getSession();
        Transaction tx = session.beginTransaction();

        List<product> list = session.createSQLQuery("select * from product_class").addEntity(product.class).list();

        tx.commit();
        session.close();

        ArrayList<product> pros =new ArrayList<product>();
        product pro;
        for(int i = 0; i < list.size(); i ++){
        	pro=new product();
        	pro.setName(list.get(i).getName());
        	pro.setHot_num(list.get(i).getHot_num());
        	pro.setId(list.get(i).getId());
        	pros.add(pro);
        
        }

        
     
        if(!pros.isEmpty()&&pros.size()!=0){
     
        	ActionContext.getContext().getSession().put("pros",pros);
        
        }
        
     
     
	
	}
	

	public String logout() throws Exception{
		HttpSession session = null;
		ActionContext.getContext().getSession().clear();
		
		return "success";
	}
}
