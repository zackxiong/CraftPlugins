package com.tencent.mm.sdk.p107c;

import android.net.Uri;
import android.provider.BaseColumns;
import com.tencent.mm.sdk.p106b.C0723a;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: com.tencent.mm.sdk.c.a */
public final class C0730a {

    /* renamed from: com.tencent.mm.sdk.c.a.a */
    public static final class C0728a {
        public static Object m7158a(int i, String str) {
            switch (i) {
                case ProGuard.styleable.View_android_focusable /*1*/:
                    return Integer.valueOf(str);
                case ProGuard.styleable.View_paddingStart /*2*/:
                    return Long.valueOf(str);
                case ProGuard.styleable.View_paddingEnd /*3*/:
                    return str;
                case ProGuard.styleable.View_theme /*4*/:
                    return Boolean.valueOf(str);
                case ProGuard.styleable.View_backgroundTint /*5*/:
                    return Float.valueOf(str);
                case ProGuard.styleable.View_backgroundTintMode /*6*/:
                    return Double.valueOf(str);
                default:
                    try {
                        C0723a.m7143a("MicroMsg.SDK.PluginProvider.Resolver", "unknown type");
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    return null;
            }
        }
    }

    /* renamed from: com.tencent.mm.sdk.c.a.b */
    public static final class C0729b implements BaseColumns {
        public static final Uri CONTENT_URI;

        static {
            CONTENT_URI = Uri.parse("content://com.tencent.mm.sdk.plugin.provider/sharedpref");
        }
    }
}
