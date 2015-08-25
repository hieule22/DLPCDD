/**
 * 
 */
package com.fis.cdd.repository;

import com.fis.cdd.entity.User;

/**
 * @author HaiNT
 *
 */
public interface UserCustomRepository {

	User checkLogin(String username, String password) throws Exception;
}
