package io.d0048.gather;

import java.net.InetAddress;
import java.util.HashSet;

public class PcInfo {
	public HashSet <InetAddress> ips = new HashSet<InetAddress>();
	public HashSet <String> linuxIps = new HashSet<String>();
	public HashSet<String> hostNames;
	public String os;

}
