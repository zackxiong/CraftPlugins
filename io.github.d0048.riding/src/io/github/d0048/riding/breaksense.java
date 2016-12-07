/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package io.github.d0048.riding;

import java.util.logging.Level;
import org.bukkit.Bukkit;
import static org.bukkit.Bukkit.getLogger;
import org.bukkit.Material;
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
    int PlayerNumber=0;//减一之后再使用
    private int MaximumPlayer=12;//最多12个人
    private int ExplodeSize=4;
    
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
           getLogger().info("removefromPlayerList():匹配"+name+"第"+(i+1)+"次");
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
           getLogger().info("匹配"+player.getName()+"第"+(i+1)+"次");
           if(this.PlayerList[i].equals(player.getName())) {
               getLogger().info("匹配到列表中是玩家");
               return true;
           }
       }
       return false;
   }
   
      public boolean isInList(String name){
       for(int i=0;i<=(PlayerNumber-1);i++){
           getLogger().info("匹配"+name+"第"+(i+1)+"次");
           if(this.PlayerList[i].equals(name)) {
               getLogger().info("匹配到列表中是玩家");
               return true;
           }
       }
       return false;
   }
   
@EventHandler(priority = EventPriority.NORMAL,ignoreCancelled = false)  //这就是我说的那个监听器了，事件发生时会触发下面这个方法
public void onBlockPlace(BlockPlaceEvent e)  
{  int x,y,z;
    
    if(e.getBlock().getType() == Material.DIAMOND_BLOCK)  
    {   if(isInList(e.getPlayer())==true){//如果发出者在列表里，就执行下面的内容（单独执行不会报错，工作正常）
        e.setCancelled(true);
        //x=e.getBlock().getLocation().getBlockX();
        //y=e.getBlock().getLocation().getBlockY();
        //z=e.getBlock().getLocation().getBlockZ();
        e.getPlayer().getWorld().createExplosion(e.getBlock().getLocation(), ExplodeSize);
        //getLogger().log(Level.INFO, "{0}\u5728{1}", new Object[]{e.getPlayer(), e.getBlock().getLocation()}+"放置了钻石块并且炸了");
        System.out.print(e.getPlayer()+"在"+e.getBlock().getLocation()+"放置了"+e.getBlock()+"并且炸了");
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
   

}
