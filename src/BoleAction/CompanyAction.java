package BoleAction;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import test.HibernateSessionFactory;

import model.company;
import model.founder;
import model.position;
import model.pro_com;
import model.weal;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class CompanyAction extends ActionSupport implements SessionAware {
	public company com;
	public weal wl;
	public founder fd;
	public pro_com pd;
	public position ps;
	private File uploadImage; //得到上传的文件
    private String uploadImageContentType; //得到文件的类型
    private String uploadImageFileName; //得到文件的名称
	private Map session;

	public void setSession(Map session) {

		this.session = session;
	}

	public File getUploadImage() {
		return uploadImage;
	}

	public void setUploadImage(File uploadImage) {
		this.uploadImage = uploadImage;
	}

	public String getUploadImageContentType() {
		return uploadImageContentType;
	}

	public void setUploadImageContentType(String uploadImageContentType) {
		this.uploadImageContentType = uploadImageContentType;
	}

	public String getUploadImageFileName() {
		return uploadImageFileName;
	}

	public void setUploadImageFileName(String uploadImageFileName) {
		this.uploadImageFileName = uploadImageFileName;
	}

	public position getPs() {
		return ps;
	}

	public void setPst(position ps) {
		this.ps = ps;
	}

	public pro_com getPd() {
		return pd;
	}

	public void setPd(pro_com pd) {
		this.pd = pd;
	}

	public founder getFd() {
		return fd;
	}

	public void setFd(founder fd) {
		this.fd = fd;
	}

	public weal getWl() {
		return wl;
	}

	public void setWl(weal wl) {
		this.wl = wl;
	}

	public company getCom() {
		return com;
	}

	public void setCom(company com) {
		this.com = com;
	}

	public String company1() throws Exception {

		company c = new company();
		int id = (Integer) (session.get("id"));
		c.setId(id);
		c.setName(getCom().getName());
		c.setStage(getCom().getStage());
		c.setShort_name(getCom().getShort_name());
		c.setLogo("logo");
		c.setWebsite(getCom().getWebsite());
		c.setAddress(getCom().getAddress());
		c.setDomain(getCom().getDomain());
		c.setSize(getCom().getSize());
		c.setStage(getCom().getStage());
		c.setShort_introduce(getCom().getShort_introduce());
		c.setStatus(1);
		String realPath="C:\\img";
		System.out.println(realPath);
		System.out.println(uploadImageFileName);
		File file = new File(realPath);
		c.setLogo(realPath+"\\"+uploadImageFileName);
		// 测试此抽象路径名表示的文件或目录是否存在。若不存在，创建此抽象路径名指定的目录，包括所有必需但不存在的父目录。
		if (!file.exists())
			file.mkdirs();

		try {
			// 保存文件
			FileUtils.copyFile(uploadImage, new File(file, uploadImageFileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
		Session s = HibernateSessionFactory.getSession();
		Transaction transaction = s.beginTransaction();
		s.saveOrUpdate(c);
		transaction.commit();
		s.close();

		// System.out.println("这个id是：" + id);

		return "success";
	}

	public String company2() throws Exception {
		weal w = new weal();
		int com_id = (Integer) (session.get("id"));
		w.setCom_id(com_id);
		w.setWeal_name(getWl().getWeal_name());

		// System.out.println(getWl().getWeal_name());
		// System.out.println(com_id);

		Session s = HibernateSessionFactory.getSession();
		Transaction transaction = s.beginTransaction();

		s.save(w);

		transaction.commit();
		s.close();

		return "success";
	}

	public String company3() throws Exception {
		// System.out.println(getFd().getName());
		// System.out.println(getFd().getPosition());

		founder f = new founder();
		int com_id = (Integer) (session.get("id"));

		System.out.println(com_id);

		f.setCom_id(com_id);
		f.setName(getFd().getName());
		f.setIntroduce(getFd().getIntroduce());
		f.setPosition(getFd().getPosition());
		f.setSina(getFd().getSina());

		Session s = HibernateSessionFactory.getSession();
		Transaction transaction = s.beginTransaction();

		s.saveOrUpdate(f);

		transaction.commit();
		s.close();

		return "success";
	}

	public String company4() throws Exception {
		// System.out.println(getPd().getName());
		// System.out.println(getPd().getIntroduce());

		pro_com pc = new pro_com();
		int com_id = (Integer) (session.get("id"));

		System.out.println(com_id);

		pc.setCom_id(com_id);
		pc.setIntroduce(getPd().getIntroduce());
		pc.setName(getPd().getName());
		pc.setUrl(getPd().getUrl());
		pc.setImg("YGY最帅");

		Session s = HibernateSessionFactory.getSession();
		Transaction transaction = s.beginTransaction();

		s.saveOrUpdate(pc);

		transaction.commit();
		s.close();

		return "success";
	}

	public String company5() throws Exception {
		// company c = new company();
		String introduce = (getCom().getIntroduce());
		int id = (Integer) (session.get("id"));
		// c.setId(id);

		Session s = HibernateSessionFactory.getSession();
		Transaction transaction = s.beginTransaction();

		// hql更新部分列
		Query query = s.createQuery("update company t set t.introduce = '"
				+ introduce + "' where id = '" + id + "'");
		query.executeUpdate();

		// s.saveOrUpdate(c);
		transaction.commit();
		s.close();
		return "success";
	}

	public String create() throws Exception {
		System.out.println(getPs().getName());
		position pst = new position();

		pst.setName(getPs().getName());
		pst.setAddress(getPs().getAddress());
		pst.setDetail_address(getPs().getDetail_address());
		pst.setExp(getPs().getExp());
		pst.setEmail(getPs().getEmail());
		pst.setSalary(getPs().getSalary());
		pst.setEducution(getPs().getEducution());
		pst.setTempt(getPs().getTempt());
		int id = (Integer) (session.get("id"));
		pst.setCom_id(id);
		pst.setCom_founder("toosimple");
		pst.setCom_name("toosimple");
		pst.setDomain("互联网");
		pst.setSize("1024");
		pst.setStage("已上市");
		pst.setHot_num(0);
		pst.setStart_time(new Date());

		Session s = HibernateSessionFactory.getSession();
		Transaction transaction = s.beginTransaction();

		s.saveOrUpdate(pst);

		transaction.commit();
		s.close();
		return "success";
	}

	public String companylist() throws Exception {
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();

		List<company> list = session
				.createSQLQuery("select c.* from company c order by id desc")
				.addEntity(company.class).list();
		tx.commit();
		session.close();

		ArrayList<company> comp = new ArrayList<company>();
		company com;

		for (int i = 0; i < list.size(); i++) {
			com = new company();
			com.setId(list.get(i).getId());
			com.setName(list.get(i).getName());
			com.setShort_name(list.get(i).getShort_name());
			com.setLogo(list.get(i).getLogo());
			com.setWebsite(list.get(i).getWebsite());
			com.setAddress(list.get(i).getAddress());
			com.setStart_date(list.get(i).getStart_date());
			com.setShort_introduce(list.get(i).getShort_introduce());
			com.setIntroduce(list.get(i).getIntroduce());
			com.setDomain(list.get(i).getDomain());
			com.setStage(list.get(i).getStage());
			com.setSize(list.get(i).getSize());
			com.setInvest_name(list.get(i).getInvest_name());
			com.setInvest_stage(list.get(i).getInvest_stage());
			comp.add(com);
		}
		ActionContext.getContext().getSession().put("comp_all", comp);
		return "success";
	}

	public String myhome() throws Exception {
		String id;
		HttpServletRequest request = ServletActionContext.getRequest();
		id = request.getParameter("id");

		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();

		List<company> list = session
				.createSQLQuery("select * from company where id = '" + id + "'")
				.addEntity(company.class).list();
		tx.commit();
		session.close();

		ArrayList<company> comp = new ArrayList<company>();
		company com;

		for (int i = 0; i < list.size(); i++) {
			com = new company();
			com.setId(list.get(i).getId());
			com.setName(list.get(i).getName());
			com.setShort_name(list.get(i).getShort_name());
			com.setLogo(list.get(i).getLogo());
			com.setWebsite(list.get(i).getWebsite());
			com.setAddress(list.get(i).getAddress());
			com.setStart_date(list.get(i).getStart_date());
			com.setShort_introduce(list.get(i).getShort_introduce());
			com.setIntroduce(list.get(i).getIntroduce());
			com.setDomain(list.get(i).getDomain());
			com.setStage(list.get(i).getStage());
			com.setSize(list.get(i).getSize());
			com.setInvest_name(list.get(i).getInvest_name());
			com.setInvest_stage(list.get(i).getInvest_stage());
			comp.add(com);
		}
		ActionContext.getContext().getSession().put("comp_sea", comp);

		return "success";
	}

}
