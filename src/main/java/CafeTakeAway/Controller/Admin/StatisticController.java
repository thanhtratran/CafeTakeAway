package CafeTakeAway.Controller.Admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StatisticController {
	@RequestMapping("/admin/statistics")
	public ModelAndView Statistic() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("admin/statistic/statistics");
		return mv;
	}
}
