package com.fis.cdd.profile.profiles;

import java.util.LinkedList;
import java.util.List;

import com.fis.cdd.core.lister.CDDFile;
import com.fis.cdd.core.scanner.MatchInstance;

/**
 * Log that keeps track of scanning progress Created by Hieu Le on 7/21/15.
 */
public class ResultLog {

	// The status
	public enum Status {
		PENDING, DEPLOYING, RUNNING, DONE
	};

	private String name;
	private Status status;
	private String step;
	private long filesDone;
	private long filesTotal;
	private long bytesDone;
	private long bytesTotal;
	private double progress;
	private long totalFindCount;
	private List<MatchInstance> instanceList;
	private CDDFile currentDirectory;

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "ResultLog[name=" + name + ",status=" + status + ",step=" + step + ",filesDone=" + filesDone
				+ ",filesTotal=" + filesTotal + ",bytesDone=" + bytesDone + ",bytesTotal=" + bytesTotal + ",progress="
				+ progress + ",totalFindCount=" + totalFindCount + ", instanceList=" + instanceList + "]";
	}

	public ResultLog(String name) {
		this.name = name;
		instanceList = new LinkedList<>();
	}

	public ResultLog() {
		instanceList = new LinkedList<>();
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Status getStatus() {
		return status;
	}

	public void updateStatus(Status status) {
		this.status = status;
	}

	public String getStep() {
		return step;
	}

	public void updateStep(String step) {
		this.step = step;
	}

	public long getFilesDone() {
		return filesDone;
	}

	public long countDoneFiles() {
		return filesDone;
	}

	public void setFilesDone(long filesDone) {
		this.filesDone = filesDone;
	}

	public long countTotalFiles() {
		return filesTotal;
	}

	public void setFilesTotal(long filesTotal) {
		this.filesTotal = filesTotal;
	}

	public long countDoneBytes() {
		return bytesDone;
	}

	public void setBytesDone(long bytesDone) {
		this.bytesDone = bytesDone;
	}

	public long countTotalBytes() {
		return bytesTotal;
	}

	public void setBytesTotal(long bytesTotal) {
		this.bytesTotal = bytesTotal;
	}

	public double getProgress() {
		return progress;
	}

	public void setProgress(double progress) {
		this.progress = progress;
	}

	public long countTotalFindings() {
		return totalFindCount;
	}

	public void setTotalFindCount(long totalFindCount) {
		this.totalFindCount = totalFindCount;
	}

	public List<MatchInstance> getInstanceList() {
		return instanceList;
	}

	public void setInstanceList(List<MatchInstance> instanceList) {
		this.instanceList = instanceList;
	}

	public long getFilesTotal() {
		return filesTotal;
	}

	public long getBytesDone() {
		return bytesDone;
	}

	public long getBytesTotal() {
		return bytesTotal;
	}

	public long getTotalFindCount() {
		return totalFindCount;
	}

	public void setStatus(Status status) {
		this.status = status;
	}

	public void setStep(String step) {
		this.step = step;
	}

	public CDDFile getCurrentDirectory() {
		return currentDirectory;
	}

	public void setCurrentDirectory(CDDFile currentDirectory) {
		this.currentDirectory = currentDirectory;
	}
}
