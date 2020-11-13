package middleproject.member.service;

import java.util.List;
import java.util.Map;

import middleproject.app.model.ApplicationVo;
import middleproject.member.model.MemberVo;


public interface MemberServiceI {
	MemberVo login(Map<String, String> userInfo);
	
	int insert(ApplicationVo applicationVo);
	
	List<ApplicationVo> list(String userid);
	
	ApplicationVo updateView(String ap_num);
	
	int update(ApplicationVo applicationVo);
}
