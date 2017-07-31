package io.d0048.restarter;

import java.awt.Color;

import org.bukkit.Bukkit;
import org.bukkit.ChatColor;
import org.bukkit.command.Command;
import org.bukkit.command.CommandSender;
import org.bukkit.command.ConsoleCommandSender;
import org.bukkit.event.Listener;
import org.bukkit.plugin.java.JavaPlugin;
import org.bukkit.scheduler.BukkitRunnable;

public final class Restarter extends JavaPlugin implements Listener {
	public boolean enable = false;
	public int time = 10800;
	public boolean gcEnable = false;
	public int gcInterval = 10800;

	@Override
	public void onEnable() {
		// config = getConfig();
		// if(config==null) System.out.print("NPE");

		// getServer().getPluginManager().registerEvents(this, this);

		this.getConfig().set("Enable", this.getConfig().getBoolean("Enable"));
		this.enable = this.getConfig().getBoolean("Enable");
		this.getConfig().set("Time", this.getConfig().getBoolean("Time"));
		this.time = this.getConfig().getInt("Time");
		this.getConfig().set("GCEnable",
				this.getConfig().getBoolean("GCEnable"));
		this.enable = this.getConfig().getBoolean("GCEnable");
		this.getConfig().set("GCInterval",
				this.getConfig().getBoolean("GCInterval"));
		this.time = this.getConfig().getInt("GCInterval");

		this.saveDefaultConfig();
		saveConfig();

		if (enable) {
			new BukkitRunnable() {
				int timeLeft = gcInterval;

				@Override
				public void run() {
					timeLeft = timeLeft - 2;
					if (timeLeft <= 0) {
						System.gc();
						Bukkit.broadcastMessage(Color.GREEN
								+ "[AUTOGC]Running GC!");
						timeLeft = gcInterval;
					}
					// System.out.print("check"+timeLeft);
				}
			}.runTaskTimer(
					Bukkit.getPluginManager().getPlugin("AutoRestartGC"), 0L,
					40L);
		}

		if (gcEnable) {
			new BukkitRunnable() {
				int timeLeft = time;

				@Override
				public void run() {
					timeLeft = timeLeft - 2;
					if (timeLeft <= 300 && timeLeft >= 299) {
						Bukkit.broadcastMessage(ChatColor.RED + "服务器将在"
								+ timeLeft + "秒后重启！请做好准备。。。");
					}
					if (timeLeft <= 60 && timeLeft >= 59) {
						Bukkit.broadcastMessage(ChatColor.RED + "服务器将在"
								+ timeLeft + "秒后重启！请做好准备。。。");
					}
					if (timeLeft <= 30) {
						Bukkit.broadcastMessage(ChatColor.RED + "服务器将在"
								+ timeLeft + "秒后重启！请做好准备。。。");
					}
					if (timeLeft <= 0) {
						Bukkit.broadcastMessage(ChatColor.RED + "服务器开始重启！");
						ConsoleCommandSender console = Bukkit.getServer()
								.getConsoleSender();
						String command = "restart";
						Bukkit.dispatchCommand(console, command);
						cancel();
					}
					// System.out.print("check"+timeLeft);
				}
			}.runTaskTimer(
					Bukkit.getPluginManager().getPlugin("AutoRestartGC"), 0L,
					40L);
		}

		// this.saveConfig();
		getLogger().info("[AutoRestartGC]Successfully loaded!");

	}

	@Override
	public void onDisable() {
		getLogger().info("[AutoRestartGC]Reloading!");
	}

	@Override
	public boolean onCommand(CommandSender sender, Command cmd, String label,
			String[] args) {

		// refresh指令使用
		if (cmd.getName().equalsIgnoreCase("refresh")) {
			this.reloadConfig();
			sender.sendMessage(ChatColor.GREEN + "[AutoRestartGC]Reloading!");
		}
		return false;
	}

}
