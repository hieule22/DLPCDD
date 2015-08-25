/**
 * 
 */
package com.fis.cdd.service;

import com.fis.cdd.entity.User;

/**
 * @author HaiNT
 *
 */
public interface UserService extends BaseService<User> {
	User checkLogin(String username, String password) throws Exception;
}
