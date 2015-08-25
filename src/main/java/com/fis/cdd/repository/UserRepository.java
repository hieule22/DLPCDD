/**
 * 
 */
package com.fis.cdd.repository;

import org.springframework.data.repository.CrudRepository;

import com.fis.cdd.entity.User;

/**
 * @author HaiNT
 *
 */
public interface UserRepository extends CrudRepository<User, Long>, UserCustomRepository {

}
