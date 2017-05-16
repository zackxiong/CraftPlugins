package gui;

import enterence.Tester;
import gui.panels.controlPanel.FileChooserPanel;
import gui.panels.controlPanel.ResultPanel;
import gui.panels.logPanel.LogPanel;

import java.awt.GridLayout;
import javax.swing.JFrame;  
import javax.swing.WindowConstants;

  
public class Gui extends JFrame{
	private static final long serialVersionUID = 1L;
    static JFrame jFrame_mainWindow = new JFrame();
    static GridLayout mainLayout = new GridLayout(3,2);//layout类型
	public static LogPanel logPanel = new LogPanel();
	static FileChooserPanel chooserPanel = new FileChooserPanel();
	static ResultPanel resultPanel = new ResultPanel();
	static Tester tester = new Tester(resultPanel);
	public static int time = 0;
	public static boolean isRunning = false;
	public static Process currentProcess;


	public static void startGui(String[] args) {
    	StatusFlag.setIsPending();
		//frame 初始化
        jFrame_mainWindow.setVisible(true);  
        jFrame_mainWindow.setSize(1000,800);  
        jFrame_mainWindow.setTitle("SpeedTest控制台");
        jFrame_mainWindow.setLayout(mainLayout);
        jFrame_mainWindow.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
        jFrame_mainWindow.setLocationRelativeTo(null);
        
        jFrame_mainWindow.add(logPanel);
        jFrame_mainWindow.add(chooserPanel);
        jFrame_mainWindow.add(resultPanel);
        
        log("Gui载入成功！");
        StatusFlag.setOk(true);
    }
	public static void log(String msg){
		logPanel.log(msg);
	}
	
	public static void displayException(Exception e){
		StatusFlag.setIsError();
		String errInfo = "Error message: " + e.getMessage();
		for(StackTraceElement ste : e.getStackTrace()){
			errInfo = errInfo + "\n" + ste.toString();
		}
		log("[error]"+errInfo);
		//StatusFlag.setError(false);
	}
	
	public static Tester getTester(){
		return tester;
	}
	
}