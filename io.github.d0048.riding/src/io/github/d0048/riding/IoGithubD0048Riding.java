/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package io.github.d0048.riding;
import org.bukkit.plugin.java.*;
import org.bukkit.event.*;
import java.util.logging.*;
import org.bukkit.Bukkit;
import static org.bukkit.Bukkit.getLogger;
import org.bukkit.Material;
import org.bukkit.command.Command;
import org.bukkit.command.CommandSender;
import org.bukkit.configuration.file.FileConfiguration;
import org.bukkit.entity.Player;
import org.bukkit.event.block.*;

/**
 *
 * @author HXB
 */
public final class IoGithubD0048Riding extends JavaPlugin{

public static IoGithubD0048Riding test1;
breaksense breaksense1;
private FileConfiguration config;

    @Override
    public void onEnable() {//这个就算是这个插件的main函数了，插件从这里开始执行
        test1=this;
        breaksense1=new breaksense();//这里应该已经初始化了，类里面那个出错的数组也初始化了
        getServer().getPluginManager().registerEvents(breaksense1, this);//注册监听器，也就是另一个类里面的onBlockPlace(BlockPlaceEvent e)
        //breaksense1.breaksense();
        //breaksense1.addtoPlayerList("HXB");
        /*if(breaksense1.isInList("HXB")){
                System.out.print(breaksense1.isInList("HXB"));
                System.out.print("HXB在列表中");
                getLogger().info("HXB在列表中");
        }
        else{
                System.out.print(breaksense1.isInList("HXB"));//调试用。。。
                System.out.print("HXB不在列表中");
                getLogger().info("HXB不在列表中)");
        }*/
        
        config = this.getConfig();
        this.saveDefaultConfig();
        breaksense1.setExplodeSize(this.getConfig().getInt("Explode_Size"));
        breaksense1.setWall_Size_X(this.getConfig().getInt("Wall_Size_X"));
        breaksense1.setWall_Size_Y(this.getConfig().getInt("Wall_Size_Y"));
        breaksense1.setShieldDelay(this.getConfig().getInt("Shield_Delay")+1);
        breaksense1.setShieldHold(this.getConfig().getInt("Shield_Hold"));
        breaksense1.setTNTdelay(this.getConfig().getInt("TNTdelay"));
        getLogger().info("你的插件已被加载！"); //向日志写入
    }
    
    @Override
    public void onDisable() {
        test1=null;
        breaksense1.clearPlayerList();
       getLogger().info("你的插件已被卸载。");//相当于析构函数，不过其他还没写完这里就还没写，内存泄漏什么的先不管了
    }
    
