package Aspects;


import java.awt.Color;


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
	    	System.out.println(  "[ Cambio recibido ]  Color: "+ colorToString(c));
	    	
	    	
	    }
}
