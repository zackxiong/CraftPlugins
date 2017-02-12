package io.github.d0048.sl;
import android.content.*;
import android.widget.*;
import android.app.*;
import java.util.*;

/*
 author:缄默no
 该源码仅供aide吧学习使用，不得修改，转载或生成apk进行发布。
 http://jianmono.tk

 copyright © jianmo 2014.6.8

 */
public class BootBroadcastReceiver extends BroadcastReceiver
{
	String action_boot="android.intent.action.BOOT_COMPLETED";

	@Override
	public void onReceive(Context context, Intent intent)
	{
		ActivityManager am=(ActivityManager)context.getSystemService(context.ACTIVITY_SERVICE);
		List<ActivityManager.RunningTaskInfo> runningTasks = am.getRunningTasks(1); 
		ActivityManager.RunningTaskInfo runningTaskInfo = runningTasks.get(0); 
		ComponentName topActivity =runningTaskInfo.topActivity; 
		String packageName =topActivity.getPackageName(); 

		if (packageName.equals("tk.jianmo.lockphone"))
		{//判断是否是本应用
		}
		else
		{
			//不是本应用，启动应用，并kill掉之前的应用
			Intent ootStartIntent=new Intent(context, MainActivity.class);
			ootStartIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
			context.startActivity(ootStartIntent);
			am.killBackgroundProcesses(packageName);
		}
	} }
