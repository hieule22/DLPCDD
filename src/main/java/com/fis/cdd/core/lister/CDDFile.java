package com.fis.cdd.core.lister;

import com.fis.cdd.core.util.MD5Checksum;
import org.apache.commons.io.FilenameUtils;

import java.io.File;
import java.io.IOException;
import java.util.Date;

/**
 * Created by Hieu Le on 7/23/15.
 * Simplified representation of a File object
 */
public class CDDFile {

    private String absolutePath;
    private String name;
    private String extension;
    private long size;
    private Date lastModify;
    private Date lastScan;
    private boolean canRead;

    public CDDFile(File file) {
        absolutePath = file.getAbsolutePath();
        name = file.getName();
        extension = FilenameUtils.getExtension(name);
        size = file.length();
        canRead = file.canRead();
    }

    public String getAbsolutePath() {
        return absolutePath;
    }

    public String getName() {
        return name;
    }

    public String getExtension() {
        return extension;
    }

    public long length() {
        return size;
    }

    public boolean canRead() {
        return canRead;
    }

    public Date getLastModify() {
        return lastModify;
    }

    public void setLastModify(Date lastModify) {
        this.lastModify = lastModify;
    }

    public Date getLastScan() {
        return lastScan;
    }

    public void setLastScan(Date lastScan) {
        this.lastScan = lastScan;
    }

    public String checksum() throws IOException {
        return MD5Checksum.checksum(absolutePath);
    }
}
