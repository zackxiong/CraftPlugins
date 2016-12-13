package shellcontroller;

import java.io.BufferedReader;
import java.io.*;
import java.io.InputStreamReader;
import org.bukkit.Bukkit;
import static org.bukkit.Bukkit.getLogger;
import org.bukkit.plugin.java.JavaPlugin;


/**
 *
 * @author HXB
 */
public final class ShellController extends JavaPlugin{
    ShellController sc=this;
    
    @Override
    public void onEnable() {
        Bukkit.getLogger().info("已加载");
        String cmd = "cmd /c ipconfig /all" ; 
        try {  
            // 执行 CMD 命令  
            Process process = Runtime.getRuntime().exec(cmd);  
            // 从输入流中读取文本  
            BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));  
            String line = null;  
            // 循环读取  
             while ((line = reader.readLine()) != null) {  
                // 循环写入  
                System.out.print(line+"\n");
             }
            process.getOutputStream().close();
            System.out.println("程序执行完毕!");  
        }
        catch (Exception e) {  
            e.printStackTrace();  
        }
    }
    
    @Override
    public void onDisable() {
        getLogger().info("已卸载");
        sc=null;
    }
}
