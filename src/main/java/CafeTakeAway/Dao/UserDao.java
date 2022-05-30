package CafeTakeAway.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import CafeTakeAway.Entity.MapperNhanVien;
import CafeTakeAway.Entity.MapperUser;
import CafeTakeAway.Entity.NhanVien;
import CafeTakeAway.Entity.User;

@Repository
public class UserDao {
	@Autowired
	JdbcTemplate _jdbcTemplate;
	
	public User getUserByID(User user) {
		String sql = "select * from taikhoan where username = '" + user.getUsername() + "' and password = '" + user.getPassword() + "'";
		User result = _jdbcTemplate.queryForObject(sql, new MapperUser());
		return result;
	}
	
	public List<NhanVien> getAllUser() {
		List<NhanVien> list = new ArrayList<NhanVien>();
		String sql = "select nhanvien.MaNhanVien, Ho, Ten, NgaySinh, DiaChi, GioiTinh, Email, Sdt, CMND, MaDiaDiem, "
				+ "ChucVu from nhanvien join taikhoan on nhanvien.MaNhanVien = taikhoan.manv";
		
		list = _jdbcTemplate.query(sql, new MapperNhanVien());
		return list;
	}
	
	public NhanVien getNhanVienById(String id) {
		String sql = "select nhanvien.MaNhanVien, Ho, Ten, NgaySinh, DiaChi, GioiTinh, Email, Sdt, CMND, MaDiaDiem, ChucVu from "
				+ "nhanvien join taikhoan on nhanvien.MaNhanVien = taikhoan.manv where MaNhanVien = '" + id + "'";
		NhanVien nv = _jdbcTemplate.queryForObject(sql, new MapperNhanVien());
		return nv;
	}
}
