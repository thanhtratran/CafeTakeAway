package CafeTakeAway.Service.User;

import org.springframework.stereotype.Service;

import CafeTakeAway.Entity.User;

@Service
public interface IAccountService {
	public boolean checkAccount(User user);
}
