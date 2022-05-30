package CafeTakeAway.Service.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import CafeTakeAway.Dao.UserDao;
import CafeTakeAway.Entity.NhanVien;

@Service
public class UserServiceImpl implements IUserService {
	@Autowired
	UserDao userDao;
	
	public List<NhanVien> getAllUser() {
		return userDao.getAllUser();
	}
	
	public NhanVien getNhanVienById(String id) {
		return userDao.getNhanVienById(id);
	}
}
