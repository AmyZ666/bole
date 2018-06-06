package BoleAction;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import model.User;

import test.HibernateSessionFactory;

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

        List<User> list = session.createSQLQuery("select * from user_info").addEntity(User.class).list();

        tx.commit();
        session.close();
        for(int i = 0; i < list.size(); i ++){
        	if(list.get(i).getEmail().equals(getUser().getEmail())){
        		if(list.get(i).getPassWord().equals(getUser().getPassWord())) return "success";
        	}
        }
		return "error";
	
	}
}
