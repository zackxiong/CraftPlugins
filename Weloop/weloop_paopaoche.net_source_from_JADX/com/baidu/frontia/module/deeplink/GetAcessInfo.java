package com.baidu.frontia.module.deeplink;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.android.p062a.p063a.C0160a;
import com.baidu.android.p062a.p063a.C0161b;
import com.baidu.android.pushservice.util.NoProGuard;
import java.util.Map;

public class GetAcessInfo implements NoProGuard, C0407d {
    Context mContext;

    public void execute(C0160a c0160a, C0161b c0161b) {
        Map a = c0160a.m4144a();
        if (a != null && a.size() >= 1) {
            String str = (String) a.get("callback");
            if (!TextUtils.isEmpty(str)) {
                this.mContext = C0423g.m5430a().m5437b();
                if (this.mContext != null) {
                    c0161b.m4148a("text/javascript");
                    c0161b.m4146a().put("Cache-Control", "no-cache");
                    c0161b.m4149b(str + " && " + str + "(" + "xxxxx" + ");");
                    c0161b.m4147a(200);
                }
            }
        }
    }
}
