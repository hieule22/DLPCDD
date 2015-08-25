package com.fis.cdd.service;

import com.fis.cdd.profile.profiles.ResultLog;
import com.fis.cdd.model.Scan;

/**
 * @author HaiNT
 *
 */
public interface ScanService extends BaseService<Scan>{
	
	ResultLog startScan(Scan scan) throws Exception;

}
