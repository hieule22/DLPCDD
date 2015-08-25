/**
 * 
 */
package com.fis.cdd.dao;

import java.util.List;

/**
 * @author HaiNT
 *
 */
public interface BaseDAO<T> {

	T findById(Integer id);

	List<T> findAll();

	void save(T t) throws Exception;

	void update(T t) throws Exception;

	void delete(Integer id) throws Exception;
}
