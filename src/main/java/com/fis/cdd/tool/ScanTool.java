/**
 * 
 */
package com.fis.cdd.tool;

import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.websocket.ContainerProvider;
import javax.websocket.WebSocketContainer;
import javax.xml.bind.JAXBException;

import com.fis.cdd.core.lister.CDDFile;
import com.fis.cdd.core.lister.FileLister;
import com.fis.cdd.profile.entity.SearchConfig;
import com.fis.cdd.profile.entity.SearchConfig.SearchOption;
import com.fis.cdd.profile.scantype.WindowsFileSystemAgent;
import com.fis.cdd.profile.profiles.OperationSystemProfile;
import com.fis.cdd.profile.profiles.ResultLog;
import com.fis.cdd.core.scanner.FileScanner;
import com.fis.cdd.core.scanner.MatchInstance;
import com.fis.cdd.endpoint.client.MyClient;
import com.google.gson.Gson;

/**
 * @author HaiNT
 *
 */
public class ScanTool {

	private static final String PROFILE_0 = "Locahost";
	private final String REGEX_PATH = "regularExpression.xml";

	public ResultLog scanDirectories(List<String> directories) throws JAXBException, IOException {
		// Set up a new profile
		OperationSystemProfile profile = new WindowsFileSystemAgent();
		profile.setProfileName(PROFILE_0);
		// TODO cardList has been parsed and read in inside Profile class
//		List<Card> cardList = new RegExXmlParser().parse(REGEX_PATH, CardList.class).getCardList();
//		System.out.println("cardList.size(): " + cardList.size());
//		profile.getRegularExpressions().setCardList(cardList);
		// Configure directory search
		SearchOption dirOption = SearchOption.INCLUSIVE;

		Set<String> dirSet = new HashSet<>();
		for (String dir : directories) {
			if (new File(dir).isDirectory()) {
				dirSet.add(dir);
			}
		}

		SearchConfig dirConfig = new SearchConfig(dirOption, dirSet);
		profile.setDirConfig(dirConfig);
		// Configure extension search
		SearchOption extOption = SearchOption.COMPREHENSIVE;
		Set<String> extSet = new HashSet<>();
		SearchConfig extConfig = new SearchConfig(extOption, extSet);
		profile.setExtConfig(extConfig);
		// List for files satisfying the specified requirements
		FileLister fileLister = new FileLister(profile);
		List<CDDFile> fileList = fileLister.listFiles();
		// Scan file list for instances of match
		FileScanner fileScanner = new FileScanner(profile);
		try {
			fileScanner.scan(fileList);
		} catch (Exception e) {
			return null;
		}

		return profile.getLog();
	}

	public static void main(String[] args) throws JAXBException, IOException {
		List<String> list = new ArrayList<>();
		// the address of scanning directory
		list.add("C:\\Users\\DANGHAO195\\Desktop\\haohao");
		Gson gson = new Gson();
		try {
			// display result when finish scanning (to test without client -
			// server)
			ResultLog result = new ScanTool().scanDirectories(list);
			String json1 = gson.toJson(result);
			System.out.println("result: " + json1);
			System.out.println("--------------------------");

			// exchange information between client and server
			String dest = "ws://localhost:8080/CDDWeb/jsr356";
			MyClient socket = new MyClient();
			WebSocketContainer container = ContainerProvider.getWebSocketContainer();
			container.connectToServer(socket, new URI(dest));
			socket.getLatch().await();
			socket.sendMessage(json1);
			Thread.sleep(10000);
			for (MatchInstance instance : result.getInstanceList())
				System.out.println(instance.getSubstring());

		} catch (Throwable t) {
			t.printStackTrace();
		}
	}
}
