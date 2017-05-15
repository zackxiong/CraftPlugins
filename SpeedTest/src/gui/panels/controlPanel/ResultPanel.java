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
		i = (int) (i/0.89);
		String buffer = i+"";
		if(buffer.length()<3){
			switch(buffer.length()){
				case 1:
					buffer = "0.00"+buffer;
					break;
				case 2:
					buffer = "0.0"+buffer;
					break;
			}
				
		}
		else{
			buffer = buffer.substring(0, buffer.length()-3)+"."+buffer.substring(buffer.length()-3, buffer.length());
		}
		
		this.time.setText(buffer+" s");
	}

}
