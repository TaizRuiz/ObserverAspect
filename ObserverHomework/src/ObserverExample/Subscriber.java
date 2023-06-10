package ObserverExample;

public class Subscriber {
	private String name;
	public Subscriber(String n) {
		this.name=n;
	}
	
	public void update (String notificacion) {
		System.out.println(this.name+" recibio notificacion: "+ notificacion);
	}
}