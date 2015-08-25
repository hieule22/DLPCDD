/**
 * 
 */
package com.fis.cdd.service;

import java.util.List;

/**
 * @author HaiNT Base service
 */
public interface BaseService<T> {

	List<T> findAll();

	T findById(Long id);	

	T saveOrUpdate(T t) throws Exception;

	void delete(Long id) throws Exception;
}
