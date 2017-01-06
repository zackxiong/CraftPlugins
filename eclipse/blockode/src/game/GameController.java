package game;

import java.util.ArrayList;
import java.util.List;

import org.bukkit.Bukkit;
import org.bukkit.ChatColor;
import org.bukkit.scheduler.BukkitRunnable;

public class GameController {
	public List<Blockode> blockodeList;
	
	
	public GameController() {
		this.blockodeList= new ArrayList<Blockode>();
		this.startOrStopRanger();
	}
	
	public void addBlockode(Blockode blockode){
		this.blockodeList.add(blockode);
	}
	
	public void removeBlockode(Blockode blockode){
		this.blockodeList.remove(blockode);
	}
	
	public List<Blockode> getBlockodeList() {
		return blockodeList;
	}

	public void setBlockodeList(List<Blockode> blockodeList) {
		this.blockodeList = blockodeList;
	}

	public void startOrStopRanger(){
		new BukkitRunnable(){
			@Override
			public void run() {
				System.out.print(ChatColor.GREEN+"[Controller]检测状态中。。。");
				if(blockodeList!=null && !blockodeList.isEmpty()){
					for(Blockode b : blockodeList){
						//if(b==null) break;
						//System.out.print(ChatColor.GREEN+"[Controller]检测开始状态中。。。");
		            	if(b.isStart() && b.getPlayerNumber()<=1){//已经开始，里面没人
		                	String name = null;
		            		for(String n : b.getPlayerList()){
		            			if(n!=null) name=n;
		            		}
		            		b.stop(name);//获取胜利者并且宣布，结束
		            	}
		            	
		            	if(b.getPlayerNumber()>=1 && !b.isStart()){//有人，还没开始
		            		
		            	}
					}
				}
				//cancel();
			}
    	}.runTaskTimer(Bukkit.getPluginManager().getPlugin("blockode"), 0L, 30L);
	}

}
