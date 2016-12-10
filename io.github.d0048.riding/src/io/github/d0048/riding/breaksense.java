/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package io.github.d0048.riding;

import java.util.logging.Level;
import net.minecraft.server.v1_7_R4.World;
import org.bukkit.Bukkit;
import static org.bukkit.Bukkit.getLogger;
import org.bukkit.ChatColor;
import org.bukkit.Location;
import org.bukkit.Material;
import org.bukkit.block.Block;
import org.bukkit.entity.Player;
import org.bukkit.event.EventHandler;
import org.bukkit.event.EventPriority;
import org.bukkit.event.Listener;
import org.bukkit.event.block.BlockPlaceEvent;

/**
 *
 * @author HXB
 */
public class breaksense implements Listener{
    
    String []PlayerList;
    private EffectExec executer;
    int PlayerNumber=0;//减一之后再使用
    private int MaximumPlayer=12;//最多12个人
    private int ExplodeSize=4;
    private int Wall_Size_X=3;
    private int Wall_Size_Y=3;
    private int shieldDelay=1;
    
    public breaksense(){
        System.out.print("[breaksense()]");
        PlayerList=new String[this.MaximumPlayer];
    }
    
    static public void test(){
        System.out.print("[test()]");
    }

   public boolean addtoPlayerList(Player player){
       String name=player.getName();
        if (PlayerNumber>=MaximumPlayer) {return false;}//人数超过则返回错误
       else {
           if(isInList(name)==false){
               this.PlayerList[PlayerNumber]=name;
               getLogger().info("玩家:"+name+"已被添加至游戏列表。");
               //Bukkit.getPlayer(name).sendMessage("玩家:"+name+"已被添加至游戏列表。");
               PlayerNumber++;
               return true;
           }//不然就把名单上面下一位给加上传过来的玩家
           else{
              getLogger().info("玩家"+name+"已存在列表中");
              Bukkit.getPlayer(name).sendMessage("玩家"+Bukkit.getPlayer(name)+"已存在列表中");
             return false;
           }
       }
   }
   
   
      public boolean addtoPlayerList(String name){
        if (PlayerNumber>=MaximumPlayer) {return false;}//人数超过则返回错误
       else {
           if(isInList(name)==false){
               this.PlayerList[PlayerNumber]=name;
               getLogger().info("玩家:"+name+"已被添加至游戏列表。");
               //Bukkit.getPlayer(name).sendMessage("玩家:"+name+"已被添加至游戏列表。");
               PlayerNumber++;
               return true;
           }//不然就把名单上面下一位给加上传过来的玩家
           else{
              getLogger().info("玩家"+name+"已存在列表中");
              Bukkit.getPlayer(name).sendMessage("玩家"+Bukkit.getPlayer(name)+"已存在列表中");
             return false;
           }
       }
   }
   
   
   public boolean removefromPlayerList(Player player){
       getLogger().info("开始查询玩家");
       if(!isInList(player)){
           getLogger().info("找不到玩家");
           return false;
       }
       else{
           getLogger().info("确认玩家在列表内，开始搜索");
           for(int i=0;i<=(PlayerNumber-1);i++){
           getLogger().info("removefromPlayerList():匹配"+player.getName()+"第"+(i+1)+"次");
           if(this.PlayerList[i].equals(player.getName())) {
               this.PlayerList[i]="use less"; 
               this.PlayerNumber=this.PlayerNumber-1;
               return true;
               }
             } 
            }
              getLogger().info("未知错误"); 
              return false;
   }
   
   public boolean removefromPlayerList(String name){
              if(isInList(name)){
           getLogger().info("找不到玩家");
           return false;
       }
       else{
           for(int i=0;i<=(PlayerNumber-1);i++){
           //getLogger().info("removefromPlayerList():匹配"+name+"第"+(i+1)+"次");
           if(this.PlayerList[i].equals(name)) {
               this.PlayerList[i]="use less"; 
               this.PlayerNumber=this.PlayerNumber-1;
               return true;
               }
             } 
            }
              getLogger().info("未知错误"); 
              return false;
   }
   
