/**
 * 
 */
package com.fis.cdd.model;

import java.util.Date;

/**
 * @author HaiNT
 *
 */
public class ScanHistory {

	private long id;
	private long filesTotal;
	private long totalFindCount;
	private Date scanDate;

	public ScanHistory() {

	}

	public ScanHistory(long id, long filesTotal, long totalFindCount, Date scanDate) {
		super();
		this.id = id;
		this.filesTotal = filesTotal;
		this.totalFindCount = totalFindCount;
		this.scanDate = scanDate;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public long getFilesTotal() {
		return filesTotal;
	}

	public void setFilesTotal(long filesTotal) {
		this.filesTotal = filesTotal;
	}

	public long getTotalFindCount() {
		return totalFindCount;
	}

	public void setTotalFindCount(long totalFindCount) {
		this.totalFindCount = totalFindCount;
	}

	public Date getScanDate() {
		return scanDate;
	}

	public void setScanDate(Date scanDate) {
		this.scanDate = scanDate;
	}

}
