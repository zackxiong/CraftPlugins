package com.tencent.mm.sdk.p104a;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.tencent.mm.sdk.constants.Build;
import com.tencent.mm.sdk.constants.ConstantsAPI;
import com.tencent.mm.sdk.p104a.p105a.C0720b;
import com.tencent.mm.sdk.p106b.C0723a;
import com.tencent.mm.sdk.p106b.C0727e;

/* renamed from: com.tencent.mm.sdk.a.a */
public final class C0721a {

    /* renamed from: com.tencent.mm.sdk.a.a.a */
    public static class C0717a {
        public int flags;
        public String f5363k;
        public String f5364l;
        public String f5365m;
        public Bundle f5366n;

        public C0717a() {
            this.flags = -1;
        }
    }

    public static boolean m7137a(Context context, C0717a c0717a) {
        if (context == null || c0717a == null) {
            C0723a.m7143a("MicroMsg.SDK.MMessageAct", "send fail, invalid argument");
            return false;
        } else if (C0727e.m7157j(c0717a.f5363k)) {
            C0723a.m7143a("MicroMsg.SDK.MMessageAct", "send fail, invalid targetPkgName, targetPkgName = " + c0717a.f5363k);
            return false;
        } else {
            if (C0727e.m7157j(c0717a.f5364l)) {
                c0717a.f5364l = c0717a.f5363k + ".wxapi.WXEntryActivity";
            }
            C0723a.m7147d("MicroMsg.SDK.MMessageAct", "send, targetPkgName = " + c0717a.f5363k + ", targetClassName = " + c0717a.f5364l);
            Intent intent = new Intent();
            intent.setClassName(c0717a.f5363k, c0717a.f5364l);
            if (c0717a.f5366n != null) {
                intent.putExtras(c0717a.f5366n);
            }
            String packageName = context.getPackageName();
            intent.putExtra(ConstantsAPI.SDK_VERSION, Build.SDK_INT);
            intent.putExtra(ConstantsAPI.APP_PACKAGE, packageName);
            intent.putExtra(ConstantsAPI.CONTENT, c0717a.f5365m);
            intent.putExtra(ConstantsAPI.CHECK_SUM, C0720b.m7136a(c0717a.f5365m, Build.SDK_INT, packageName));
            if (c0717a.flags == -1) {
                intent.addFlags(268435456).addFlags(134217728);
            } else {
                intent.setFlags(c0717a.flags);
            }
            try {
                context.startActivity(intent);
                C0723a.m7147d("MicroMsg.SDK.MMessageAct", "send mm message, intent=" + intent);
                return true;
            } catch (Exception e) {
                C0723a.m7144a("MicroMsg.SDK.MMessageAct", "send fail, ex = %s", e.getMessage());
                return false;
            }
        }
    }
}
