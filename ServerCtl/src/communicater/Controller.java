package communicater;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.HashSet;

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
	}

	public Controller(int port){
		this.port = port;
		try {
			ss = new ServerSocket(port);
		} catch (IOException e) {
			e.printStackTrace();
		}
		Thread t = new Thread(this);
		t.start();
		gui.Gui.log("Start a thread, listening on port:"+port);
	}
	
	//@Override
	public void run(){
		try{
			while (true){
				//Thread.sleep(5*1000);
				gui.Gui.log("Thread activated:" + Thread.currentThread().getId());
				//System.out.print("listen..");
				socket = ss.accept();//本句阻塞！！！
				gui.Gui.log("Accept connection with port:"+socket.getPort()
						+"\n"+ "Close status: " + ss.isClosed()
						+"\n"+ "Now reading:");
				//log("listening");
				Thread.sleep(5*1000);
				in = new BufferedReader(new InputStreamReader(socket.getInputStream()));   
				out = new PrintWriter(socket.getOutputStream(),true);
				String line;
				do{
				line = in.readLine();
				out.println("you input is :" + line);
				gui.Gui.log("you input is :" + line);
				} while(line != null);
				out.close();   
				in.close();   
				socket.close();
				ss.close();
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
}

class MyRunnable implements Runnable{

	@Override
	public void run() {
		
	}
	
}