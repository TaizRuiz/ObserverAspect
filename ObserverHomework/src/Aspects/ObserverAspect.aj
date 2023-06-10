package Aspects;


import java.awt.Color;
import java.time.LocalDateTime;
import javax.swing.JPanel;

public aspect ObserverAspect {
	public static String colorToString(Color c) {
		String color="";
		if (c.equals(Color.red)) {
			color="rojo";
		}else if (c.equals(Color.blue)) {
			color="azul";
		}
		else if (c.equals(Color.green)) {
			color="verde";
		}
		return color;
	}
	
	
	pointcut receivedUpdate( JPanel jp, Color c) : 
		 call(void GUI.ButtonEvent.updateBackground(JPanel, Color )) && args(jp,c);
	    
	    after(JPanel jp, Color c) :receivedUpdate(jp,c) {
	        System.out.println("[ Auditoría ] Cambio de color completado. Hora: " + LocalDateTime.now());
	    	System.out.println(  "[ Cambio recibido ]  Color: "+ colorToString(c));
	    	
	    	
	    }
	    
	pointcut buttonClickEvent( JPanel jp, Color c) : 
	    execution(void GUI.ButtonEvent.updateBackground(JPanel, Color)) && args(jp,c);

	    before(JPanel jp, Color c) : buttonClickEvent(jp, c) {
	        String logMessage = String.format("[Registro de Eventos] Botón clickeado en %s", LocalDateTime.now());
	        System.out.println(logMessage);
	        
	    }
	    
}
