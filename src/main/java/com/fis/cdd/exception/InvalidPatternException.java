/**
 * 
 */
package com.fis.cdd.exception;

/**
 * @author HaiNT
 *
 */
public class InvalidPatternException extends RuntimeException {

	private static final long serialVersionUID = 1L;
	
	public InvalidPatternException(String msg) {
		super(msg);
	}
	
	public InvalidPatternException(String msg, Throwable throwable) {
		super(msg, throwable);
	}

}
