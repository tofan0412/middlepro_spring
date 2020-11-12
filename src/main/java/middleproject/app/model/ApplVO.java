package middleproject.app.model;

import org.hibernate.validator.constraints.NotEmpty;

public class ApplVO {
	private int ap_num;
	private String rec_num;
	@NotEmpty
	private String ap_motivation;
	@NotEmpty
	private String ap_name;
	@NotEmpty
	private String ap_plan;
	private String ap_date;
	private String ap_agree;
	private String ap_accept;
	@NotEmpty
	private String mem_id;
	@NotEmpty
	private String ap_title;
	@NotEmpty
	private String ap_introduce;
	
	public String getAp_name() {
		return ap_name;
	}
	public void setAp_name(String ap_name) {
		this.ap_name = ap_name;
	}
	public int getAp_num() {
		return ap_num;
	}
	public void setAp_num(int ap_num) {
		this.ap_num = ap_num;
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
	public String getAp_agree() {
		return ap_agree;
	}
	public void setAp_agree(String ap_agree) {
		this.ap_agree = ap_agree;
	}
	public String getAp_accept() {
		return ap_accept;
	}
	public void setAp_accept(String ap_accept) {
		this.ap_accept = ap_accept;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
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
	public String getRec_num() {
		return rec_num;
	}
	public void setRec_num(String rec_num) {
		this.rec_num = rec_num;
	}
}
