package CafeTakeAway.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import CafeTakeAway.Entity.LoaiSanPham;
import CafeTakeAway.Entity.MapperLoaiSanPham;

@Repository
public class LoaiSanPhamDao {
	@Autowired
	JdbcTemplate _jdbcTemplate;
	
	public List<LoaiSanPham> GetDataLoaiSanPham() {
		List<LoaiSanPham> list = new ArrayList<LoaiSanPham>();
		String sql = "select * from loaisanpham";
		list = _jdbcTemplate.query(sql, new MapperLoaiSanPham());
		return list;
	}
	
	public List<LoaiSanPham> GetTenLoaiSanPhamByID(int id) {
		List<LoaiSanPham> list = new ArrayList<LoaiSanPham>();
		String sql = "select * from loaisanpham where MaLoai = (select MaLoai from sanpham where masp = " + id + " )";
		list = _jdbcTemplate.query(sql, new MapperLoaiSanPham());
		return list;
	}
}
