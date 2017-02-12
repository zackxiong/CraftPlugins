package io.github.d0048.sl;
import android.app.*;
import android.os.*;
import android.content.*;
import android.view.*;
import android.widget.GridLayout.*;
import android.graphics.*;
import android.widget.*;
/*
 author:缄默no
 该源码仅供aide吧学习使用，不得修改，转载或生成apk进行发布。
 http://jianmono.tk

 copyright © jianmo 2014.6.8

 */
public class photoservice extends Service
{
	WindowManager wm;
	LinearLayout mlinear;
	WindowManager.LayoutParams params;
	@Override
	public void onCreate()
	{
		// TODO: Implement this method
		super.onCreate();
		createFloat();
	}

	@Override
	public void onDestroy()
	{
		// TODO: Implement this method
		super.onDestroy();
		wm.removeView(mlinear);
	}

	@Override
	public void onStart(Intent intent, int startId)
	{
		// TODO: Implement this method
		super.onStart(intent, startId);
	}

	@Override
	public IBinder onBind(Intent p1)
	{
		// TODO: Implement this method
		return null;
	}
	public void createFloat()
	{

		wm = (WindowManager)getApplication().getSystemService(getApplication().WINDOW_SERVICE);
		params = new WindowManager.LayoutParams();
		params.type = WindowManager.LayoutParams.TYPE_PHONE;
		params.format = PixelFormat.RGBA_8888;
		params.flags = WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE;
		params.gravity = Gravity.LEFT | Gravity.TOP;
		params.x = 50;
		params.y = 50;

		params.height = WindowManager.LayoutParams.MATCH_PARENT;
		params.width = WindowManager.LayoutParams.MATCH_PARENT;
		
		LayoutInflater inflater=LayoutInflater.from(getApplication());
		mlinear = (LinearLayout)inflater.inflate(R.layout.floatview, null);
		wm.addView(mlinear, params);



	}

}
