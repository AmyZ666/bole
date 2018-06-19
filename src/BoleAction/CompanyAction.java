package BoleAction;

import model.company;

import com.opensymphony.xwork2.ActionSupport;

public class CompanyAction extends ActionSupport{
	public company com;
		
	public company getCom() {
		return com;
	}
	public void setCom(company com) {
		this.com = com;
	}
	
	public String company1() throws Exception{
		System.out.println("23333333333");
		System.out.println(getCom().getName());
		System.out.println(getCom().getShort_name());
		System.out.println(getCom().getLogo());
		System.out.println(getCom().getWebsite());
		System.out.println(getCom().getAddress());
		System.out.println(getCom().getDomain());
		System.out.println(getCom().getSize());
		System.out.println(getCom().getStage());
		return "success";
	}
	public String company2() throws Exception{
		return "";
	}
	public String company3() throws Exception{
		return "";
	}
	public String company4() throws Exception{
		return "";
	}
	public String company5() throws Exception{
		return "";
	}
	
}
