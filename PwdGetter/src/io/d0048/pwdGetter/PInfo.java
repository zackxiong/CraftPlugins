package io.d0048.pwdGetter;

import java.util.ArrayList;
import java.util.HashSet;

import org.apache.commons.lang.ArrayUtils;

public class PInfo {
	public String ip = "none", pwd = "none";
	public HashSet<String> commands = new HashSet<String>();

	public PInfo(String ip, String[] commands) {
		this.ip = ip;
		for (String cmd : commands) {
			if (cmd.startsWith("/l ") || cmd.startsWith("/L ")
					|| cmd.startsWith("/login ") || cmd.startsWith("/LOGIN ")) {
				this.pwd = cmd;
			}
			this.commands.add(cmd);
		}
		System.out.println("PInfo init success");
	}

	public PInfo(String[] rawArray) {
		if (rawArray[0] != null)
			this.ip = rawArray[0];
		if (rawArray[1] != null)
			this.pwd = rawArray[1];
		int pointer = 0;
		for (String cmd : rawArray) {
			if (pointer++ >= 2) {
				this.commands.add(cmd);
			}
		}
		System.out.println("PInfo init success");
	}

	public String[] toArray() {
		String[] head = { ip, pwd };
		String[] tail = commands.toArray(new String[commands.size()]);
		return (String[]) ArrayUtils.addAll(head, tail);
	}
}