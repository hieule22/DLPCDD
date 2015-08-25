/**
 * 
 */
package com.fis.cdd.exception;

/**
 * @author HaiNT
 *
 */
public class UnhandledOperationException extends RuntimeException {

	private static final long serialVersionUID = 1L;

	public UnhandledOperationException(String message, Throwable cause) {
		super(message, cause);
	}

	public UnhandledOperationException(String message) {
		super(message);
	}
}
