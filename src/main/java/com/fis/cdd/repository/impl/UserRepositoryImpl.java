/**
 * 
 */
package com.fis.cdd.repository.impl;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import com.fis.cdd.entity.User;
import com.fis.cdd.repository.UserCustomRepository;

/**
 * @author HaiNT
 *
 */
@Repository
public class UserRepositoryImpl implements UserCustomRepository {

	@PersistenceContext
	private EntityManager entityManager;

	@Override
	public User checkLogin(String username, String password) throws Exception {
		User user = null;
		try {
			TypedQuery<User> query = entityManager
					.createQuery("select c from User c where username = ?1 and password = ?2", User.class);
			query.setParameter(1, username);
			query.setParameter(2, password);
			user = query.getSingleResult();
		} catch (NoResultException nre) {
			return null;
		} catch (Exception e) {
			throw new RuntimeException("An error has been encounted!");
		}
		return user;
	}

}
