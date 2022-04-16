package CafeTakeAway.Controller.Admin;

import static java.nio.charset.StandardCharsets.ISO_8859_1;
import static java.nio.charset.StandardCharsets.UTF_8;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import CafeTakeAway.Entity.LoaiSanPham;
import CafeTakeAway.Service.User.HomeServiceImpl;
import CafeTakeAway.Service.User.LoaiSanPhamServiceImpl;

@Controller
public class CategoriesController {
	@Autowired
	HomeServiceImpl homeservice;
	@Autowired
	LoaiSanPhamServiceImpl loaiSPService;
	
	@RequestMapping("/admin/categories")
	public ModelAndView Categories() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/category/categories");
		
		mv.addObject("loaisp", homeservice.GetDataLoaiSanPham());
		return mv;
	}
	
	@RequestMapping("/admin/categories/add")
	public ModelAndView Add() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/category/add");
		int maxId = loaiSPService.GetMaxMaLoai();
		maxId++;
		mv.addObject("maloai", maxId);
		mv.addObject("loaisp", new LoaiSanPham());
		
		return mv;
	}
	
	@RequestMapping(value = "/admin/categories/add", method = RequestMethod.POST)
	public String AddAction(@ModelAttribute("loaisp") LoaiSanPham loaisp) {
		int maxId = loaiSPService.GetMaxMaLoai();
		maxId++;
		loaisp.setMaLoai(maxId);
		
		byte[] bytes = loaisp.getTenLoai().getBytes(ISO_8859_1);
		String tenLoai = new String(bytes, UTF_8);
		loaisp.setTenLoai(tenLoai);
		
		loaiSPService.ThemLoaiSanPham(loaisp);
		return "redirect:/admin/categories";
	}
	
	@RequestMapping("/admin/categories/update/{id}")
	public ModelAndView Update(@PathVariable int id) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/category/update");
		mv.addObject("loaispById", loaiSPService.GetLoaiSanPhamByID(id));
		return mv;
	}
	
	@RequestMapping(value = "/admin/categories/update", method = RequestMethod.POST)
	public String UpdateAction(@ModelAttribute("loaispById") LoaiSanPham loaisp) {
		int maxId = loaiSPService.GetMaxMaLoai();
		if(loaisp.getMaLoai() < 0 || loaisp.getMaLoai() > maxId) {
			return "redirect:/admin/categories";
		}
		
		byte[] bytes = loaisp.getTenLoai().getBytes(ISO_8859_1);
		String tenLoai = new String(bytes, UTF_8);
		loaisp.setTenLoai(tenLoai);
		
		loaiSPService.UpdateLoaiSanPham(loaisp);
		
		return "redirect:/admin/categories";
	}
	
	
	@RequestMapping(value = "/admin/categories/delete/{id}", method = RequestMethod.GET)
	public String Delete(@PathVariable int id, @ModelAttribute("loaispById") LoaiSanPham loaisp) {
		int maxId = loaiSPService.GetMaxMaLoai();
		if(id < 0 || id > maxId) {
			return "redirect:/admin/categories";
		}
		
		loaiSPService.DeleteLoaiSanPham(id);
		
		return "redirect:/admin/categories";
	}
	
	
	
}
