/**
 * 
 */
package com.fis.cdd.repository.impl;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import com.fis.cdd.entity.RegularExpression;
import com.fis.cdd.repository.RegExCustomRepository;

/**
 * @author HaiNT
 *
 */
@Repository
public class RegExRepositoryImpl implements RegExCustomRepository {

	@PersistenceContext
	private EntityManager entityManager;

	@Override
	public RegularExpression findByName(String name) {
		TypedQuery<RegularExpression> query = entityManager
				.createQuery("select c from RegularExpression c where name = ?1", RegularExpression.class);

		return query.getSingleResult();
	}

}
