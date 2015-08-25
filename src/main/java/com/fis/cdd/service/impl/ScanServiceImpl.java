/**
 * 
 */
package com.fis.cdd.service.impl;

import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Service;

import com.fis.cdd.profile.profiles.ResultLog;
import com.fis.cdd.model.Scan;
import com.fis.cdd.service.ScanService;
import com.fis.cdd.tool.ScanTool;

/**
 * @author HaiNT
 *
 */
@Service
public class ScanServiceImpl implements ScanService {

	@Override
	public ResultLog startScan(Scan scan) throws Exception {
		List<String> directories = Arrays.asList(scan.getDirectories().split("[\r\n]+"));
		return new ScanTool().scanDirectories(directories);
	}

	@Override
	public List<Scan> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Scan findById(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Scan saveOrUpdate(Scan t) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete(Long id) throws Exception {
		// TODO Auto-generated method stub

	}

}
