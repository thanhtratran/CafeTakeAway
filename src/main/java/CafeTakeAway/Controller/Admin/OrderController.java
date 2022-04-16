package CafeTakeAway.Controller.Admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class OrderController {
	@RequestMapping("/admin/orders")
	public ModelAndView Order() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/orders");
		
		return mv;
	}
	
	@RequestMapping("/admin/orderDetail")
	public ModelAndView OrderDetail() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/orderDetail");
		
		return mv;
	}
}
