package cn.sharesdk.google;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import cn.sharesdk.framework.FakeActivity;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.utils.C0068d;
import cn.sharesdk.google.C0088c.C0087a;
import java.io.File;
import java.util.HashMap;

/* renamed from: cn.sharesdk.google.d */
public class C0089d extends FakeActivity {
    private Platform f2134a;
    private PlatformActionListener f2135b;

    public void m3319a(Platform platform, PlatformActionListener platformActionListener) {
        this.f2134a = platform;
        this.f2135b = platformActionListener;
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        finish();
        if (i == 3) {
            HashMap hashMap = new HashMap();
            if (!(intent == null || intent.getExtras() == null)) {
                for (String str : intent.getExtras().keySet()) {
                    hashMap.put(str, intent.getExtras().get(str));
                }
            }
            String str2 = new C0068d().m3254a(hashMap);
            if (i2 != -1) {
                this.f2135b.onError(this.f2134a, 9, new Throwable(str2));
            } else {
                this.f2135b.onComplete(this.f2134a, 9, hashMap);
            }
        }
    }

    public void onCreate() {
        Bundle extras = this.activity.getIntent().getExtras();
        CharSequence string = extras.getString("text");
        String string2 = extras.getString("imageUrl");
        Object string3 = extras.getString("imagePath");
        C0087a c0087a = new C0087a();
        c0087a.m3315a("text/plain");
        c0087a.m3314a(string);
        if (!string.contains("http") && !TextUtils.isEmpty(string2) && string2.startsWith("http")) {
            c0087a.m3313a(Uri.parse(string2));
        } else if (!TextUtils.isEmpty(string3)) {
            c0087a.m3313a(Uri.fromFile(new File(string3)));
        }
        startActivityForResult(c0087a.m3312a(), 3);
    }
}
