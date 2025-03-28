package miniproject;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class main_controller {

	@Resource(name = "index_DAO")
	private index_DAO dao;
	
	@Resource(name = "md5_pass")
	private md5_pass pass;

	@GetMapping("/index.do")
	public String index(Model m) {
		return null;
	}

	@GetMapping("/copyright.do")
	public String copyright(Model m) {
		List<copyright_DTO> crList = this.dao.copyright_select();
		m.addAttribute("crList", crList);
		return null;
	}
	
	@GetMapping("/webinfo.do")
	public String webinfo(Model m) {
		List<webinfo_DTO> wiList = this.dao.webinfo_select();
		m.addAttribute("wiList", wiList);
		return "webinfo";
	}
	
	@GetMapping("/mdchoice.do")
	public String mdchoice(Model m) {
		List<mdchoice_DTO> mdList = this.dao.mdchoice_select();
		m.addAttribute("mdList", mdList);
		return "mdchoice";
	}
	
	@GetMapping("/login.do")
	public String login(Model m) {
		return null;
	}
	
	@PostMapping("/joinok.do")
	public String joinok(member_DTO dto, Model m) throws Exception {
	    // 비밀번호 암호화
		String enc_pw = pass.md5_make(dto.getMpass());
	    dto.setMpass(enc_pw);
		
		int result = this.dao.member_insert(dto);
	    
	    String msg = "";
	    if (result > 0) {
	        msg = "alert('회원가입이 완료되었습니다.'); location.href='./login.jsp';";
	    } else {
	        msg = "alert('회원가입 error'); history.go(-1);";
	    }

	    m.addAttribute("msg", msg);

	    return "index";
	}
}







