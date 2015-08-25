package com.fis.cdd.core.lister;

import java.io.File;
import java.io.FileFilter;
import java.util.LinkedList;
import java.util.List;

import com.fis.cdd.profile.entity.SearchConfig;
import com.fis.cdd.profile.profiles.OperationSystemProfile;
import com.fis.cdd.profile.profiles.ResultLog;
import org.apache.commons.io.FilenameUtils;

/**
 * List all files based on specific search configurations
 * Created by Hieu Le on 7/21/15.
 */
public class FileLister {
    // The default root directory
    private static final String DEFAULT_ROOT_PATH = "/";
    // The associated log
    private ResultLog log;
    // Directory and extension based configurations
    private SearchConfig dirConfig;
    private SearchConfig extConfig;

    public FileLister(OperationSystemProfile profile) {
        log = profile.getLog();
        dirConfig = profile.getDirConfig();
        extConfig = profile.getExtConfig();
    }

    // List all files satisfying the specific directory and
    // extension configurations from the default DEFAULT_ROOT_PATH
    public List<CDDFile> listFiles() {
        return listFiles(DEFAULT_ROOT_PATH);
    }

    // List all files satisfying the specific directory and
    // extension configurations from a designated root path
    public List<CDDFile> listFiles(String rootPath) {
        log.updateStep("File listing begins");
        List<CDDFile> fileList = new LinkedList<>();

        // If search option is INCLUSIVE, then recursively explore all included directories
        if (dirConfig.getSearchOption() == SearchConfig.SearchOption.INCLUSIVE) {
            for (String pathname : dirConfig.getElementSet()) {
                File root = new File(pathname);
                FileFilter filter = getFilter(SearchConfig.TRUE_INSTANCE, extConfig);
                explore(root, filter, fileList);
            }
            // Otherwise, search selectively under designated root, skipping unwanted directories
        } else {
            File root = new File(rootPath);
            FileFilter filter = getFilter(dirConfig, extConfig);
            explore(root, filter, fileList);
        }
        // Update log
        long totalBytes = 0;
        for (CDDFile child : fileList) totalBytes += child.length();
        log.setFilesTotal(fileList.size());
        log.setBytesTotal(totalBytes);
        return fileList;
    }

    private void explore(File root, FileFilter filter, List<CDDFile> fileList) {
        // Recursively explore all root's children if it's a directory
        if (root.isDirectory()) {
            for (File child : root.listFiles(filter))
                explore(child, filter, fileList);
        } else { // Otherwise add root to fileList
            fileList.add(new CDDFile(root));
            // Update number of files listed
            log.setFilesTotal(log.getBytesTotal() + 1);
        }
    }

    private static FileFilter getFilter(final SearchConfig dirConfig, final SearchConfig extConfig) {
        FileFilter filter = new FileFilter() {
            @Override
            public boolean accept(File file) {
                if (file.isDirectory())
                    return checkDir(file, dirConfig);
                else
                    return checkExt(file, extConfig);
            }
        };
        return filter;
    }

    private static boolean checkDir(File file, SearchConfig dirConfig) {
        // Check file accessibility
        if (!file.canRead())
            return false;
        SearchConfig.SearchOption option = dirConfig.getSearchOption();
        // Automatically return true if comprehensive search is enabled
        if (option == SearchConfig.SearchOption.COMPREHENSIVE)
            return true;
        String[] chunk = file.getAbsolutePath().substring(1).split("/");
        String pathname = "";
        for (int i = 0; i < chunk.length; i++) {
            pathname += "/" + chunk[i];
            if (dirConfig.getElementSet().contains(pathname))
                return (option == SearchConfig.SearchOption.INCLUSIVE) ? true : false;
        }
        return (option == SearchConfig.SearchOption.INCLUSIVE) ? false : true;
    }

    private static boolean checkExt(File file, SearchConfig extConfig) {
        // Check file accessibility
        if (!file.canRead())
            return false;
        SearchConfig.SearchOption option = extConfig.getSearchOption();
        // Automatically return true if comprehensive search is enabled
        if (option == SearchConfig.SearchOption.COMPREHENSIVE)
            return true;
        String extension = FilenameUtils.getExtension(file.getName());
        if (extConfig.getElementSet().contains(extension))
            return (option == SearchConfig.SearchOption.INCLUSIVE) ? true : false;
        else
            return (option == SearchConfig.SearchOption.INCLUSIVE) ? false : true;
    }


}



