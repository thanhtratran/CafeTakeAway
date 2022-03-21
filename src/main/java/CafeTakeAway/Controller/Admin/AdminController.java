package CafeTakeAway.Controller.Admin;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import CafeTakeAway.Entity.User;

@Controller
public class AdminController {
	
	@RequestMapping("/admin")
	public ModelAndView AdminHome(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/admin/index");
		User u = (User) session.getAttribute("userInfo");
		/*
		 * if (u == null) { mv.setViewName("redirect:login"); }
		 */
		
		
		return mv;
	}
	
}
