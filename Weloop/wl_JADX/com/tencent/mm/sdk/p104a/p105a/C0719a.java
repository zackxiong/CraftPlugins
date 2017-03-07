package com.tencent.mm.sdk.p104a.p105a;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.tencent.mm.sdk.constants.Build;
import com.tencent.mm.sdk.constants.ConstantsAPI;
import com.tencent.mm.sdk.p106b.C0723a;
import com.tencent.mm.sdk.p106b.C0727e;

/* renamed from: com.tencent.mm.sdk.a.a.a */
public final class C0719a {

    /* renamed from: com.tencent.mm.sdk.a.a.a.a */
    public static class C0718a {
        public String f5367m;
        public Bundle f5368n;
        public String f5369o;
        public String f5370p;
    }

    public static boolean m7135a(Context context, C0718a c0718a) {
        if (context == null || c0718a == null) {
            C0723a.m7143a("MicroMsg.SDK.MMessage", "send fail, invalid argument");
            return false;
        } else if (C0727e.m7157j(c0718a.f5370p)) {
            C0723a.m7143a("MicroMsg.SDK.MMessage", "send fail, action is null");
            return false;
        } else {
            String str = null;
            if (!C0727e.m7157j(c0718a.f5369o)) {
                str = c0718a.f5369o + ".permission.MM_MESSAGE";
            }
            Intent intent = new Intent(c0718a.f5370p);
            if (c0718a.f5368n != null) {
                intent.putExtras(c0718a.f5368n);
            }
            String packageName = context.getPackageName();
            intent.putExtra(ConstantsAPI.SDK_VERSION, Build.SDK_INT);
            intent.putExtra(ConstantsAPI.APP_PACKAGE, packageName);
            intent.putExtra(ConstantsAPI.CONTENT, c0718a.f5367m);
            intent.putExtra(ConstantsAPI.CHECK_SUM, C0720b.m7136a(c0718a.f5367m, Build.SDK_INT, packageName));
            context.sendBroadcast(intent, str);
            C0723a.m7147d("MicroMsg.SDK.MMessage", "send mm message, intent=" + intent + ", perm=" + str);
            return true;
        }
    }
}
