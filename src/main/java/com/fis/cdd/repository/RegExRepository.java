/**
 * 
 */
package com.fis.cdd.repository;

import org.springframework.data.repository.CrudRepository;

import com.fis.cdd.entity.RegularExpression;

/**
 * @author HaiNT
 *
 */
public interface RegExRepository extends CrudRepository<RegularExpression, Long>, RegExCustomRepository {

}
