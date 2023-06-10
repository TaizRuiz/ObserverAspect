package Aspects;


import java.awt.Color;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.time.LocalDateTime;
import javax.swing.JPanel;

public aspect ObserverAspect {
	String filepath="src/eventRecord/buttonActions.txt";
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
	    	
	    	String logMessage = String.format("[Auditoria] Cambio de color realizado %s", LocalDateTime.now());
	    	String color=colorToString(c);
	    	String finalMessage=logMessage+" "+color;
	        insertIntoTxt(finalMessage);
	    	System.out.println(  "[ Cambio recibido ]  Color: "+ colorToString(c));
	    	
	    	
	    }
	    
	pointcut buttonClickEvent( JPanel jp, Color c) : 
	    execution(void GUI.ButtonEvent.updateBackground(JPanel, Color)) && args(jp,c);

	    before(JPanel jp, Color c) : buttonClickEvent(jp, c) {
	        String logMessage = String.format("[Registro de Eventos] Botón clickeado en %s", LocalDateTime.now());
	        insertIntoTxt(logMessage);
	        
	    }
	    
	    public void insertIntoTxt(String message) {
	    	try (BufferedWriter br=new BufferedWriter(new FileWriter(filepath,true))){

	               br.write(message);
	               br.newLine(); 
	               
	           } catch (IOException e) {
	               e.printStackTrace();
	           }
	    }
	    
}
