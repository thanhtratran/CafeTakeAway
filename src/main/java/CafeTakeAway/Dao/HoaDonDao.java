package CafeTakeAway.Dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import CafeTakeAway.Dto.CartDto;
import CafeTakeAway.Dto.MapperSanPham_HoaDon;
import CafeTakeAway.Dto.SanPham_HoaDon;
import CafeTakeAway.Entity.HoaDon;
import CafeTakeAway.Entity.MapperHoaDon;
import CafeTakeAway.Entity.MapperSanPham;
import CafeTakeAway.Entity.SanPham;
import CafeTakeAway.Entity.User;
import CafeTakeAway.Service.User.CartServiceImpl;

@Repository
public class HoaDonDao {
	@Autowired
	JdbcTemplate _jdbcTemplate;
	@Autowired
	CartServiceImpl cartservice;
	
	public int getMaxIdHoaDon() {
		String sql = "select max(MaHoaDon) from hoadon";
		if (_jdbcTemplate.queryForObject(sql, int.class) != null) {
			return (int) _jdbcTemplate.queryForObject(sql, int.class);
		}
		return 0;
	}
	
	public void addSanPham(HashMap<Integer, CartDto> cart, int id) {
		for (Map.Entry<Integer, CartDto> itemCart : cart.entrySet()) {
			 String sql = "insert into ct_hoadon(mahoadon, masp, soluong) values(" + id + ", " + itemCart.getValue().getProduct().getMaSP() + ", " + itemCart.getValue().getQuanty() + ")";
			 _jdbcTemplate.update(sql);
		}
		return;
	}
	
	public void createNewHoaDon(HttpSession session, HashMap<Integer, CartDto> cart) {
		User user = (User) session.getAttribute("userInfo");
		java.util.Date date=new java.util.Date();
		java.sql.Date sqlDate=new java.sql.Date(date.getTime());
		int maHoaDon = getMaxIdHoaDon() + 1;
		String sql = "insert into hoadon(mahoadon, manv, ngaylap, tongtien) values(" + maHoaDon + ", '" + user.getMaNV() + "', '" + sqlDate + "', " + cartservice.TotalPrice(cart) + ")";
		_jdbcTemplate.update(sql);
		addSanPham(cart, maHoaDon);
		return;
	}
	
	public List<HoaDon> getAllHoaDon() {
		List<HoaDon> list = new ArrayList<HoaDon>();
		String sql = "select * from hoadon";
		list = _jdbcTemplate.query(sql, new MapperHoaDon());
		return list;
	}
		
	public List<SanPham_HoaDon> getSanPhamsfromHoaDon(int id) {
		List<SanPham_HoaDon> list = new ArrayList<SanPham_HoaDon>();
		String sql = "select anh, tensp, soluong, dongia, dongiasaukm from ct_hoadon join sanpham on sanpham.masp = ct_hoadon.masp where mahoadon =" + id;
		list = _jdbcTemplate.query(sql, new MapperSanPham_HoaDon());
		return list;
	}
	
	
}
