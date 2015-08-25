
package com.fis.cdd.endpoint.server.jsr356;

import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

import javax.websocket.CloseReason;
import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

import com.fis.cdd.profile.profiles.ResultLog;
import com.google.gson.Gson;

@ServerEndpoint(value = "/jsr356")
public class MyServer {
	private Set<Session> set = new HashSet<Session>();
	Gson gson = new Gson();
	@OnOpen
	public void onOpen(Session session) {
		System.out.println("WebSocket opened: " + session.getId());
		set.add(session);
	}

	@OnMessage
	public void onMessage(String txt, Session session) throws IOException, InterruptedException {
		
		for(@SuppressWarnings("unused") Session s : set){
			System.out.println("Message received: " + txt);
			ResultLog result= gson.fromJson(txt, ResultLog.class);
			result.setName(result.getName().toUpperCase());
			String json = gson.toJson(result);
			session.getBasicRemote().sendText(json);
		}
	}

	@OnClose
	public void onClose(CloseReason reason, Session session) {
		System.out.println("Closing a WebSocket due to " + reason.getReasonPhrase());
		for(Session s : set){
			set.remove(s);
		}

	}
}
