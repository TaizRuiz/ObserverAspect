package ObserverExample;

public class Main {

	public static void main(String[] args) {
		YoutubeChannel yc=new YoutubeChannel();
		Subscriber s1=new Subscriber("subs1");
		Subscriber s2=new Subscriber("subs2");
		yc.addSubs(s2);
		yc.addSubs(s1);
		yc.setNotification("New video up");
		System.out.println("ss");
	}

}
