/**
 * 
 */
package com.fis.cdd.controller;

import java.util.Date;
import java.util.Random;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fis.cdd.model.HistoryList;
import com.fis.cdd.model.ScanHistory;
import com.fis.cdd.util.Constants;

/**
 * @author HaiNT
 *
 */
@Controller
public class CDDController implements BaseController, Constants {

	@Override
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String display(ModelMap model) {
		return VIEW_INDEX;
	}

	@RequestMapping(value = "/services/history", method = RequestMethod.GET, produces = "application/json")
	public @ResponseBody HistoryList showHistoryChart() {
		return populateDumpData();
	}

	private HistoryList populateDumpData() {
		HistoryList historyList = new HistoryList();
		Random random = new Random();

		for (int i = 0; i < 10; i++) {
			ScanHistory scanHistory = new ScanHistory();
			scanHistory.setId(i);
			scanHistory.setScanDate(new Date());
			scanHistory.setFilesTotal(1000 + i * 10);
			scanHistory.setTotalFindCount(460 + i * 10);

			historyList.getScanHistories().add(scanHistory);
			historyList.getValues().add(Integer.valueOf(random.nextInt(1000)));
		}

		return historyList;
	}
}
