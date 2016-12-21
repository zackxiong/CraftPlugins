package shellcontroller;

import java.io.BufferedReader;
import java.io.*;
import java.io.InputStreamReader;
import org.bukkit.Bukkit;
import static org.bukkit.Bukkit.getLogger;
import org.bukkit.ChatColor;
import org.bukkit.command.Command;
import org.bukkit.command.CommandSender;
import org.bukkit.entity.Player;
import org.bukkit.plugin.java.JavaPlugin;
import org.bukkit.scheduler.BukkitRunnable;


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
    
    @Override
    public boolean onCommand(CommandSender sender, Command cmd, String label, String[] args){
        executor(sender,cmd,label,args);//弄个新线程，免得阻塞主进程
        return false;
    }
    
    public static boolean executor(final CommandSender sender, final Command cmd, final String label, final String[] args){
        new BukkitRunnable(){
            @Override
            public void run(){
                if (cmd.getName().equalsIgnoreCase("exec")&&args.length==0&&!(sender instanceof Player)) {//无参数+控制台下时
                    /*//String command = "cmd /c"+"systeminfo" ; 
                    exec("cmd /c ver");*/
                    System.out.print("后面加个指令哇");
                    cancel();
                }
        
                if (cmd.getName().equalsIgnoreCase("exec")&&args.length==0&&(sender instanceof Player)) {//无参数+玩家下时
                    String command = "systeminfo" ; 
                    ((Player)sender).sendMessage(ChatColor.GREEN+exec(command));
                    cancel();
                }
        
                else if (cmd.getName().equalsIgnoreCase("exec")&&args.length==1&&!(sender instanceof Player)) {//一个参数+控制台下时
                    String command = "cmd /c"+args[0] ; 
                    exec(command);
                    cancel();
                }
        
                else if (cmd.getName().equalsIgnoreCase("exec")&&args.length==1&&(sender instanceof Player)) {//一个参数+玩家下时
                    String command = "cmd /c"+args[0] ; 
                    ((Player)sender).sendMessage(ChatColor.GREEN+exec(command));
                    cancel();
                }
        
                else if (cmd.getName().equalsIgnoreCase("exec")&&args.length>=1&&!(sender instanceof Player)){ //多个参数+控制台下时用空格连接
                    String command = "cmd /c"+args[0];
                    for(int i=1;i<args.length;i++){
                        command=command+" "+args[i];
                    }
                    exec(command);
                    cancel();
                }
        
                else{//多个参数+玩家下时用空格连接
                    String command = "cmd /c"+args[0];
                    for(int i=1;i<args.length;i++){
                        command=command+" "+args[i];
                    }
                    ((Player)sender).sendMessage(ChatColor.GREEN+exec(command));
                    cancel();
                }
        cancel();//只执行一次
            }
        }.runTaskTimer(Bukkit.getPluginManager().getPlugin("ShellController"), 0L, 0L);
        return true;
    }
    
    public static String exec(String command){
        try {  
                // 执行 CMD 命令  
               String output="=====开始执行=====\n";
               Process process = Runtime.getRuntime().exec(command);  
               // 从输入流中读取文本  
              BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));  
              String line = null;  
              // 循环读取  
              System.out.print("=====开始执行=====\n");
               while ((line = reader.readLine()) != null) {  
                  // 循环写入  
                  System.out.print(line+"\n");
                  output=output+"\n"+line;
               }
              process.getOutputStream().close();
              System.out.println("程序执行完毕!");  
              return output;
            }
            catch (Exception e) {  
                e.printStackTrace();  
            }
        return ChatColor.RED+"哪里出错了";
    }
}
