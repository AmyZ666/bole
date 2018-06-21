package BoleAction;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.junit.Test;

import model.User;
import model.company;
import model.product;
import model.product1;
import model.product2;

import test.HibernateSessionFactory;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class test {
	@Test
	public void CompanyList() throws SQLException {
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();

		List<company> list = session.createSQLQuery("select * from company")
				.addEntity(company.class).list();
		tx.commit();
		session.close();
		ArrayList<company> coms = new ArrayList<company>();
		company com;
		for (int i = 0; i < list.size(); i++) {
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

		}
	}
}
