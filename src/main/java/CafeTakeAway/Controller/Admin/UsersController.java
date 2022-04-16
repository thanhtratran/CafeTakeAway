package CafeTakeAway.Controller.Admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UsersController {
	@RequestMapping("/admin/users")
	public ModelAndView Users() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/users");
		
		return mv;
	}
}
