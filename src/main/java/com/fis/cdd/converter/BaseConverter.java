/**
 * 
 */
package com.fis.cdd.converter;

/**
 * @author HaiNT
 *
 */
public interface BaseConverter<F, T> {
	T doForward(F f);

	F doBackward(T t);
}
