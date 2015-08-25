package com.fis.cdd.controllers;

import static org.junit.Assert.*;

import org.junit.Test;

import com.fis.cdd.controller.BaseController;
import com.fis.cdd.controller.CDDController;
import com.fis.cdd.util.Constants;

/**
 * @author HaiNT
 *
 */
public class BaseControllerTest implements Constants{

	@Test
	public void testHandleRequestView() throws Exception {
		BaseController controller = new CDDController();
		String view = controller.display(null);
		assertTrue(view.equals(VIEW_INDEX));
	}

}
