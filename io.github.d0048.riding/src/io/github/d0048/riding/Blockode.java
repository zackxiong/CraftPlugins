/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package io.github.d0048.riding;

import java.util.logging.Level;
import org.bukkit.Bukkit;
import static org.bukkit.Bukkit.getLogger;
import org.bukkit.ChatColor;
import org.bukkit.Effect;
import org.bukkit.Location;
import org.bukkit.Material;
import org.bukkit.World;
import org.bukkit.block.Block;
import org.bukkit.craftbukkit.v1_7_R4.entity.CraftPlayer;
import org.bukkit.entity.Arrow;
import org.bukkit.entity.Entity;
import org.bukkit.entity.EntityType;
import org.bukkit.entity.Player;
import org.bukkit.entity.Projectile;
import org.bukkit.event.EventHandler;
import org.bukkit.event.EventPriority;
import org.bukkit.event.Listener;
import org.bukkit.event.block.BlockPlaceEvent;
import org.bukkit.event.entity.EntityDamageByEntityEvent;
import org.bukkit.event.entity.EntityDamageEvent;
import org.bukkit.event.entity.EntityShootBowEvent;
import org.bukkit.event.entity.ProjectileHitEvent;
import org.bukkit.event.player.PlayerBedEnterEvent;
import org.bukkit.potion.PotionEffect;
import org.bukkit.scheduler.BukkitRunnable;
import org.bukkit.util.Vector;

/**
 *
 * @author HXB
 */
public class Blockode implements Listener{
    
    String []PlayerList;
    private EffectExec executer;
    int PlayerNumber=0;//减一之后再使用
    private int MaximumPlayer=12;//最多12个人
    private int ExplodeSize=4;
    private int Wall_Size_X=3;
    private int Wall_Size_Y=3;
    private int shieldDelay=1;
    float shieldHold=4;
    int TNTdelay=2;
    private World gameworld;

    public float getShieldHold() {
        return shieldHold;
    }

    public void setShieldHold(float shieldHold) {
        this.shieldHold = shieldHold;
    }
    
