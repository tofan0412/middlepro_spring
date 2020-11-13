package middleproject.member.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import middleproject.app.model.ApplicationVo;
import middleproject.member.model.MemberVo;
import middleproject.member.repository.MemberDaoI;


@Transactional
@Service("memberService")
public class MemberService implements MemberServiceI {
	private static final Logger logger = LoggerFactory.getLogger(MemberService.class);
	
	@Resource(name="memberDao")
	private MemberDaoI memberDao;
	
	public MemberService(){
	}

	@Override
	public MemberVo login(Map<String, String> userInfo) {
		return memberDao.login(userInfo);
	}

	@Override
	public int insert(ApplicationVo applicationVo) {
		return memberDao.insert(applicationVo);
	}

	@Override
	public List<ApplicationVo> list(String userid) {
		return memberDao.list(userid);
	}

	@Override
	public ApplicationVo updateView(String ap_num) {
		return memberDao.updateView(ap_num);
	}

	@Override
	public int update(ApplicationVo applicationVo) {
		return memberDao.update(applicationVo);
	}
}
