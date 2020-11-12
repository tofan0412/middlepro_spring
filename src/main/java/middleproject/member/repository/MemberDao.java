package middleproject.member.repository;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import middleproject.member.model.MemberVo;


@Repository("memberDao")
public class MemberDao implements MemberDaoI{
	
	@Resource(name="SqlSessionTemplate")
	private SqlSessionTemplate sqlSession;
	
	public MemberDao() {
	}
	
	@Override
	public MemberVo getMember(String userId) {
		MemberVo memberVo = sqlSession.selectOne("member.getMember", userId);
		return memberVo;
	}

	@Override
	public List<MemberVo> getMemberAll() {
		List<MemberVo> memlist = sqlSession.selectList("member.getMemberAll");
		return memlist;
	}

	@Override
	public List<MemberVo> getMemberPage(Map<String, Integer> page) {
		return sqlSession.selectList("member.getMemberPage", page);
	}

	@Override
	public int selectMemberTotalCnt() {
		return sqlSession.selectOne("member.selectMemberTotalCnt");
	}

	@Override
	public int insertMember(MemberVo memberVo) {
		return sqlSession.insert("member.insertMember", memberVo);
	}

	@Override
	public int deleteMember(String userid) {
//		// TestCode에서 Spring이 관리하는 SqlSession에 대해 
		// 개발자가 임의로 commit을 하려고 하면 에러가 발생한다.
		return sqlSession.delete("member.deleteMember", userid);
	}

	@Override
	public int updateMember(MemberVo memberVo) {
		// TestCode에서 Spring이 관리하는 SqlSession에 대해 
		// 개발자가 임의로 commit을 하려고 하면 에러가 발생한다.
		return sqlSession.update("member.updateMember", memberVo);
	}

	@Override
	public MemberVo login(Map<String, String> userInfo) {
		return sqlSession.selectOne("member.login", userInfo);
	}
}