    @Override
public boolean onCommand(CommandSender sender, Command cmd, String label, String[] args) {//当玩家执行了注册的指令时，让该玩家加入监听器的响应列表
    //命令addtoplayerlist
    //System.out.print("收到以下参数: label="+label+"argc="+args.length);
    int argc=args.length;
    //getLogger().info(sender.getName()+"执行了"+cmd.getLabel()+"并附加了"+argc+"个参数");
    
    if (cmd.getName().equalsIgnoreCase("addtoplayerlist")) { 
        if ((!(sender instanceof Player))&&argc!=1) {//不是玩家发出，且参数不合法
            sender.sendMessage("这个指令只能让玩家使用。"); return true;//如果不是玩家执行的，就直接报错返回
            } 
        else {
            if(argc==0){//没有参数默认玩家自身
                if(breaksense1.addtoPlayerList((Player)sender)==false){//鉴于这里也会出相同的错误，我判断就是那个方法的问题(已解决)
                    sender.sendMessage("玩家已满或已加入");//这里是报错至玩家
                    }
                else{
                    sender.sendMessage("成功加入"+sender.getName()+"到玩家列表");
                }
            }
            else if(argc==1){//一个参数则使用参数
                if(Bukkit.getPlayer(args[0])==null) {
                    sender.sendMessage("玩家:"+args[0]+"不在线或不存在");
                    //getLogger().warning("玩家:"+args[0]+"不在线或不存在");
                    return true;
                    }
                Player player=Bukkit.getPlayer(args[0]);//权宜之计
                if(breaksense1.addtoPlayerList(player)==false){//目前来看，当玩家在线的时候不会报错了，但是不在线时会有空指针（已解决）
                    sender.sendMessage("玩家已满或已加入");//这里是报错至玩家
                    }
                else{
                     sender.sendMessage("成功加入"+args[0]+"到玩家列表");
                     return true;
                    }
                }
            else    {//其他直接报错
                sender.sendMessage("你后面加的那一长串是什么鬼啊。。。");//这里在正常的时候也被被执行了，原因不明(已解决)
                //getLogger().warning("玩家"+sender.getName()+"错误的输入了"+argc+"个参数。。。");
                return false;
            }
            
        //return true;
        }
    }

    //命令removefromplayerlist
        if (cmd.getName().equalsIgnoreCase("removefromplayerlist")) { //还没有加多参数支持
        if ((!(sender instanceof Player))&&argc!=1) {//这里貌似改废了，需要排查下，总之执行不了，显示找不到玩家(已解决)
            sender.sendMessage("这个指令只能让玩家使用。");
            return true;
            } //如果不是玩家执行的，就直接报错返回
        else {
                
            if(argc==0){//没有参数默认玩家自身
                    if(breaksense1.removefromPlayerList((Player)sender)==false){
                        sender.sendMessage("找不到玩家或未知错误，具体是啥你看后台。。。");//这里是报错至玩家
                    }
                    else{
                        sender.sendMessage("已经将"+sender.getName()+"从列表中移除");
                    }
                    return true;
                }
                
            else if(argc==1){//一个参数则使用参数
                    
                    if(breaksense1.isInList(args[0])==false) {//这一块额外加一个判断存在的代码，以免加进不存在的玩意
                    sender.sendMessage("玩家:"+args[0]+"不存在列表中");
                    //getLogger().warning("玩家:"+args[0]+"不存在列表中");
                    return true;
                    }
                    
                    if(breaksense1.removefromPlayerList(args[0])==false){//目前来看，当玩家在线的时候不会报错了，但是不在线时会有空指针（已解决）
                        sender.sendMessage("移除玩家:"+args[0]+" 失败");//这里是报错至玩家
                        return true;
                        }
                    else{
                        sender.sendMessage("成功把"+args[0]+"从列表中移除");
                        return true;
                        }
                    }
            else    {//其他直接报错
                sender.sendMessage("你后面加的那一长串是什么鬼啊。。。");//这里在正常的时候也被被执行了，原因不明(已解决)
                //getLogger().warning("玩家"+sender.getName()+"错误的输入了"+argc+"个参数。。。");
                return false;
            }
        }
        //return true;
    }
        
    //命令getplayerlist
    if (cmd.getName().equalsIgnoreCase("getinfo")) {
        if ((sender instanceof Player)){
            sender.sendMessage("列表中当前有"+breaksense1.getPlayerNumber()+"个玩家，"
                                + "最大人数为"+breaksense1.getMaximumPlayer()+","
                                + "当前爆炸威力："+breaksense1.getExplodeSize());
            sender.sendMessage(breaksense1.getPlayerList());
            return true;
        }
        if (!(sender instanceof Player)){
            getLogger().info("列表中当前有"+breaksense1.getPlayerNumber()+"个玩家，"
                                + "最大人数为"+breaksense1.getMaximumPlayer()+","
                                + "当前爆炸威力："+breaksense1.getExplodeSize());
            for(int i=0;i<breaksense1.getMaximumPlayer();i++){
                if(breaksense1.getPlayerList()[i]!=null){
                    getLogger().info("玩家"+(i+1)+"是："+breaksense1.getPlayerList()[i]);   
                }                
            }
            
            return true;
        }
    }
    return true;



}}//这是类的那个反括号。。。
