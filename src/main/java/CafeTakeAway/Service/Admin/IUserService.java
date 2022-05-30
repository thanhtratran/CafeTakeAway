package CafeTakeAway.Service.Admin;

import java.util.List;

import org.springframework.stereotype.Service;

import CafeTakeAway.Entity.NhanVien;

@Service
public interface IUserService {
	public List<NhanVien> getAllUser();
	public NhanVien getNhanVienById(String id);
	
}
