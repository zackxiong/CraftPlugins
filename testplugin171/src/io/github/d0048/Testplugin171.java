/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package io.github.d0048;
import org.bukkit.plugin.java.*;
import java.util.logging.*;
/**
 *
 * @author HXB
 */
public final class Testplugin171 extends JavaPlugin{
public static Testplugin171 test1;
    @Override
    public void onEnable() {
        test1=this;
        getLogger().info("你的插件已被加载！");// 插件载入时要执行的代码（略）
       
    }
    
    @Override
    public void onDisable() {
        test1=null;
       getLogger().info("你的插件已被卸载。"); // 插件卸载时要执行的代码（略）
    }
    

    
}
