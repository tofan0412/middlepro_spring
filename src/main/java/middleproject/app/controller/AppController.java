package middleproject.app.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import middleproject.app.model.ApplicationVo;
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
	public String isnert(ApplicationVo applicationVo) {
		int result = memberService.insert(applicationVo);
		
		if (result > 0) return "tiles.app_main";
		else return "tiles.app_write";
	}
	
	@RequestMapping("/listView")
	public String listView() {
		return "tiles.app_listView";
	}
	
	// HTML (JSP) 로 반환한다. 
	@RequestMapping("/list")
	public String list(String userid, Model model) {
		List<ApplicationVo> result = memberService.list(userid);
		
		model.addAttribute("list", result);
		return "app_listHTML";
	}
	
	@RequestMapping("/updateView")
	public String updateView(String ap_num, Model model) {
		ApplicationVo result = memberService.updateView(ap_num);
		
		model.addAttribute("application", result);
		return "app_updateView";
	}
	
	@RequestMapping("/update")
	public String update(ApplicationVo applicationVo) {
		logger.debug("자기소개서 이름 : {}", applicationVo.getAp_title());
		
		int result = memberService.update(applicationVo);
		
		if (result > 0) return "tiles.app_list";
		else return "tiles.app_main";
	}
	
	@RequestMapping("/deleteView")
	public String deleteView() {
		return "tiles.app_deleteView";
	}
	
	@RequestMapping("/deleteList")
	public String deleteList(String userid, Model model) {
		List<ApplicationVo> result = memberService.list(userid);
		
		model.addAttribute("list", result);
		return "app_deleteListHTML";
	}
	
	
}
