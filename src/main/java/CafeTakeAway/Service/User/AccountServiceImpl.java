package CafeTakeAway.Service.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import CafeTakeAway.Dao.UserDao;
import CafeTakeAway.Entity.User;

@Service
public class AccountServiceImpl implements IAccountService {
	@Autowired
	UserDao userdao;
	
	public boolean checkAccount(User user) {
		user = userdao.getUserByID(user);
		if (user != null) {
			return true;
		}
		return false;
	}
	
}