    public Blockode(){
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
               initPlayer(player);
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
               initPlayer(Bukkit.getPlayer(name));
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
       //getLogger().info("开始查询玩家");
       if(!isInList(player)){
           getLogger().info("找不到玩家");
           return false;
       }
       else{
           //getLogger().info("确认玩家在列表内，开始搜索");
           for(int i=0;i<=(PlayerNumber-1);i++){
           getLogger().info("removefromPlayerList():匹配"+player.getName()+"第"+(i+1)+"次");
           if(this.PlayerList[i].equals(player.getName())) {
               this.PlayerList[i]=null; 
               this.PlayerNumber=this.PlayerNumber-1;
               initPlayer(player);
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
               this.PlayerList[i]=null; 
               this.PlayerNumber=this.PlayerNumber-1;
               initPlayer(Bukkit.getPlayer(name));
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
           if(this.PlayerList[i].equals(player.getName())&&this.gameworld.equals(player.getWorld())) {
               //getLogger().info("匹配到列表中是玩家");
               return true;
           }
       }
       return false;
   }
   
      public boolean isInList(String name){
       for(int i=0;i<=(PlayerNumber-1);i++){
           //getLogger().info("匹配"+name+"第"+(i+1)+"次");
           if(this.PlayerList[i].equals(name)&&this.gameworld.equals(Bukkit.getPlayer(name).getWorld())) {
               //getLogger().info("匹配到列表中是玩家");
               return true;
           }
       }
       return false;
   }
      
      public void initPlayer(Player player){
          player.setWalkSpeed(0.2f);
          player.setMaxHealth(40);
          player.setFoodLevel(20);
          player.setExp(0);
          player.eject();
          for(PotionEffect effect : player.getActivePotionEffects())//清空药水效果
          {
            player.removePotionEffect(effect.getType());
          }
      }
      
      void fourDirectionGenerate(){
          
      }
//监听器放置
@EventHandler(priority = EventPriority.NORMAL,ignoreCancelled = true)  //这就是我说的那个监听器了，事件发生时会触发下面这个方法
public void onBlockPlace(BlockPlaceEvent e)  {
    //int x=e.getBlock().getX(),
    //    y=e.getBlock().getY(),
    //    z=e.getBlock().getZ();
    //Location playerLocation=e.getPlayer().getLocation(),
    //         blockLocation=e.getBlock().getLocation();
    
    //方块信标,制造一面墙和冲击
    if(e.getBlock().getType() == Material.BEACON){
        if(isInList(e.getPlayer())==true){//如果发出者在列表里，就执行下面的内容（单独执行不会报错，工作正常）
            EffectExec shield=new EffectExec(shieldHold);
            e.getPlayer().sendMessage(ChatColor.BLUE+"按住\"S\"以充能...按得越久护盾距离越远哦");
            shield.SheildEnterence(e,shieldDelay);
            shield=null;//即时释放内存。。
            return;
        }
    }
    //貌似上面那个加上去之后下面这个就废了。。（已解决，我眼瞎了）
    
    //方块TNT,爆炸
    if(e.getBlock().getType() == Material.TNT){  
        if(isInList(e.getPlayer())==true){//如果发出者在列表里，就执行下面的内容（单独执行不会报错，工作正常）(连续使用会无法传递事件，是getspeed/setpseed的问题)
            EffectExec TNT=new EffectExec(ExplodeSize);
            TNT.setExplodePower(ExplodeSize);
            TNT.setTNTdelay(TNTdelay);
            TNT.ChargeTNT(e);
            TNT=null;//释放内存
            //getLogger().info(ChatColor.GREEN+e.getPlayer().toString()+"在"+e.getBlock().getLocation()+"放置了"+e.getBlock()+"并且炸了");
            return;  
       }
        return;
    }

    return;
}


//射箭监听器使用
    @EventHandler(priority = EventPriority.NORMAL,ignoreCancelled = true)  //这就是我说的那个监听器了，事件发生时会触发下面这个方法
    public void onEntityShootBow(EntityShootBowEvent e)  {
        //把人挂上去
        if(e.getEntity() instanceof Player&&isInList((Player)e.getEntity())){
            e.getProjectile().setVelocity(e.getProjectile().getVelocity().add(e.getProjectile().getVelocity()));
            e.getProjectile().setPassenger(e.getEntity());
            
            new BukkitRunnable(){//效果播放
                int timemax=15;
                @Override
                public void run(){
                    timemax=timemax-1;
                    if(timemax<=0){
                        cancel();
                    }
                    boolean exist=false;
                    //System.out.print("effect,enter");
                    /*for(Entity entity : e.getProjectile().getNearbyEntities(2d, 2d, 2d)){
                        if(entity instanceof Projectile){
                            exist=true;
                        }
                    }*/
                    //if(!e.getProjectile().isOnGround()|!e.getEntity().isOnGround()){
                    if(Material.AIR==e.getProjectile().getWorld().getBlockAt((int)e.getProjectile().getLocation().getX(), (int)e.getProjectile().getLocation().getY()-1, (int)e.getProjectile().getLocation().getZ()).getType()){
                        for(int i=0;i<10;i++){
                            e.getProjectile().getWorld().playEffect(e.getProjectile().getLocation(), Effect.FIREWORKS_SPARK, 2);
                            Material m=e.getProjectile().getWorld().getBlockAt((int)e.getProjectile().getLocation().getX(), (int)e.getProjectile().getLocation().getY()-1, (int)e.getProjectile().getLocation().getZ()).getType();
                            //System.out.print(m.name()+",effect,"+e.getEntity().isOnGround());
                        }
                    }
                    else{
                        cancel();
                    }
                }
            }.runTaskTimer(Bukkit.getPluginManager().getPlugin("blockode"), 10L, 2L);
            
            new BukkitRunnable(){//确认不会卡在墙里面
            int a=0;
            @Override
            public void run() {
                /*if(e.getEntity().getLocation().getBlock().getType()!=Material.AIR){//防止困住
                    //System.out.print("一次执行");
                    e.getEntity().eject();
                    e.getProjectile().eject();
                    e.getEntity().getLocation().setY(e.getEntity().getLocation().getY()+3);
                    if(e.getEntity().getLocation().getBlock().getType()==Material.AIR){
                        needdo=true;
                    }
                    isdo=true;
                    }
                    if(isdo==true&&needdo==true){
                        System.out.print("全部完了isdo:"+isdo+",needdo:"+needdo);
                        cancel();
                    }*///解决方案1
                if(e.getEntity().getLocation().getBlock().getType()!=Material.AIR||e.getProjectile().getVelocity()==new Vector(0,0,0)){
                    //System.out.print("eject");
                    e.getEntity().eject();
                    e.getProjectile().eject();
                    e.getProjectile().remove();
                    Location loc=e.getEntity().getLocation();
                    loc.setY(e.getEntity().getLocation().getY()+1);
                    e.getEntity().teleport(loc);
                    if(e.getEntity().getLocation().getBlock().getType()==Material.AIR){
                        cancel();
                    }

                }//解决方案2
                
            }
        }.runTaskTimer(Bukkit.getPluginManager().getPlugin("blockode"), 10L, 2L);
            return;
        }
    }
    
    //命中监听器使用
    @EventHandler(priority = EventPriority.NORMAL,ignoreCancelled = true)
    public void OnProjectileHit(ProjectileHitEvent e){
        //if(e.getEntity().getPassenger()!=null && isInList((Player)e.getEntity().getPassenger())){
            //e.getEntity().getPassenger().setVelocity(e.getEntity().getVelocity());
        //}
        
    }
    
    //受伤监听器使用
    @EventHandler(priority = EventPriority.NORMAL,ignoreCancelled = true)
    public void OnPlayerDamage(EntityDamageEvent e){
        //if(e.getEntity() instanceof Player && isInList((Player)e.getEntity())&&){
            //e.getEntity().getPassenger().setVelocity(e.getEntity().getVelocity());
        //}
    }
    
    //被射中受伤监听器使用
    @EventHandler(priority = EventPriority.NORMAL,ignoreCancelled = true)//确认不会把自己射中
    public void OnEntityDamageByEntity(EntityDamageByEntityEvent e){
        if (e.getDamager() != null//找得到发出者
                &&isInList((Player)e.getEntity())//被击中者在列表中
                &&isInList((Player)((Arrow) e.getDamager()).getShooter())
                && e.getEntityType() == EntityType.PLAYER //是玩家
                && e.getDamager().getType() == EntityType.ARROW//是箭
                && ((Arrow) e.getDamager()).getShooter() == e.getEntity()//是自己发出的
                ) {
            //e.getEntity().setVelocity(e.getDamager().getVelocity());
            ((Player)e.getEntity()).sendMessage(ChatColor.RED+"你已达到最大射程，为了免得你摔死，你正在降落");
            e.setCancelled(true);
        }
    }
    
    //进入床监听器使用
    @EventHandler(priority = EventPriority.NORMAL,ignoreCancelled = true)  //这就是我说的那个监听器了，事件发生时会触发下面这个方法
    public void onBedEnter(PlayerBedEnterEvent e)  {
        new BukkitRunnable(){//保证晚上
                @Override
                public void run(){
                    gameworld.setTime(111111);
                };
            }.runTaskTimer(Bukkit.getPluginManager().getPlugin("blockode"), 0L, 200L);
        
        if(isInList(e.getPlayer()) && e.getPlayer().getHealth()<e.getPlayer().getMaxHealth()){//回血
            new BukkitRunnable(){
                @Override
                public void run(){
                    if(e.getPlayer().getHealth()<e.getPlayer().getMaxHealth()&&e.getPlayer().isSleeping()){
                        e.getPlayer().setHealth(e.getPlayer().getHealth()+6);
                    }
                    else{
                        //e.getPlayer().teleport(e.getPlayer().getLocation());
                        ((CraftPlayer) e.getPlayer()).getHandle().a(true, false, false);
                        e.getBed().setType(Material.AIR);
                        cancel();
                            };
                }
            }.runTaskTimer(Bukkit.getPluginManager().getPlugin("blockode"), 20L, 20L);
        }
        else{
            return;
        }
    }
    
//下面是getter和setter

    public int getTNTdelay() {
        return TNTdelay;
    }

    public void setTNTdelay(int TNTdelay) {
        this.TNTdelay = TNTdelay;
    }

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

    public World getGameworld() {
        return gameworld;
    }

    public void setGameworld(World gameworld) {
        this.gameworld = gameworld;
    }
   

}
