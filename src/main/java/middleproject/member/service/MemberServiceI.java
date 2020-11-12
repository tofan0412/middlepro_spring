package middleproject.member.service;

import java.util.List;
import java.util.Map;

import middleproject.member.model.MemberVo;


public interface MemberServiceI {
	MemberVo login(Map<String, String> userInfo);
	
	MemberVo getMember(String userId);
	
	List<MemberVo> getMemberAll();
	
	Map<String, Object> getMemberPage(Map<String, Integer> page);
	
	int insertMember(MemberVo memberVo);
	
	int deleteMember(String userid);
	
	int updateMember(MemberVo memberVo);
}
