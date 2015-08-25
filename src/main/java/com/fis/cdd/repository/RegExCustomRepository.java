/**
 * 
 */
package com.fis.cdd.repository;

import com.fis.cdd.entity.RegularExpression;

/**
 * @author HaiNT
 *
 */
public interface RegExCustomRepository {
	RegularExpression findByName(String name);
}
