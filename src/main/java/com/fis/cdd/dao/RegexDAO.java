/**
 * 
 */
package com.fis.cdd.dao;

import com.fis.cdd.model.RegularExpression;

/**
 * @author HaiNT
 *
 */
public interface RegexDAO extends BaseDAO<RegularExpression> {

	RegularExpression findByName(String name);
}
