/**
 * 
 */
package com.fis.cdd.exception;

/**
 * @author HaiNT
 *
 */
public class DuplicateNameException extends RuntimeException {

	private static final long serialVersionUID = 1L;
	
	public DuplicateNameException(String msg) {
		super(msg);
	}
	
	public DuplicateNameException(String msg, Throwable throwable) {
		super(msg, throwable);
	}

}
