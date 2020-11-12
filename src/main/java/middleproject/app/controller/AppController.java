package middleproject.app.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import middleproject.member.model.MemberVo;
import middleproject.member.service.MemberServiceI;


@RequestMapping("/app")
@Controller
public class AppController {
	private static final Logger logger = LoggerFactory.getLogger(AppController.class);
	
	@RequestMapping(path="/loginView")
	public String loginView() {
		logger.debug("loginView method ....");
		return "tiles.login";
	}
	
	@Resource
	private MemberServiceI memberService;
	
	@RequestMapping(path="/login")
	public String login(String userid, String pass, HttpSession session) {
		logger.debug("login Method ....");
		
		Map<String, String> userInfo = new HashMap<String, String>();
		userInfo.put("userid", userid);
		userInfo.put("pass", pass);
		
		MemberVo result = memberService.login(userInfo);
		
		logger.debug("");
		
		if (result.getUserid().equals(userid)) {
			session.setAttribute("session_id", result.getUserid());
			session.setAttribute("session_usernm", result.getUsernm());
			return "tiles.app_main";
		}
		else {
			return "tiles.login";
		}
	}
	
	@RequestMapping(path="/mainView")
	public String main() {
		return "tiles.app_main";
	}
	
	@RequestMapping("/write")
	public String write() {
		return "tiles.app_write";
	}
	
	@RequestMapping("/insert")
	public String isnert() {
		
		return "";
	}
}
