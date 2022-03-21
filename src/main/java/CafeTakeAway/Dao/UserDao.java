package CafeTakeAway.Dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import CafeTakeAway.Entity.MapperUser;
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
}
