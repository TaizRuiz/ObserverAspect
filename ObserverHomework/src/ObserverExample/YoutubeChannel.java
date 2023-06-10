package ObserverExample;

import java.util.ArrayList;

public class YoutubeChannel {
	private ArrayList<Subscriber> subscribers =new ArrayList();
	private String notification;
	public void addSubs(Subscriber s) {
		this.subscribers.add(s);
		
	}
	public void removeSubs(Subscriber s) {
		this.subscribers.remove(s);
	}
	public void notifySubs() {
		for (Subscriber s: subscribers) {
			s.update(notification);
		}
	}
	
	public void setNotification(String note) {
		this.notification=note;
		notifySubs();
	}
	

}