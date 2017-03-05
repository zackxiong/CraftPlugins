package cn.sharesdk.google;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.os.Parcelable;
import java.util.ArrayList;

/* renamed from: cn.sharesdk.google.c */
public class C0088c {

    /* renamed from: cn.sharesdk.google.c.a */
    public static class C0087a {
        private final Intent f2132a;
        private ArrayList<Uri> f2133b;

        public C0087a() {
            this("android.intent.action.SEND");
        }

        protected C0087a(String str) {
            this.f2132a = new Intent().setAction(str);
        }

        public Intent m3312a() {
            boolean z = true;
            boolean z2 = this.f2133b != null && this.f2133b.size() > 1;
            boolean equals = this.f2132a.getAction().equals("android.intent.action.SEND_MULTIPLE");
            boolean booleanExtra = this.f2132a.getBooleanExtra("com.google.android.apps.plus.GOOGLE_INTERACTIVE_POST", false);
            if (z2 && booleanExtra) {
                z = false;
            }
            C0088c.m3318a(z, (Object) "Call-to-action buttons are only available for URLs.");
            if (!booleanExtra || this.f2132a.hasExtra("com.google.android.apps.plus.CONTENT_URL")) {
                if (!z2 && equals) {
                    this.f2132a.setAction("android.intent.action.SEND");
                    if (this.f2133b == null || this.f2133b.isEmpty()) {
                        this.f2132a.removeExtra("android.intent.extra.STREAM");
                    } else {
                        this.f2132a.putExtra("android.intent.extra.STREAM", (Parcelable) this.f2133b.get(0));
                    }
                    this.f2133b = null;
                }
                if (z2 && !equals) {
                    this.f2132a.setAction("android.intent.action.SEND_MULTIPLE");
                    if (this.f2133b == null || this.f2133b.isEmpty()) {
                        this.f2132a.removeExtra("android.intent.extra.STREAM");
                    } else {
                        this.f2132a.putParcelableArrayListExtra("android.intent.extra.STREAM", this.f2133b);
                    }
                }
                if (!booleanExtra || this.f2132a.hasExtra("com.google.android.apps.plus.CONTENT_URL") || this.f2132a.hasExtra("com.google.android.apps.plus.CONTENT_DEEP_LINK_ID")) {
                    this.f2132a.setPackage("com.google.android.apps.plus");
                    return this.f2132a;
                }
                throw new IllegalStateException("Must set content URL or content deep-link ID to use a call-to-action button.");
            }
            throw new IllegalStateException("The content URL is required for interactive posts.");
        }

        public C0087a m3313a(Uri uri) {
            this.f2133b = null;
            this.f2132a.putExtra("android.intent.extra.STREAM", uri);
            return this;
        }

        public C0087a m3314a(CharSequence charSequence) {
            this.f2132a.putExtra("android.intent.extra.TEXT", charSequence);
            return this;
        }

        public C0087a m3315a(String str) {
            this.f2132a.setType(str);
            return this;
        }
    }

    public static int m3316a(Context context) {
        return C0088c.m3317a(context, 330000000);
    }

    private static int m3317a(Context context, int i) {
        PackageManager packageManager = context.getPackageManager();
        try {
            return packageManager.getPackageInfo("com.google.android.apps.plus", 0).versionCode < i ? 2 : !packageManager.getApplicationInfo("com.google.android.apps.plus", 0).enabled ? 3 : 0;
        } catch (NameNotFoundException e) {
            return 1;
        }
    }

    public static void m3318a(boolean z, Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }
}
