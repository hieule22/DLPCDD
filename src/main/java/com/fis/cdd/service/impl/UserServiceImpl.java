/**
 * 
 */
package com.fis.cdd.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fis.cdd.entity.User;
import com.fis.cdd.repository.UserRepository;
import com.fis.cdd.service.UserService;

/**
 * @author HaiNT
 *
 */
@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepository userRepository;

	@Override
	public User checkLogin(String username, String password) throws Exception {
		return userRepository.checkLogin(username, password);
	}

	@Override
	public List<User> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User findById(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User saveOrUpdate(User t) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete(Long id) throws Exception {
		// TODO Auto-generated method stub

	}
}
