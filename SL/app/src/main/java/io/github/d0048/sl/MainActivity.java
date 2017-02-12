package io.github.d0048.sl;

import android.app.*;
import android.os.*;
import android.view.*;
import android.widget.*;
import android.content.*;
import java.util.*;
import android.view.View.*;
import android.text.*;
import android.view.InputQueue.*;

/*
author:缄默no
该源码仅供aide吧学习使用，不得修改，转载或生成apk进行发布。
http://jianmono.tk

copyright © jianmo 2014.6.8

*/
public class MainActivity extends Activity
{
	Intent intent;
	Context context;
	long usedTime=0,newTime=0;
	int keyTouthInt=0;
	TextView tv_time;
	SharedPreferences sp;
	Timer timer;
	TimerTask timertask;
	int theBeginTimeToFinish=1 * 60 * 60 * 24;//总的时间，以秒为单位
	int timetofinish=theBeginTimeToFinish;
	@Override
    public void onCreate(Bundle savedInstanceState)   
	{
        super.onCreate(savedInstanceState);

        this.getWindow().setType(WindowManager.LayoutParams.TYPE_KEYGUARD_DIALOG);
        KeyguardManager keyguardManager = (KeyguardManager) getSystemService(KEYGUARD_SERVICE);
        KeyguardManager.KeyguardLock lock = keyguardManager.newKeyguardLock(KEYGUARD_SERVICE);

		requestWindowFeature(Window.FEATURE_NO_TITLE);
		//4.0以上锁定home键
		getWindow().setFlags(0x80000000, 0x80000000);
		//全屏不能在代码中设置，在AndroidManifest.xml中
        setContentView(R.layout.main);
		context = this;

		
		//获取控件
		tv_time = (TextView)super.findViewById(R.id.mainTextViewTime);
		
		//启动service
		intent = new Intent();
		intent.setClass(MainActivity.this, photoservice.class);
		startService(intent);

		sp = getSharedPreferences("TimeSave", MODE_PRIVATE);
		
		//得到保存的时间
		timetofinish = sp.getInt("saveTime", timetofinish);
	/*	//如果时间小于1s，则恢复原值
		if (timetofinish <= 1)
		{
			timetofinish = theBeginTimeToFinish;
		}*/
		timer = new Timer();
		
		timertask = new TimerTask(){
			@Override
			public void run()
			{
				runOnUiThread(new Runnable(){

						@Override
						public void run()
						{
							// TODO: Implement this method
							int hour,minute,second;
							hour = timetofinish / (1 * 60 * 60);//获取剩余的小时数
							minute = (timetofinish % (1 * 60 * 60)) / (1 * 60);//分钟数
							second = timetofinish % (1 * 60);//秒
							tv_time.setText(hour + "时" + minute + "分" + second + "秒后程序自动退出!");
							sp.edit().putInt("saveTime", timetofinish).commit();//保存，在程序退出或重启后能恢复
							if (timetofinish == 0)//判断剩余时间是否为0，为0退出程序
							{
								stopService(intent);
								System.exit(0);
							}
							timetofinish--;	//时间自减1S
						}
					});
			}
		};
		timer.schedule(timertask, 0, 1000);//一秒重复一次
	}

	@Override
	//监听各种按键
	//keytouch和onkeydown中包含强制解锁代码
	//解锁方法:开启飞行→两次back→音量下→音量上→back→menu
	//开启飞行模式方法:应用启动后是全屏显示，关闭屏幕，打开屏幕，就不是全屏了！
	public boolean onKeyDown(int keyCode, KeyEvent event)
	{
		if (keyCode == event.KEYCODE_BACK)
		{
			if (keyTouthInt == 0)
			{
				usedTime = SystemClock.currentThreadTimeMillis();
				keyTouthInt = 1;
				usedTime = System.currentTimeMillis();
			}
			else if (keyTouthInt == 1)
			{
				keytouch(usedTime, keyTouthInt, 1);
			}
			else
			{
				keytouch(usedTime, keyTouthInt, 4);
			}
		}
		if (keyCode == event.KEYCODE_HOME)
		{
			keytouch(usedTime, keyTouthInt, 100);
		}
		if (keyCode == event.KEYCODE_MENU)
		{
			
			keytouch(usedTime, keyTouthInt, 5);
			if (keyTouthInt == 6)
			{
				stopService(intent);
				ActivityManager am=(ActivityManager)context.getSystemService(context.ACTIVITY_SERVICE);
				am.killBackgroundProcesses("tk.jianmo.lockphone");
				System.exit(1);
				System.exit(0);
				
			}
			
		}
		if (keyCode == event.KEYCODE_VOLUME_DOWN)
		{
			keytouch(usedTime, keyTouthInt, 2);
		}
		if (keyCode == event.KEYCODE_VOLUME_UP)
		{
			keytouch(usedTime, keyTouthInt, 3);
		}
		if (keyCode == event.KEYCODE_POWER)
		{
			Toast.makeText(MainActivity.this, "电源控制成功！", Toast.LENGTH_SHORT).show();
		}
		return true;
	}

	//这个方法是锁定home键，4.0下可用，4.0上对部分机型可用.
    public void onAttachedToWindow()
  	{   //solution1:
		//this.getWindow().setType(WindowManager.LayoutParams.TYPE_KEYGUARD_DIALOG);

        //solution2:
        /*requestWindowFeature(Window.FEATURE_NO_TITLE);
        getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
                WindowManager.LayoutParams.FLAG_FULLSCREEN);*/

        //solution3
        /*this.getWindow().setType(WindowManager.LayoutParams.TYPE_KEYGUARD_DIALOG);
        KeyguardManager keyguardManager = (KeyguardManager) getSystemService(KEYGUARD_SERVICE);
        KeyguardManager.KeyguardLock lock = keyguardManager.newKeyguardLock(KEYGUARD_SERVICE);
        lock.disableKeyguard();*/

		super.onAttachedToWindow(); 
	} 

	
	
	public void keytouch(long useTim, int keyTouthIn, int n)
	{
		newTime = System.currentTimeMillis();
		if ((newTime - useTim) <= 2000 && keyTouthIn == n)
		{
			usedTime = newTime;
			keyTouthInt = keyTouthIn + 1;
		}
		else
		{
			keyTouthInt = 0;
		}
	}
	
}
