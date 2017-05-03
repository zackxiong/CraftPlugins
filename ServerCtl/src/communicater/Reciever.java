package communicater;

import gui.Gui;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;
import java.util.HashSet;
import communicater.packages.Package;

import communicater.packages.Phaser;

public class Reciever implements Runnable{
	
	Socket cs;
	private BufferedReader in;
	private PrintWriter out;
	private Controller myCtlr;
	private HashSet<? extends Package> revQuene = new HashSet(5);

	public Reciever(Socket cs, Controller ctlr){
		this.cs = cs;
		this.myCtlr = ctlr;
	}
	
	public void forceClose(){
		try{
			out.close();   
			in.close();   
			cs.close();
		}
		catch(Exception e){
			Gui.displayException(e);
		}
	}

	@Override
	public void run() {
		//byte []int = new byte[bufLength];
		myCtlr.activeCount++;
		try{
			Gui.log("Now reading:");
			in = new BufferedReader(new InputStreamReader(cs.getInputStream()));   
			out = new PrintWriter(cs.getOutputStream(),true);
			String lData, packData = new String("");
			do{//read loop
				lData = in.readLine();
				if(lData.endsWith("</Package>\n")){//检测到结束
					Package pak = this.myCtlr.phaser.phase(packData);
				}
				else{
					packData = packData + lData;
				}
				if(packData.length() > this.myCtlr.pakLength){
					lData = ""; packData = "";
					gui.Gui.log("Illegal operation from:" + cs.getInetAddress() + ":" + cs.getPort() + "\n" +
							"To:" + "reciever[" + this.hashCode() + "]:" + cs.getLocalPort() + "\n" +
									"	Reaction:dropped");
				}
			} while(lData != null);
			
			gui.Gui.log("Closing session" + cs.getLocalSocketAddress()+":"+cs.getPort());
			out.close();
			in.close();
			cs.close();
			this.myCtlr.activeCount--;
			this.myCtlr.recievers.remove(this);
		}
		catch(Exception e){
			Gui.displayException(e);
		}
	}
}
