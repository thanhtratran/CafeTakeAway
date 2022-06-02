package CafeTakeAway.Controller.Admin;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import CafeTakeAway.Service.Admin.HoaDonServiceImpl;
import CafeTakeAway.Service.User.CartServiceImpl;

@Controller
public class OrderController {
	@Autowired
	CartServiceImpl cartservice;
	@Autowired
	HoaDonServiceImpl hoaDonService;
	
	@RequestMapping("/admin/orders")
	public ModelAndView Order() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/order/orders");
		
		mv.addObject("hoadon", hoaDonService.getAllHoaDon());
		return mv;
	}
	
	@RequestMapping("/admin/order/orderDetail/{id}")
	public ModelAndView OrderDetail(HttpServletRequest request, HttpSession session, @PathVariable int id) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/order/orderDetail");
		
		mv.addObject("total", 0);
		mv.addObject("sanpham", hoaDonService.getSanPhamsfromHoaDon(id));
		return mv;
	}
	
	
}
