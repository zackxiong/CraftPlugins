package com.tencent.p099b.p100a.p101a;

import android.content.Context;
import com.tencent.p099b.p100a.C0711w;
import com.tencent.p099b.p100a.p102b.C0675d;
import com.tencent.p099b.p100a.p102b.C0689r;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import org.json.JSONObject;

/* renamed from: com.tencent.b.a.a.c */
public final class C0665c extends C0662d {
    private String f5078a;
    private int f5079m;
    private int f5080n;
    private Thread f5081o;

    public C0665c(Context context, int i, Throwable th, C0711w c0711w) {
        super(context, i, c0711w);
        this.f5080n = 100;
        this.f5081o = null;
        m6874a(99, th);
    }

    public C0665c(Context context, int i, Throwable th, Thread thread) {
        super(context, i, null);
        this.f5080n = 100;
        this.f5081o = null;
        m6874a(2, th);
        this.f5081o = thread;
    }

    private void m6874a(int i, Throwable th) {
        if (th != null) {
            Writer stringWriter = new StringWriter();
            PrintWriter printWriter = new PrintWriter(stringWriter);
            th.printStackTrace(printWriter);
            this.f5078a = stringWriter.toString();
            this.f5079m = i;
            printWriter.close();
        }
    }

    public final boolean m6875a(JSONObject jSONObject) {
        C0689r.m7017a(jSONObject, "er", this.f5078a);
        jSONObject.put("ea", this.f5079m);
        if (this.f5079m == 2 || this.f5079m == 3) {
            new C0675d(this.l).m6950a(jSONObject, this.f5081o);
        }
        return true;
    }

    public final C0666e m6876b() {
        return C0666e.ERROR;
    }
}
