package enterence;

import gui.Gui;
import gui.MyColor;
import gui.StatusFlag;
import gui.panels.controlPanel.ResultPanel;

import java.io.File;
import java.io.IOException;
import java.util.Timer;
import java.util.TimerTask;

import org.omg.SendingContext.RunTime;

public class Tester {
	
	String command;
	File file;
	boolean useFile = true;
	Timer timer = new Timer();
	Runtime rt = Runtime.getRuntime();
	
	
	ResultPanel result = new ResultPanel();
	
	public Tester(ResultPanel result){
		this.result = result;
	}
	
	public void useCommand(String command){
		this.command = command;
		this.useFile = false;
	}
	public void useFile(File file){
		this.file = file;
		this.useFile = false;
	}
	
	public void clearCommand(){
		this.command = "";
		this.useFile = true;
	}
	public void clearFile(){
		this.file = null;
	}
	
	public void start(){
		if(Gui.isRunning){
			Gui.displayException(new Exception("Still Running"));
			return;
		}
		Gui.isRunning = true;
		StatusFlag.isOverride = true;
		Gui.logPanel.jlabel_status.setForeground(MyColor.color_pending);
		int finalTime = 0;
		if(useFile){
			if(file == null){
				Gui.log("File not selected!");
				return;
			}
			final CommandRunnable runnable = new CommandRunnable(file.getAbsolutePath(), this.rt);
			Thread t = new Thread(runnable);
			
			t.start();
			this.timer.schedule(new TimerTask() {
				int time = 0;
				public void run() {
		            time = time+1;
					if(runnable.isDone){
						Gui.time = time;
						harvest();
						this.cancel();
					}
		        }
			}, 0, 1);
		}
		else{
			if(command == null | command == ""){
				Gui.log("Command not set");
				return;
			}
			final CommandRunnable runnable = new CommandRunnable(command, this.rt);
			Thread t = new Thread(runnable);
			
			t.start();
			this.timer.schedule(new TimerTask() {
				int time = 0;
				public void run() {
		            time = time+1;
					if(runnable.isDone){
						Gui.time = time;
						harvest();
						this.cancel();
					}
		        }
			}, 0, 1);
		}
	}
	
	public void harvest(){
		int time = Gui.time;
		Gui.time = 0;
		this.result.setTime(time);
		Gui.logPanel.jlabel_status.setForeground(MyColor.color_ok);
		StatusFlag.isOverride = false;
		Gui.isRunning = false;
	}
	

}

class CommandRunnable implements Runnable{
	boolean isDone = false;
	boolean isError =false;
	String path;
	Runtime rt;
	int result;
	public CommandRunnable(String path, Runtime rt){
		super();
		this.path = path;
		this.rt = rt;
	}
	@Override
	public void run() {
		try {
			Gui.currentProcess = rt.exec(path);
			result = Gui.currentProcess.waitFor();
		} catch (Exception e) {
			Gui.displayException(e);
			this.isError = true;
		}
		this.isDone = true;
		if(result != 0)
			isError = true;
	}
	
}