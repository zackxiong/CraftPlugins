package pc;

import communicater.Reciever;
import communicater.Sender;

import pc.info.InfoSet;

public class PC {
	String name;
	public String hash;
	public InfoSet info;
	public Reciever reciever;
	public Sender sender;
	public boolean isReal = false;
	
	public PC(Sender sen, Reciever rec){
		this.sender = sen;
		this.reciever = rec;
		sender.myPc = this;
		reciever.myPc = this;
	}
	
	@Override
	public String toString(){
		return name+"|"+hash;
	}
	@Override
	public boolean equals(Object obj){//compare
		if(obj instanceof PC && ((PC)obj).hash == this.hash)
			return true;
		
		else
			return false;
	}

}
