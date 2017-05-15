package gui.panels.controlPanel;

import java.math.BigDecimal;

import javax.swing.JLabel;
import javax.swing.JPanel;

public class ResultPanel extends JPanel{

	JLabel t_time = new JLabel("time:");
	JLabel time = new JLabel("");
	
	public ResultPanel(){
		this.add(t_time);
		this.add(time);
	}
	
	public void setTime(int i){
		String buffer = i+"";
		if(buffer.contains(".")){
			String[] bufferCut = buffer.split(".");
			buffer = bufferCut[0]+bufferCut[1];
		}

		this.time.setText(buffer+"s");
	}

}
