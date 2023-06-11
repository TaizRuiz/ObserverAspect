package GUI;

import java.awt.Color;

import javax.swing.JLabel;
import javax.swing.JPanel;

public class ButtonEvent {

	
	public static void updateBackground(JPanel jp,Color c) {
		jp.setBackground(c);
	}
	public static void setLabelContent(JLabel l,String s) {
		l.setText(s);	
	}

}

