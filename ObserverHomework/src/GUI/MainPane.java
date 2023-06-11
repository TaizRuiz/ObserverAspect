package GUI;

import java.awt.Color;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

public class MainPane extends JFrame {
	private JPanel PanelPrincipal;
	private JButton btnRojo ;
	private JButton btnVerde ;
	private JButton btnAzul ;
	private JLabel messageLabel;
	
	public MainPane() {
		setVisible(true);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 450, 300);
		
		PanelPrincipal = new JPanel();
		messageLabel=new JLabel();
		
		PanelPrincipal.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(PanelPrincipal);
		
		btnRojo = new JButton("Rojo");
		btnVerde = new JButton("Verde");
		btnAzul = new JButton("Azul");
		
		
		btnRojo.addActionListener(new ActionListener(){
			@Override
			public void actionPerformed(ActionEvent e) {
				ButtonEvent.updateBackground(getPane(),Color.red);
				ButtonEvent.setLabelContent(messageLabel, "red");
				
				
					
			}	
				});
		btnAzul.addActionListener(new ActionListener(){
			@Override
			public void actionPerformed(ActionEvent e) {
				ButtonEvent.updateBackground(getPane(),Color.blue);
				ButtonEvent.setLabelContent(messageLabel, "blue");
				
			}	
				});
		btnVerde.addActionListener(new ActionListener(){
			@Override
			public void actionPerformed(ActionEvent e) {
				ButtonEvent.updateBackground(getPane(),Color.green);
				ButtonEvent.setLabelContent(messageLabel, "green");
				
			}	
				});
		PanelPrincipal.add(btnRojo);
		PanelPrincipal.add(btnVerde);
		PanelPrincipal.add(btnAzul);
		
		PanelPrincipal.add(messageLabel);
		
	
	}
	
	

	public JPanel getPane() {
		return this.PanelPrincipal;
	}
	public JButton getBtnRed() {
		return this.btnRojo;
	}
	public JButton getBtnBlue() {
		return this.btnAzul;
	}
	public JButton getBtnGreen() {
		return this.btnVerde;
	}
	public JLabel getLabel() {
		return this.messageLabel;
	}
}
