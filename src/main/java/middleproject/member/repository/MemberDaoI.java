package middleproject.member.repository;

import java.util.List;
import java.util.Map;

import middleproject.member.model.MemberVo;


public interface MemberDaoI {
	MemberVo login(Map<String, String> userInfo);
	
	MemberVo getMember(String userId);
	
	List<MemberVo> getMemberAll();
	
	List<MemberVo> getMemberPage(Map<String, Integer> page);

	int selectMemberTotalCnt();
	
	int insertMember(MemberVo memberVo);
	
	int deleteMember(String userid);
	
	int updateMember(MemberVo memberVo);
}
