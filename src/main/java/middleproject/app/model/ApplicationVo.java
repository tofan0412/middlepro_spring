package middleproject.app.model;

import java.sql.Date;

import org.hibernate.validator.constraints.NotEmpty;

public class ApplicationVo {
	private int ap_num;
	private String ap_name;
	private String ap_title;
	private String ap_introduce;
	private String ap_motivation;
	private String ap_plan;
	private String ap_date;
	private String userid;
	
	public int getAp_num() {
		return ap_num;
	}
	public void setAp_num(int ap_num) {
		this.ap_num = ap_num;
	}
	public String getAp_name() {
		return ap_name;
	}
	public void setAp_name(String ap_name) {
		this.ap_name = ap_name;
	}
	public String getAp_title() {
		return ap_title;
	}
	public void setAp_title(String ap_title) {
		this.ap_title = ap_title;
	}
	public String getAp_introduce() {
		return ap_introduce;
	}
	public void setAp_introduce(String ap_introduce) {
		this.ap_introduce = ap_introduce;
	}
	public String getAp_motivation() {
		return ap_motivation;
	}
	public void setAp_motivation(String ap_motivation) {
		this.ap_motivation = ap_motivation;
	}
	public String getAp_plan() {
		return ap_plan;
	}
	public void setAp_plan(String ap_plan) {
		this.ap_plan = ap_plan;
	}
	public String getAp_date() {
		return ap_date;
	}
	public void setAp_date(String ap_date) {
		this.ap_date = ap_date;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	
	
	

}
