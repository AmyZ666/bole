package BoleAction;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import model.JianToCom;
import model.User;
import model.jianli;
import model.position;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import test.HibernateSessionFactory;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction  extends ActionSupport implements SessionAware{
	private jianli jl;
	private Map session;
	
	public void setSession(Map session){
		
		this.session=session;
	}	
	
	public jianli getJl() {
		return jl;
	}
	public void setJl(jianli jl) {
		this.jl = jl;
	}
	
	public String del_mian() throws Exception{
		String user_id,pos_id;
		int id;
		HttpServletRequest request = ServletActionContext.getRequest();
		user_id=request.getParameter("user_id");
		pos_id=request.getParameter("pos_id");
		
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		Query query = session.createQuery("update JianToCom t set t.status = 4 where user_id = '"+user_id+"' and pos_id='"+pos_id+"'");  
        query.executeUpdate();
		tx.commit();
		session.close();
		System.out.println("删除成功");
		return "success";
	}
	
	public String Mian() throws Exception{
		String id;
		HttpServletRequest request = ServletActionContext.getRequest();
		id=request.getParameter("id");
		
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		
		List<position> list = session
				.createSQLQuery(
						"select p.*,c.stage,c.domain,c.size,c.name as com_name,f.name as com_founder  from position p,JianToCom j,company c,founder f where p.com_id=c.id&&p.com_id=f.com_id&&c.id=f.com_id&&j.user_id='"+id+"'&&j.status=1&&j.com_id=c.id&&j.pos_id=p.id")
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
			pros.setStatus(list.get(i).getStatus());
			System.out.println("mian:"+list.get(i).getName());
			pross.add(pros);

		}
		
		ActionContext.getContext().getSession().put("poss_mi", pross);
		return "success";
	}
	
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
		//	pros.setEnd_school(list.get(i).getEnd_school());
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
			pros.setPro_introduction(list.get(i).getPro_introduction());
	//		pros.setStart_school(list.get(i).getStart_school());
			pros.setUpdate_time(list.get(i).getUpdate_time());
			System.out.println(list.get(i).getName());
			pross.add(pros);

		}
		ActionContext.getContext().getSession().put("jianli", pross);
		
		return "success";
	}
	
	public String update_jianli() throws Exception{
			jianli jli = new jianli();
			
			jli.setName(getJl().getName());
			int id=(Integer)(session.get("id"));
			jli.setUser_id(id);
			jli.setId(id);
			jli.setUpdate_time(new Date());
			jli.setSex(getJl().getSex());
			jli.setEducation(getJl().getSchool_education());
			jli.setExp(getJl().getExp());
			jli.setPhone(getJl().getPhone());
			jli.setEmail(getJl().getEmail());
			jli.setHope_city(getJl().getHope_city());
			jli.setHope_position(getJl().getHope_position());
			jli.setHope_salary(getJl().getHope_salary());
			jli.setSchool_name(getJl().getSchool_name());
			jli.setSchool_education(getJl().getSchool_education());
			jli.setSchool_major(getJl().getSchool_major());
	//		jli.setStart_school(getJl().getStart_school());
	//		jli.setEnd_school(getJl().getEnd_school());
			jli.setSelf_introduction(getJl().getSelf_introduction());
			jli.setImg("toosimple");//未实现上传图片
			jli.setProduce(getJl().getProduce());
			jli.setPro_introduction(getJl().getPro_introduction());
			
			Session s = HibernateSessionFactory.getSession();
			Transaction transaction = s.beginTransaction();
			
			s.saveOrUpdate(jli);
			
			transaction.commit();
			s.close();
			
			return "success";
		
	}

}
