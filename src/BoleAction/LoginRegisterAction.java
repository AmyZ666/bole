package BoleAction;

import java.util.Date;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.xml.crypto.Data;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.junit.Test;
import org.omg.CORBA.PRIVATE_MEMBER;

import model.User;
import model.company;
import model.product;
import model.product1;
import model.product2;

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
        			//CompanyList();
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
	
	public void CompanyList() throws SQLException{
		Session session = HibernateSessionFactory.getSession();
        Transaction tx = session.beginTransaction();
//        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
//        System.out.println(df.format(new Date()));// new Date()为获取当前系统时间
     //  Date date = new Date();
        List<company> list = session.createSQLQuery("select * from company").addEntity(company.class).list();
        tx.commit();
        session.close();
        ArrayList<company> coms =new ArrayList<company>();
        company com;
        for(int i=0;i<list.size();i++){
        	com = new company();
        	com.setAddress(list.get(i).getAddress());
        	com.setDomain(list.get(i).getDomain());
        	com.setId(list.get(i).getId());
        	com.setIntroduce(list.get(i).getIntroduce());
        	com.setInvest_name(list.get(i).getInvest_name());
        	com.setInvest_stage(list.get(i).getInvest_stage());
        	com.setLogo(list.get(i).getLogo());
        	com.setName(list.get(i).getName());
        	com.setShort_introduce(list.get(i).getShort_introduce());
        	com.setShort_name(list.get(i).getShort_name());
        	com.setSize(list.get(i).getSize());
        	com.setStage(list.get(i).getStage());
        	com.setStart_date(list.get(i).getStart_date());
        	com.setWebsite(list.get(i).getWebsite());
        	coms.add(com);
     //   	System.out.println(datelist.get(i).getStart_date());
        }
        ActionContext.getContext().getSession().put("coms",coms);
	}
	
	public void Product() throws SQLException{

		Session session = HibernateSessionFactory.getSession();
        Transaction tx = session.beginTransaction();

        List<product> list = session.createSQLQuery("select * from product order by hot_num desc limit 10").addEntity(product.class).list();
        List<product1> list1 = session.createSQLQuery("select * from product_class").addEntity(product1.class).list();
        List<product2> list2 = session.createSQLQuery("select * from product_class2").addEntity(product2.class).list();
        List<product> list3 = session.createSQLQuery("select * from product").addEntity(product.class).list();
        tx.commit();
        session.close();

        ArrayList<product> pros =new ArrayList<product>();
        ArrayList<product1> pros1 =new ArrayList<product1>();
        ArrayList<product2> pros2 =new ArrayList<product2>();
        ArrayList<product> pros3 =new ArrayList<product>();
        product pro; //搜索量排前10
        product1 pro1;	//第一级目录
        product2 pro2;	//第二级目录
        product pro3;	//所有职位
        for(int i = 0; i < list.size(); i ++){
        	pro=new product();
        	pro.setName(list.get(i).getName());
        	pro.setHot_num(list.get(i).getHot_num());
        	pro.setClass2_id(list.get(i).getClass2_id());
        	pro.setId(list.get(i).getId());
        	pros.add(pro);
        
        }
        for(int i = 0; i < list1.size(); i ++){
        	pro1=new product1();
        	pro1.setName(list1.get(i).getName());
        	pro1.setId(list1.get(i).getId());
        	pros1.add(pro1);
        
        }
        for(int i = 0; i < list2.size(); i ++){
        	pro2=new product2();
        	pro2.setName(list2.get(i).getName());
        	pro2.setClass1_id(list2.get(i).getClass1_id());
        	pro2.setId(list2.get(i).getId());
        	pros2.add(pro2);

        
        }
        for(int i = 0; i < list3.size(); i ++){
        	pro3=new product();
        	pro3.setName(list3.get(i).getName());
        	pro3.setHot_num(list3.get(i).getHot_num());
        	pro3.setClass2_id(list3.get(i).getClass2_id());
        	pro3.setId(list3.get(i).getId());
        	pros3.add(pro3);
     
        
        }

        
      
 
     
        	ActionContext.getContext().getSession().put("pros",pros);
        	ActionContext.getContext().getSession().put("pros1",pros1);
        	ActionContext.getContext().getSession().put("pros2",pros2);
        	ActionContext.getContext().getSession().put("pros3",pros3);
        
      
        
     
     
	
	}
	

	public String logout() throws Exception{
		HttpSession session = null;
		ActionContext.getContext().getSession().clear();
		
		return "success";
	}
	
	
	public String register() throws Exception{
		User u = new User();
		String email = getUser().getEmail();
		String passWord = getUser().getPassWord();
		int status = getUser().getStatus();
		String userName = getUser().getUserName();
	/*	System.out.println(passWord);
		System.out.println(status);*/
		
		u.setPassWord(passWord);
		u.setEmail(email);
		u.setStatus(status);
		u.setUserName(userName);
		Session session = HibernateSessionFactory.getSession();
		Transaction transaction = session.beginTransaction();
		session.save(u);
		transaction.commit();
		session.close();
		return"success";
		
	}
	

}

