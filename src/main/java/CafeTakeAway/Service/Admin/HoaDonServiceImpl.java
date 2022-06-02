package CafeTakeAway.Service.Admin;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import CafeTakeAway.Dao.HoaDonDao;
import CafeTakeAway.Dto.CartDto;
import CafeTakeAway.Dto.SanPham_HoaDon;
import CafeTakeAway.Entity.HoaDon;
import CafeTakeAway.Entity.SanPham;

@Service
public class HoaDonServiceImpl implements IHoaDonService {
	@Autowired
	HoaDonDao hoaDonDao;
	
	public void createNewHoaDon(HttpSession session, HashMap<Integer, CartDto> cart) {
		hoaDonDao.createNewHoaDon(session, cart);
		return;
		
	}

	public List<HoaDon> getAllHoaDon() {
		return hoaDonDao.getAllHoaDon();
	}
	
	public List<SanPham_HoaDon> getSanPhamsfromHoaDon(int id) {
		return hoaDonDao.getSanPhamsfromHoaDon(id);
	}
	
}
