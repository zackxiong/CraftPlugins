package communicater;

import gui.Gui;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.HashSet;

import pc.PC;

public class Controller implements Runnable{
	int port;
	Reciever reciever = new Reciever();
	Sender sender = new Sender();
	HashSet<Thread> threads = new HashSet<Thread>();
	MyRunnable listen = new MyRunnable();
	
	private ServerSocket ss;
	private Socket socket;
	private BufferedReader in;
	private PrintWriter out;
	
	public Controller(){
		this(1800);
		try {
			Gui.addPC(new PC("test from controller"), this.getClass());
		} catch (Exception e) {
			//Gui.displayException(e);
		}
	}

	public Controller(int port){
		this.port = port;
		try {
			ss = new ServerSocket(port);
		} catch (IOException e) {
			e.printStackTrace();
		}
		gui.Gui.log("Start a thread, listening on port:"+port);
		Thread t = new Thread(this);
		t.start();
	}
	
	//@Override
	public void run(){
			while (true){
				try{
					//Thread.sleep(5*1000);
					gui.Gui.log("Thread activated:" + Thread.currentThread().getId());
					//System.out.print("listen..");
					socket = ss.accept();//本句阻塞！！！
					gui.Gui.log("Accept connection with port:"+socket.getPort()
							+"\n"+ "Close status: " + ss.isClosed()
							+"\n"+ "Now reading:");
					//log("listening");
					//Thread.sleep(3*1000);
					in = new BufferedReader(new InputStreamReader(socket.getInputStream()));   
					out = new PrintWriter(socket.getOutputStream(),true);
					String line;
					do{
						//gui.Gui.log("waiting");
						line = in.readLine();
						if(line != null)
							gui.Gui.log(line);
						if(line == "close")
							break;
					} while(line != null);
					gui.Gui.log("Closing session" + socket.getLocalSocketAddress()+":"+socket.getPort());
					out.close();   
					in.close();   
					socket.close();
					//ss.close();
				}
				catch(Exception e){
					e.printStackTrace();
				}
			}
	}
}

class MyRunnable implements Runnable{

	@Override
	public void run() {
		
	}
	
}