package middleproject.member.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import middleproject.member.model.MemberVo;
import middleproject.member.repository.MemberDaoI;


@Transactional
@Service("memberService")
public class MemberService implements MemberServiceI {
	private static final Logger logger = LoggerFactory.getLogger(MemberService.class);
	
	@Resource(name="memberDao")
	private MemberDaoI memberDao;
	
	public MemberService(){
//		memberDao = new MemberDao();
	}
	
	@Override
	public MemberVo getMember(String userId) {
		MemberVo member = memberDao.getMember(userId);
		return member;
	}

	@Override
	public List<MemberVo> getMemberAll() {
		
		List<MemberVo> memList = memberDao.getMemberAll();
		return memList;
	}

	@Override
	public Map<String, Object> getMemberPage(Map<String, Integer> page) {
		
		Map<String, Object> map = new HashMap<>();
		List<MemberVo> memList = memberDao.getMemberPage(page);
		map.put("memList", memList);
		
		int totalCnt = memberDao.selectMemberTotalCnt();
		int pages = (int)Math.ceil((double)totalCnt / page.get("pageSize"));
		
		map.put("pages", pages);
		
		return map;
	}

	@Override
	public int insertMember(MemberVo memberVo) {
		return memberDao.insertMember(memberVo);
	}

	@Override
	public int deleteMember(String userid) {
		int deleteCnt = memberDao.deleteMember(userid);
		return deleteCnt;
	}

	@Override
	public int updateMember(MemberVo memberVo) {
		int updateCnt = memberDao.updateMember(memberVo);
		
		return updateCnt;
	}

	@Override
	public MemberVo login(Map<String, String> userInfo) {
		return memberDao.login(userInfo);
	}
}
