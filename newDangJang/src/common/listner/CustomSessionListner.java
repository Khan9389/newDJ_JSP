package common.listner;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import common.utils.string.StringUtil;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class CustomSessionListner implements HttpSessionListener {
	
	private static final Map<String, HttpSession> sessions = new HashMap<>();
    
    public static Map<String, HttpSession> getActiveSessions(){
    	return sessions;
    }
	
	@Override
	public void sessionCreated(HttpSessionEvent se) {
		log.debug(StringUtil.join("session created!!!", se.getSession().getId()));
//		sessions.put(se.getSession().getId(), se.getSession());
	}
	
	@Override
	public void sessionDestroyed(HttpSessionEvent se) {
		log.debug(StringUtil.join("session destroyed!!!", se.getSession().getId()));
//        sessions.remove(se.getSession().getId());
	}
}
