package middleproject.member.repository;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import middleproject.app.model.ApplicationVo;
import middleproject.member.model.MemberVo;


@Repository("memberDao")
public class MemberDao implements MemberDaoI{
	
	@Resource(name="SqlSessionTemplate")
	private SqlSessionTemplate sqlSession;
	
	public MemberDao() {
	}
	
	@Override
	public MemberVo login(Map<String, String> userInfo) {
		return sqlSession.selectOne("member.login", userInfo);
	}

	@Override
	public int insert(ApplicationVo applicationVo) {
		return sqlSession.insert("member.insert", applicationVo);
	}

	@Override
	public List<ApplicationVo> list(String userid) {
		return sqlSession.selectList("member.list", userid);
	}

	@Override
	public ApplicationVo updateView(String ap_num) {
		return sqlSession.selectOne("member.updateView", ap_num);
	}

	@Override
	public int update(ApplicationVo applicationVo) {
		return sqlSession.update("member.update", applicationVo);
	}
}
