package com.fis.cdd.dao;

import com.fis.cdd.model.Users;

public interface UsersDAO {

	// login
	Users checkLogin(String username, String password);
}
