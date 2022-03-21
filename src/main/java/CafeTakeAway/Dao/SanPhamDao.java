package CafeTakeAway.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import CafeTakeAway.Entity.MapperSanPham;
import CafeTakeAway.Entity.SanPham;

@Repository
public class SanPhamDao {
	@Autowired
	JdbcTemplate _jdbcTemplate;
	
	public List<SanPham> GetDataSanPhamById(int id) {
		List<SanPham> list = new ArrayList<SanPham>();
		String sql = "select * from SanPham where MaSP = " + id;
		list = _jdbcTemplate.query(sql, new MapperSanPham());
		return list;
	}
	
	public List<SanPham> GetAllDataSanPham() {
		List<SanPham> list = new ArrayList<SanPham>();
		String sql = "select * from SanPham";
		list = _jdbcTemplate.query(sql, new MapperSanPham());
		return list;
	}
	
	public List<SanPham> GetDataSanPhamKM() {
		List<SanPham> list = new ArrayList<SanPham>();
		String sql = "select * from SanPham where KhuyenMai = true";
		list = _jdbcTemplate.query(sql, new MapperSanPham());
		return list;
	}
	
	public List<SanPham> GetDataSanPhamMoiNhat() {
		List<SanPham> list = new ArrayList<SanPham>();
		String sql = "select * from SanPham where MoiNhat = true order by MaSp desc";
		list = _jdbcTemplate.query(sql, new MapperSanPham());
		return list;
	}
	
	public List<SanPham> GetDataSanPhamByLoaiSP(int id) {
		List<SanPham> list = new ArrayList<SanPham>();
		String sql = "select * from SanPham where MaLoai = " + id;
		list = _jdbcTemplate.query(sql, new MapperSanPham());
		return list;
	}
	
	public List<SanPham> GetAllDataSanPham_Page(int start, int end) {
		List<SanPham> list = new ArrayList<SanPham>();
		String sql = "select * from SanPham " + " limit " + start + ", " + end;
		list = _jdbcTemplate.query(sql, new MapperSanPham());
		return list;
	}
	
	public List<SanPham> GetDataSanPham_Page(int id, int start, int end) {
		List<SanPham> list = new ArrayList<SanPham>();
		String sql = "select * from SanPham where MaLoai = " + id + " limit " + start + ", " + end;
		list = _jdbcTemplate.query(sql, new MapperSanPham());
		return list;
	}
	
	public SanPham FindSanPhamById(int id) {
		String sql = "select * from SanPham where MaSP = " + id;
		SanPham sp = _jdbcTemplate.queryForObject(sql, new MapperSanPham());
		return sp;
	}
}
