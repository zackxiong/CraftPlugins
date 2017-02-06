package io.d0048.gather;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.HashSet;

public class InfoSenser {
	PcInfo pcinfo = new PcInfo();
	
	public PcInfo sense(){
		this.pcinfo.ips = this.getIpAddresses();
		this.pcinfo.os = this.getOs();
		this.pcinfo.hostNames = this.getHostNames();
		System.out.print(pcinfo.ips.toString()+"\n");
		System.out.print(pcinfo.os.toString()+"\n");
		System.out.print(pcinfo.hostNames.toString()+"\n");
		return this.pcinfo;
	}
	
	public String getOs(){
		 String os = System.getProperty("os.name");
		 return os;
	}
	
	public HashSet<String> getHostNames(){
		HashSet <String> hostNames = new HashSet<String>();
		try{
			this.pcinfo.ips.add(InetAddress.getLocalHost());
			for( InetAddress ip : InetAddress.getAllByName(InetAddress.getLocalHost().getHostName()) ){
				hostNames.add(ip.getHostName());
			}
		}
		catch(UnknownHostException e){
			e.printStackTrace();
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return hostNames;
	}
	
	public HashSet<InetAddress> getIpAddresses(){
		try{
			this.pcinfo.ips.add(InetAddress.getLocalHost());
			for( InetAddress ip : InetAddress.getAllByName(InetAddress.getLocalHost().getHostName()) ){
				this.pcinfo.ips.add(ip);
			}
		}
		catch(UnknownHostException e){
			e.printStackTrace();
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return this.pcinfo.ips;
	}
	
	public HashSet<String> getLinuxIpAddresses() throws Exception{
		if(System.getProperty("os.name").startsWith("Linux")){
			String rawIps=Executer.exec(command);
		}
		else{
			throw new Exception("e");
			return null;
		}
	}
	
	public static String getMACAddress(){  
        String address = "";
        String os = System.getProperty("os.name");
        String osUser=System.getProperty("user.name");
        if (os != null && os.startsWith("Windows")) {
            try {
                String command = "cmd.exe /c ipconfig /all";
                Process p = Runtime.getRuntime().exec(command);
                BufferedReader br =new BufferedReader(new InputStreamReader(p.getInputStream()));
                String line;
                while ((line = br.readLine()) != null) {
                    if (line.indexOf("Physical Address") > 0) {
                        int index = line.indexOf(":");
                        index += 2;
                        address = line.substring(index);
                        break;
                    }
                }
                br.close();
                return address.trim();
            }
            catch (IOException e) {
            	e.printStackTrace();
            }
        }
        return address;
    }

	
}
