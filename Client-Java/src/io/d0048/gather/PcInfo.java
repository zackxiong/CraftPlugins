package io.d0048.gather;

import java.net.InetAddress;
<<<<<<< HEAD
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Properties;

public class PcInfo {
	public HashSet <InetAddress> ips = new HashSet<InetAddress>();
	ArrayList <String> accurateIps;
	public HashSet<String> hostNames;
	public String os;
	public String user;
	public HashSet<String> macAddresses;
	public Properties props=System.getProperties();
	public Date lastUpDate;
	public java.util.Map<String,String> env;
=======
import java.util.HashSet;

public class PcInfo {
	public HashSet <InetAddress> ips = new HashSet<InetAddress>();
	public HashSet <String> linuxIps = new HashSet<String>();
	public HashSet<String> hostNames;
	public String os;
>>>>>>> master

}