   public void clearPlayerList(){
        for(int i=0;i<12;i++){
           this.PlayerList[i]=" ";
       }
    }
   
   public boolean isInList(Player player){
       for(int i=0;i<=(PlayerNumber-1);i++){
           //getLogger().info("匹配"+player.getName()+"第"+(i+1)+"次");
           if(this.PlayerList[i].equals(player.getName())) {
               //getLogger().info("匹配到列表中是玩家");
               return true;
           }
       }
       return false;
   }
   
      public boolean isInList(String name){
       for(int i=0;i<=(PlayerNumber-1);i++){
           //getLogger().info("匹配"+name+"第"+(i+1)+"次");
           if(this.PlayerList[i].equals(name)) {
               //getLogger().info("匹配到列表中是玩家");
               return true;
           }
       }
       return false;
   }
      
      void fourDirectionGenerate(){
          
      }
   
@EventHandler(priority = EventPriority.NORMAL,ignoreCancelled = true)  //这就是我说的那个监听器了，事件发生时会触发下面这个方法
public void onBlockPlace(BlockPlaceEvent e)  {
    int x=e.getBlock().getX(),
        y=e.getBlock().getY(),
        z=e.getBlock().getZ();
    Location playerLocation=e.getPlayer().getLocation(),
             blockLocation=e.getBlock().getLocation();
    
    //方块信标,制造一面墙和冲击
    if(e.getBlock().getType() == Material.BEACON){
        if(isInList(e.getPlayer())==true){//如果发出者在列表里，就执行下面的内容（单独执行不会报错，工作正常）
            EffectExec shield=new EffectExec();
            e.getPlayer().sendMessage(ChatColor.BLUE+"正在充能...");
            shield.SheildEnterence(e,shieldDelay);
            shield=null;//即时释放内存。。
            return;
        }
    }
    //貌似上面那个加上去之后下面这个就废了。。（已解决，我眼瞎了）
    
    //方块TNT,爆炸
    if(e.getBlock().getType() == Material.TNT){  
        if(isInList(e.getPlayer())==true){//如果发出者在列表里，就执行下面的内容（单独执行不会报错，工作正常）
            e.getBlock().setType(Material.AIR);
            e.getPlayer().getWorld().createExplosion(e.getBlock().getLocation(), ExplodeSize); 
            e.getPlayer().sendMessage(ChatColor.AQUA+"如你所见，TNT炸了。。");
            //getLogger().info(ChatColor.GREEN+e.getPlayer().toString()+"在"+e.getBlock().getLocation()+"放置了"+e.getBlock()+"并且炸了");
            return;  
       }
        return;
    }

    return;
}
//下面是getter和setter

    public void setPlayerList(String[] PlayerList) {
        this.PlayerList = PlayerList;
    }

    public void setPlayerNumber(int PlayerNumber) {
        this.PlayerNumber = PlayerNumber;
    }

    public void setExplodeSize(int ExplodeSize) {
        this.ExplodeSize = ExplodeSize;
    }

    public int getMaximumPlayer() {
        return MaximumPlayer;
    }

    public int getExplodeSize() {
        return ExplodeSize;
    }
    
        
   public void setMaximumPlayer(int number){
       MaximumPlayer=number;
       PlayerList=new String[this.MaximumPlayer];
   }
   
   public int getPlayerNumber(){
       return PlayerNumber;
   }
   
   public String []getPlayerList(){
       return PlayerList;
   }

    public int getWall_Size_X() {
        return Wall_Size_X;
    }

    public int getWall_Size_Y() {
        return Wall_Size_Y;
    }

    public void setWall_Size_X(int Wall_Size_X) {
        this.Wall_Size_X = Wall_Size_X;
    }

    public void setWall_Size_Y(int Wall_Size_Y) {
        this.Wall_Size_Y = Wall_Size_Y;
    }

    public EffectExec getExecuter() {
        return executer;
    }

    public int getShieldDelay() {
        return shieldDelay;
    }

    public void setExecuter(EffectExec executer) {
        this.executer = executer;
    }

    public void setShieldDelay(int shieldDelay) {
        this.shieldDelay = shieldDelay;
    }
   

}
