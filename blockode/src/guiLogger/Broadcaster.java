package guiLogger;

import java.util.List;

import org.bukkit.World;
import org.bukkit.entity.Player;

public class Broadcaster {
	
	public static void BoardcastInWorld(World world, String msg){
		for(Player p : world.getPlayers()){
			p.sendMessage(msg);
		}
	}
	
	public static void BoardcastInWorld(World world, String[] msg){
		for(Player p : world.getPlayers()){
			p.sendMessage(msg);
		}
	}
	
	public static void BoardcastInWorlds(List<World> worlds, String msg){
		for(World w : worlds){
			Broadcaster.BoardcastInWorld(w, msg);
		}
	}
	
	public static void BoardcastInWorlds(List<World> worlds, String[] msg){
		for(World w : worlds){
			Broadcaster.BoardcastInWorld(w, msg);
		}
	}
}
