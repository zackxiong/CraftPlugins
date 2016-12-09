/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package io.github.d0048.riding;

import org.bukkit.Bukkit;
import static org.bukkit.Bukkit.getLogger;
import org.bukkit.Location;
import org.bukkit.Material;
import org.bukkit.entity.Entity;
import org.bukkit.entity.Player;
import org.bukkit.event.block.BlockPlaceEvent;
import org.bukkit.plugin.Plugin;
import org.bukkit.scheduler.BukkitRunnable;
import org.bukkit.util.Vector;

/**
 *
 * @author HXB
 */
public class EffectExec {
    
    int Wall_Size_X=3,Wall_Size_Y=3;
    
    public boolean SheildEnterence(BlockPlaceEvent e,int delay){
        this.ChargeSheild(e,delay);
        return true;
    }
    
    
    void ChargeSheild(BlockPlaceEvent e,int delay){//充能动画+延时
        new BukkitRunnable(){
            int time = delay;  // 5秒
            @Override
            public void run() {
                time=time-1;
                if(time == 0){
                    Bukkit.getLogger().info("my");
                    MakeSheild(e);
                    cancel();  // 终止线程
                    return;
                }
                else{
                    System.out.print(time);
                }
                // your code ...
                Bukkit.getLogger().info("my");
            }
        }.runTaskTimer(Bukkit.getPluginManager().getPlugin("blockode"), 0L, 20L);
    }
    
    
    public  boolean MakeSheild(BlockPlaceEvent e){//充能完成
        int x=e.getBlock().getX(),
        y=e.getBlock().getY(),
        z=e.getBlock().getZ();
        Location playerLocation=e.getPlayer().getLocation(),
             blockLocation=e.getBlock().getLocation();
    
        Location [][]wall=new Location[Wall_Size_X][Wall_Size_Y];
        Location middle=new Location(e.getBlock().getWorld(),x,y,z),
                     up=new Location(e.getBlock().getWorld(),x,y,z),
                     down=new Location(e.getBlock().getWorld(),x,y,z),
                     left=new Location(e.getBlock().getWorld(),x,y,z),
                     right=new Location(e.getBlock().getWorld(),x,y,z),
                     marker=new Location(e.getBlock().getWorld(),x,y,z),
                     init=e.getBlock().getLocation();
            
            for(int ix=0;ix<Wall_Size_X;ix++){//随便初始化一下一下，记得别指向同一个玩意导致指针相同，而改一个全改
                for(int iy=0;iy<Wall_Size_X;iy++){
                    wall[ix][iy]=new Location(e.getBlock().getWorld(),x,y,z);
                }
            }
            //解决方案1
            /*if(playerLocation.getX()-blockLocation.getBlockX()>0.5){//如果在后面,>,而且超过一半
                middle.setX(e.getBlock().getX()-3);
                getLogger().info("x-3");
            }
            //else if(playerLocation.getX()==blockLocation.getBlockX()){}//纯粹是为了占用掉这种情况
            else if(playerLocation.getX()-blockLocation.getBlockX()<-0.5){
                middle.setX(e.getBlock().getX()+3);
                getLogger().info("X+3");
            }
            else{}
            
            if(playerLocation.getZ()-blockLocation.getBlockZ()>0.5){//如果在左面,>
                middle.setZ(e.getBlock().getZ()-3);
                getLogger().info("Z-3");
            }
            //else if(playerLocation.getZ()==blockLocation.getBlockZ()){}//纯粹是为了占用掉这种情况
            if(playerLocation.getZ()-blockLocation.getBlockZ()<-0.5){
                middle.setZ(e.getBlock().getZ()+3);
                getLogger().info("Z+3");
            }
            else{}
            //这之后middle就已经作为护盾中心了*/
            
            //解决方案2
            /*
            Double disX=Math.abs(blockLocation.getBlockX()-playerLocation.getX()),
                   disY=Math.abs(blockLocation.getBlockY()-playerLocation.getY()),
                   disZ=Math.abs(blockLocation.getBlockZ()-playerLocation.getZ());
            getLogger().info(disX+","+disY+","+disZ);
            //X对称
            if(playerLocation.getX()<blockLocation.getBlockX()){
                middle.setX(e.getBlock().getX()+disX);
                getLogger().info("x+"+disX);
            }
            else if(playerLocation.getX()==blockLocation.getBlockX()){}
            else{
                middle.setX(e.getBlock().getX()-disX);
                getLogger().info("x-"+disX);
            }
            //Y对称
            if(playerLocation.getY()<blockLocation.getBlockY()){
                middle.setY(e.getBlock().getY()+disY);
                getLogger().info("Y+"+disY);
            }
            else if(playerLocation.getY()==blockLocation.getBlockY()){}
            else{
                middle.setY(e.getBlock().getY()+1);
                getLogger().info("Y+"+1);
            }
            //Z对称
            if(playerLocation.getZ()<blockLocation.getBlockZ()){
                middle.setZ(e.getBlock().getZ()+disZ);
                getLogger().info("Z+"+disZ);
            }
            else if(playerLocation.getZ()==blockLocation.getBlockZ()){}
            else{
                middle.setZ(e.getBlock().getZ()-disZ);
                getLogger().info("Z("+e.getBlock().getZ()+")-"+disZ);
            }
            //middle.setY(blockLocation.getBlockY()*2-playerLocation.getY());
            //middle.setZ(blockLocation.getBlockZ()*2-playerLocation.getZ());
            //这之后middle就已经作为护盾中心了*/
            //解决方案3(最佳)
            Double disX=blockLocation.getBlockX()-playerLocation.getX(),
                   disY=blockLocation.getBlockY()-playerLocation.getY(),
                   disZ=blockLocation.getBlockZ()-playerLocation.getZ();
            getLogger().info(disX+","+disY+","+disZ);
            middle.setX((e.getBlock().getX()+disX));
            middle.setY((e.getBlock().getY()+disY)+1);//提高一个改善效果
            middle.setZ((e.getBlock().getZ()+disZ));
            //middle.setY(blockLocation.getBlockY()*2-playerLocation.getY());
            //middle.setZ(blockLocation.getBlockZ()*2-playerLocation.getZ());
            //这之后middle就已经作为护盾中心了
            middle.getBlock().setType(Material.BEACON);
            e.getBlock().setType(Material.AIR);
            /**
             * 圆点坐标：(x0,y0) 
                半径：r 
                角度：a0 
                则圆上任一点为：（x1,y1） 
                x1   =   x0   +   r   *   cos(ao   *   3.14   /180   ) 
                y1   =   y0   +   r   *   sin(ao   *   3.14   /180   ) 
             */
            double playeryaw=e.getPlayer().getLocation().getYaw();
            double radious_horizontal=Math.sqrt(disX*disX+disZ*disZ);
            for(radious_horizontal=6;radious_horizontal>2;radious_horizontal=radious_horizontal-1){//上面半部分
                marker.setY(marker.getY()+1);
                for(double a0=playeryaw;a0<playeryaw+100;a0=a0+1){//左边一半画出二维
                   marker.setX(middle.getX()+radious_horizontal*Math.cos(a0*3.14/180));
                   marker.setZ(middle.getZ()+radious_horizontal*Math.sin(a0*3.14/180));
                   //marker.setY(middle.getY()+radious_horizontal*Math.sin(a0*3.14/180));
                   marker.getBlock().setType(Material.GLASS);
                   //getLogger().info("left");
                }
              for(double a0=playeryaw;a0<playeryaw+200;a0=a0+1){//右边一半画出二维
                   marker.setX(middle.getX()+radious_horizontal*Math.cos(a0*3.14/180));
                   marker.setZ(middle.getZ()+radious_horizontal*Math.sin(a0*3.14/180));
                   //marker.setY(middle.getY()+radious_horizontal*Math.sin(a0*3.14/180));
                   marker.getBlock().setType(Material.GLASS);
                   //getLogger().info("right");
                }
            }
            marker.setY(e.getBlock().getY()+1);//状态归零
            for(radious_horizontal=6;radious_horizontal<8;radious_horizontal=radious_horizontal+1){//下面半部分
                marker.setY(marker.getY()-1);
                for(double a0=playeryaw;a0<playeryaw+100;a0=a0+1){//左边一半画出二维
                   marker.setX(middle.getX()+radious_horizontal*Math.cos(a0*3.14/180));
                   marker.setZ(middle.getZ()+radious_horizontal*Math.sin(a0*3.14/180));
                   //marker.setY(middle.getY()+radious_horizontal*Math.sin(a0*3.14/180));
                   marker.getBlock().setType(Material.GLASS);
                   //getLogger().info("left");
                }
              for(double a0=playeryaw;a0<playeryaw+200;a0=a0+1){//右边一半画出二维
                   marker.setX(middle.getX()+radious_horizontal*Math.cos(a0*3.14/180));
                   marker.setZ(middle.getZ()+radious_horizontal*Math.sin(a0*3.14/180));
                   //marker.setY(middle.getY()+radious_horizontal*Math.sin(a0*3.14/180));
                   marker.getBlock().setType(Material.GLASS);
                   //getLogger().info("right");
                }
            }
            
            //down.getBlock().setType(Material.GLASS);
            //left.getBlock().setType(Material.GLASS);
            //right.getBlock().setType(Material.GLASS);
            
            //getLogger().info(e.getBlock().getLocation()+"到"+middle);
            
             for(Entity entity : e.getPlayer().getNearbyEntities(20.0D, 20.0D, 20.0D)){
                            //if(entity instanceof Player){
                            //    Player nearby = (Player) entity;
                            //    if(nearby!=null)
                                getLogger().info(entity.toString());
                                entity.setVelocity(new Vector(disX*1.5,disY*1.5,disZ*1.5));
                                //entity.damage(3.0);
                            //}
                }

            return true;  
        }

    }


