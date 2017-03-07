package cn.sharesdk.framework;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import cn.sharesdk.framework.utils.C0071e;
import cn.sharesdk.framework.utils.UIHandler;
import java.util.HashMap;

public class ShareSDKUIShell extends Activity {
    private static HashMap<String, FakeActivity> f1924a;
    private FakeActivity f1925b;

    static {
        f1924a = new HashMap();
    }

    public static String m2910a(FakeActivity fakeActivity) {
        return m2911a(String.valueOf(System.currentTimeMillis()), fakeActivity);
    }

    public static String m2911a(String str, FakeActivity fakeActivity) {
        f1924a.put(str, fakeActivity);
        return str;
    }

    public void finish() {
        if (this.f1925b == null || !this.f1925b.onFinish()) {
            super.finish();
        }
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        if (this.f1925b != null) {
            this.f1925b.onActivityResult(i, i2, intent);
        }
        super.onActivityResult(i, i2, intent);
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.f1925b != null) {
            this.f1925b.onConfigurationChanged(configuration);
        }
    }

    protected void onCreate(Bundle bundle) {
        UIHandler.prepare();
        Intent intent = getIntent();
        String stringExtra = intent.getStringExtra("launch_time");
        this.f1925b = (FakeActivity) f1924a.remove(stringExtra);
        if (this.f1925b == null) {
            this.f1925b = (FakeActivity) f1924a.remove(intent.getScheme());
            if (this.f1925b == null) {
                C0071e.m3269c(new RuntimeException("Executor lost! launchTime = " + stringExtra));
                super.onCreate(bundle);
                finish();
                return;
            }
        }
        C0071e.m3265b("ShareSDKUIShell found executor: " + this.f1925b.getClass(), new Object[0]);
        this.f1925b.setActivity(this);
        super.onCreate(bundle);
        this.f1925b.onCreate();
    }

    protected void onDestroy() {
        if (this.f1925b != null) {
            this.f1925b.sendResult();
            this.f1925b.onDestroy();
        }
        super.onDestroy();
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        boolean z = false;
        if (this.f1925b != null) {
            z = this.f1925b.onKeyEvent(i, keyEvent);
        }
        return z ? true : super.onKeyDown(i, keyEvent);
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        boolean z = false;
        if (this.f1925b != null) {
            z = this.f1925b.onKeyEvent(i, keyEvent);
        }
        return z ? true : super.onKeyUp(i, keyEvent);
    }

    protected void onNewIntent(Intent intent) {
        if (this.f1925b == null) {
            super.onNewIntent(intent);
        } else {
            this.f1925b.onNewIntent(intent);
        }
    }

    protected void onPause() {
        if (this.f1925b != null) {
            this.f1925b.onPause();
        }
        super.onPause();
    }

    protected void onRestart() {
        if (this.f1925b != null) {
            this.f1925b.onRestart();
        }
        super.onRestart();
    }

    protected void onResume() {
        if (this.f1925b != null) {
            this.f1925b.onResume();
        }
        super.onResume();
    }

    protected void onStart() {
        if (this.f1925b != null) {
            this.f1925b.onStart();
        }
        super.onStart();
    }

    protected void onStop() {
        if (this.f1925b != null) {
            this.f1925b.onStop();
        }
        super.onStop();
    }

    public void setContentView(int i) {
        setContentView(LayoutInflater.from(this).inflate(i, null));
    }

    public void setContentView(View view) {
        super.setContentView(view);
        if (this.f1925b != null) {
            this.f1925b.setContentView(view);
        }
    }

    public void setContentView(View view, LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        if (this.f1925b != null) {
            this.f1925b.setContentView(view);
        }
    }
}
