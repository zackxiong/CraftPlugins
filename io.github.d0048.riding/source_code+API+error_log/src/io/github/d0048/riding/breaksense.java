/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package io.github.d0048.riding;

import java.util.logging.Level;
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
    public int MaximumPlayer=12;//最多12个人
    
    void breaksense(){
        PlayerList=new String[this.MaximumPlayer];
        for(int i=0;i<MaximumPlayer;i++){
            PlayerList[i]="useless_information";//随便放点什么进数组确保每个值都不是null，这是一个同学提出的建议，然而没用，奇怪的是也不会报错
        }
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
   
   public boolean addtoPlayerList(Player player){
       //if (PlayerNumber>=MaximumPlayer) {return false;}//人数超过则返回错误
       //else {
        //   if(isInList(player)==false){
               PlayerList[PlayerNumber]=player.getName();//这个方法和下面那个是重载关系，都会出错，出错相同
               getLogger().info("玩家:"+player.getName()+"已被添加至游戏列表。");
               return true;
        //   }//不然就把名单上面下一位给加上传过来的玩家
         //  else{
          //    getLogger().info("玩家"+player.getName()+"已存在列表中");
          //    return false;
   //        }
   //    }
   }
   
      public boolean addtoPlayerList(String name){
        //if (PlayerNumber>=MaximumPlayer) {return false;}//人数超过则返回错误
       //else {
        //   if(isInList(name)==false){
        //       PlayerList[PlayerNumber]=name;
               this.PlayerList[1]="hxb";//其他代码为了不影响査错我都注释掉了，这一行删掉之后就可以正常运行了，所以问题在这一行
               getLogger().info("玩家:"+name+"已被添加至游戏列表。");
               return true;
        //   }//不然就把名单上面下一位给加上传过来的玩家
        //   else{
        //      getLogger().info("玩家"+name+"已存在列表中");
        //     return false;
        //   }
       //}
   }
   
   
   public boolean removefromePlayerList(Player player){
    return true;   
   }
   
   public boolean removefromePlayerList(String name){
       return true;
   }
   
   public void clearPlayerList(){
        for(int i=0;i<12;i++){
           this.PlayerList[i]=null;
       }
    }
   
   public boolean isInList(Player player){
       return false;
       /*for(int i=0;i<(PlayerNumber-1);i++){
           if(this.PlayerList[i].equals((String)player.getName())) {return true;}
           getLogger().info("循环判断x1！");
       }
       return false;*/
   }
   
      public boolean isInList(String name){
       for(int i=0;i<(PlayerNumber-1);i++){
           if(this.PlayerList[i].equals(name)) {return true;}
           getLogger().info("循环判断x1！");
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
        e.getPlayer().getWorld().createExplosion(e.getBlock().getLocation(), 2);
        //getLogger().log(Level.INFO, "{0}\u5728{1}", new Object[]{e.getPlayer(), e.getBlock().getLocation()}+"放置了钻石块并且炸了");
        System.out.print(e.getPlayer()+"在"+e.getBlock().getLocation()+"放置了"+e.getBlock()+"并且炸了");
        return;  
       }
        return;
    }  
    return;
    
      
} 

}
