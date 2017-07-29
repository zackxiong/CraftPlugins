package gui.panels.controlPanel;


import java.awt.Font;
import java.util.Vector;

import javax.swing.BorderFactory;
import javax.swing.Box;
import javax.swing.JLabel;
import javax.swing.JList;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.ListSelectionModel;

import pc.PC;

public class ControlPanel extends JPanel{
	private static final long serialVersionUID = -2823491917549154922L;
	
	//public JPanel jPanel_ctl = new JPanel();
	public JPanel jPanel_ctl = this;
    public JLabel jlabel_ctlTitle = new JLabel("My computers:                                                                                              ");
    public Box vctlBox1 = Box.createVerticalBox(),
    		hctlBox1 = Box.createHorizontalBox(),
    		hctlBox2 = Box.createHorizontalBox();
    public Vector<PC>vecPCs = new Vector<PC>();
    public Vector<String> vecFunctions = new Vector<String>();
    public String []functions = {
    	"Info","ScreenShoot","Functions","files"
    };
    public JList <PC>jlistPCs = new JList<PC>(vecPCs);
    public JList <String>jlistFunctions = new JList<String>(vecFunctions);
    public JScrollPane jScrollpane_pclist = new JScrollPane(jlistPCs), jScrollpane_funclist = new JScrollPane(jlistFunctions);
    public JPanel jPanel_content = new JPanel();
    
    public ControlPanel(){
    	//列表初始化
    	//标题位
    	jlabel_ctlTitle.setFont((new Font("宋体",Font.BOLD, 16)));
    	jlabel_ctlTitle.setSize(20, 20);
    	hctlBox1.add(jlabel_ctlTitle);
    	hctlBox1.add(Box.createGlue());
    	vctlBox1.add(hctlBox1);
    	jPanel_ctl.add(vctlBox1);

    	//列表位
    	//vecPCs.add(new PC("                "));
    	//vecFunctions.add("                ");
    	for(String f : functions){
    		vecFunctions.add(f);
    	}
    	//int i=99; while(i-- > 0){vecFunctions.add("edf");}
    	jScrollpane_pclist.setHorizontalScrollBarPolicy(JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED); 
    	jScrollpane_pclist.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED); 
    	jScrollpane_pclist.setWheelScrollingEnabled(true);
    	jScrollpane_funclist.setHorizontalScrollBarPolicy(JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED); 
    	jScrollpane_funclist.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED); 
    	jScrollpane_funclist.setWheelScrollingEnabled(true);
    	
    	jlistPCs.setBorder(BorderFactory.createTitledBorder("Computers"));
    	jlistPCs.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
    	hctlBox2.add(jScrollpane_pclist);
    	
    	jlistFunctions.setBorder(BorderFactory.createTitledBorder("Operations"));
    	jlistFunctions.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
    	hctlBox2.add(jScrollpane_funclist);
    	
    	//hctlBox2.add(Box.createGlue());
    	hctlBox2.add(jPanel_content);
    	vctlBox1.add(hctlBox2);
    	//内容位
    	//jPanel_content.add(new JLabel("Nothing to show here"));
    	jPanel_content.add(new IdlePanel());
    }
    
    public String addPC(PC pc, Class<?> envoker)throws Exception{
		//StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
		//String className = stackTrace[stackTrace.length-1].toString();
    	String className = envoker.getName();
		gui.Gui.log("\"" + className + "\"is trying to add these to PC list:\"" + pc + "\"");
		if(vecPCs.contains(pc)){
			Exception e = new Exception("PC already exist!");
			gui.Gui.displayException(e);
			throw e;
		}
		try{
			vecPCs.add(pc);
			gui.Gui.log("Successfully added!");
			return "Success!";
		}
		catch(Exception e){
			throw e;
		}
    }
    
    public String removePC(PC pc, Class<?> envoker)throws Exception{
		//StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
		//String className = stackTrace[stackTrace.length-1].toString();
		String className = envoker.getName();
		gui.Gui.log("\"" + className + "\"is trying to remove these from PC list:\"" + pc + "\"");
		if(!vecPCs.contains(pc)){
			Exception e = new Exception("PC do not exist!");
			gui.Gui.displayException(e);
			throw e;
		}
		try{
			vecPCs.remove(pc);
			gui.Gui.log("Successfully removed!");
			return "Success!";
		}
		catch(Exception e){
			throw e;
		}
    }
}
