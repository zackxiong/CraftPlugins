package gui.panels.controlPanel;

import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JPanel;

import pc.PC;

public class InfoPanel extends JPanel{
	PC pc;
	private static final long serialVersionUID = -6143438348516086903L;
	
	JLabel label;
	JButton button_refresh = new JButton("Refresh");
	
	public InfoPanel(PC pc) {
		super();
		this.pc = pc;
	}

}
