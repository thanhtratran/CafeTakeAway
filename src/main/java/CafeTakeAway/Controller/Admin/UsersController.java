package CafeTakeAway.Controller.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import CafeTakeAway.Service.Admin.UserServiceImpl;

@Controller
public class UsersController {
	@Autowired
	UserServiceImpl userService;
	
	@RequestMapping("/admin/users")
	public ModelAndView Users() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/user/users");
		mv.addObject("users", userService.getAllUser());
		return mv;
	}
	
	@RequestMapping("/admin/user/update/{id}")
	public ModelAndView UpdateUser(@PathVariable String id) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/user/update");
		String[] quyen = {"ADMIN", "PRODUCT_MANAGER", "SALE_MANAGER", "USER_MANAGER"};
		
		mv.addObject("user", userService.getNhanVienById(id));
		mv.addObject("quyen", quyen);
		return mv;
	}
}
