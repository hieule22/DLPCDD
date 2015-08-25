/**
 * 
 */
package com.fis.cdd.service;

import com.fis.cdd.model.RegularExpression;

/**
 * @author HaiNT
 *
 */
public interface RegexService extends BaseService<RegularExpression> {
	RegularExpression findByName(String name);
}