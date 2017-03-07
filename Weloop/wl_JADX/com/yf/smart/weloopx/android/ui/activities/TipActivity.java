package com.yf.smart.weloopx.android.ui.activities;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.os.Handler;
import android.os.Vibrator;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.yf.gattlib.p117p.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
public class TipActivity extends Activity {
    private static final String f7666a;
    private MediaPlayer f7667b;
    private Handler f7668c;
    private Intent f7669d;
    private TextView f7670e;

    public TipActivity() {
        this.f7668c = new Handler();
    }

    static {
        f7666a = TipActivity.class.getSimpleName();
    }

    protected void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        this.f7669d = new Intent();
        this.f7669d.setAction("com.yf.weloop.find.phone");
        ProGuard.m8293a(f7666a, "onCreate");
        setFinishOnTouchOutside(false);
        setContentView(R.layout.activity_tips);
        m9637a(getIntent());
        this.f7670e = (TextView) findViewById(R.id.rv_tv_msg);
        this.f7670e.setText(getString(R.string.already_find_phone));
    }

    protected void onNewIntent(Intent intent) {
        ProGuard.m8293a(f7666a, "onNewIntent");
        m9637a(intent);
    }

    private void m9637a(Intent intent) {
        Object obj = 1;
        if (intent == null) {
            finish();
            return;
        }
        setIntent(null);
        CharSequence stringExtra = intent.getStringExtra("EXTRA_MESSAGE");
        String stringExtra2 = intent.getStringExtra("EXTRA_SOUND");
        ProGuard.m8292a(f7666a + "find phone msg = " + stringExtra + " sound = " + stringExtra2);
        Object obj2 = null;
        if (!TextUtils.isEmpty(stringExtra)) {
            ((TextView) findViewById(R.id.at_tv_msg)).setText(stringExtra);
            obj2 = 1;
        }
        if (TextUtils.isEmpty(stringExtra2)) {
            obj = obj2;
        } else {
            m9638a(stringExtra2);
        }
        setIntent(null);
        m9635a();
        if (obj == null) {
            finish();
        } else {
            this.f7668c.postDelayed(new gj(this), 8000);
        }
    }

    private void m9635a() {
        ((Vibrator) getSystemService("vibrator")).vibrate(2000);
    }

    private void m9638a(String str) {
        startService(this.f7669d);
        m9636a((Context) this);
    }

    protected void onStart() {
        ProGuard.m8293a(f7666a, "onStart");
        super.onStart();
    }

    protected void onResume() {
        ProGuard.m8293a(f7666a, "onResume");
        super.onResume();
    }

    protected void onPause() {
        ProGuard.m8293a(f7666a, "onPause");
        super.onPause();
    }

    protected void onStop() {
        ProGuard.m8293a(f7666a, "onStop");
        super.onStop();
    }

    protected void onDestroy() {
        if (this.f7667b != null) {
            this.f7667b.release();
            this.f7667b = null;
        }
        ProGuard.m8293a(f7666a, "onDestroy");
        super.onDestroy();
    }

    public void onOk(View view) {
        stopService(this.f7669d);
        finish();
    }

    private void m9636a(Context context) {
        Intent intent = new Intent();
        intent.setAction("weloop.screen.on");
        sendBroadcast(intent);
    }
}
