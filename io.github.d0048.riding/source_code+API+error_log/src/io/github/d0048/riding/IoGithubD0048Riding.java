/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package io.github.d0048.riding;
import org.bukkit.plugin.java.*;
import org.bukkit.event.*;
import java.util.logging.*;
import org.bukkit.Material;
import org.bukkit.command.Command;
import org.bukkit.command.CommandSender;
import org.bukkit.entity.Player;
import org.bukkit.event.block.*;

/**
 *
 * @author HXB
 */
public final class IoGithubD0048Riding extends JavaPlugin{
public static IoGithubD0048Riding test1;
breaksense breaksense1;
    @Override
    public void onEnable() {//这个就算是这个插件的main函数了，插件从这里开始执行
        test1=this;
        breaksense1=new breaksense();
        getServer().getPluginManager().registerEvents(breaksense1, this);//注册监听器，也就是另一个类里面的onBlockPlace(BlockPlaceEvent e)
        String name="HXB";
        breaksense1.addtoPlayerList(name);//就是这句话的调用会出问题，详细去看addtoPlayerList(String name)这个方法
        getLogger().info("你的插件已被加载！"); //向日志写入
    }
    
    @Override
    public void onDisable() {
        test1=null;
       getLogger().info("你的插件已被卸载。");//相当于析构函数，不过其他还没写完这里就还没写，内存泄漏什么的先不管了
    }
    
    @Override
public boolean onCommand(CommandSender sender, Command cmd, String label, String[] args) {//当玩家执行了注册的指令时，让该玩家加入监听器的响应列表
    if (cmd.getName().equalsIgnoreCase("addtoplayerlist")) { 
        if (!(sender instanceof Player)) {sender.sendMessage("这个指令只能让玩家使用。");} //如果不是玩家执行的，就直接报错返回
        else {
                //Player player = (Player) sender;
                //是玩家执行的就执行下面的内容
                if(breaksense1.addtoPlayerList((Player)sender)==false){//鉴于这里也会出相同的错误，我判断就是那个方法的问题
                    sender.sendMessage("玩家已满");//这里是报错至玩家
                }
            }
        return true;
    } 
    return false;
}
}
