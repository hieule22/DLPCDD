package com.fis.cdd.endpoint.client;

import java.io.IOException;
import java.util.concurrent.CountDownLatch;

import javax.websocket.ClientEndpoint;
import javax.websocket.CloseReason;
import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;

import com.fis.cdd.profile.profiles.ResultLog;
import com.google.gson.Gson;

@ClientEndpoint
public class MyClient {

	CountDownLatch latch = new CountDownLatch(1);
	private Session session;
	static Gson gson = new Gson();
	
	public static String str;
	
	@OnOpen
	public void onOpen(Session session) {
		System.out.println("Connected to server");
		this.session = session;
		latch.countDown();
	}

	@OnMessage
	public void onMessage(String message, Session session) {
		str = message;
		System.out.println("Message received from server:" + message);
		ResultLog s = gson.fromJson(message, ResultLog.class);
		System.out.println(s.getName());
		System.out.println(s.getStatus());
		System.out.println(s.getStep());
		System.out.println(s.getFilesDone());
		System.out.println(s.getFilesTotal());
		System.out.println(s.getBytesDone());
		System.out.println(s.getBytesTotal());
		System.out.println(s.getProgress());
		System.out.println(s.getTotalFindCount());
		System.out.println(s.getInstanceList());
	}

	@OnClose
	public void onClose(CloseReason reason, Session session) {
		System.out.println("Closing a WebSocket due to "
				+ reason.getReasonPhrase());
	}

	public CountDownLatch getLatch() {
		return latch;
	}

	public void sendMessage(String str) {
		try {
			session.getBasicRemote().sendText(str);
		} catch (IOException e) {

			e.printStackTrace();
		}
	}
}
