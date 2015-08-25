/**
 * 
 */
package com.fis.cdd.model;

import java.util.ArrayList;
import java.util.List;

/**
 * @author HaiNT
 *
 */
public class HistoryList {

	private List<ScanHistory> scanHistories;

	private List<Integer> values;

	public List<Integer> getValues() {
		if (values == null)
			values = new ArrayList<>();
		return values;
	}

	public void setValues(List<Integer> values) {
		this.values = values;
	}

	public List<ScanHistory> getScanHistories() {
		if (scanHistories == null)
			scanHistories = new ArrayList<>();
		return scanHistories;
	}

	public void setScanHistories(List<ScanHistory> scanHistories) {
		this.scanHistories = scanHistories;
	}
}
