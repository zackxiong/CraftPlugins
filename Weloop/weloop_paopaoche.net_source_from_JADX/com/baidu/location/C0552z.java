package com.baidu.location;

import android.os.Message;
import android.os.Messenger;
import java.util.ArrayList;
import org.apache.http.message.BasicNameValuePair;

/* renamed from: com.baidu.location.z */
class C0552z {
    private static C0552z f4152a;
    private String f4153b;
    private String f4154c;
    private String f4155d;
    private boolean f4156e;
    private String f4157f;
    private String f4158g;
    private C0551a f4159h;
    private long f4160i;
    private long f4161j;
    private long f4162k;
    public String f4163new;

    /* renamed from: com.baidu.location.z.a */
    class C0551a extends ac {
        String f4149Y;
        Messenger f4150Z;
        boolean f4151a;
        final /* synthetic */ C0552z aa;

        public C0551a(C0552z c0552z) {
            this.aa = c0552z;
            this.f4151a = false;
            this.f4149Y = null;
            this.f4150Z = null;
            this.c0 = new ArrayList();
        }

        void m6122X() {
            this.cY = C0465K.m5628byte();
            if (this.aa.f4157f == null) {
                this.aa.f4157f = Jni.m5622k("none");
            }
            this.c0.add(new BasicNameValuePair("erpt[0]", this.aa.f4157f));
            if (this.aa.f4158g == null) {
                this.aa.f4158g = "none";
            }
            this.c0.add(new BasicNameValuePair("erpt[1]", Jni.m5622k(this.aa.f4158g)));
            if (this.f4149Y == null) {
                this.f4149Y = "none";
            }
            this.c0.add(new BasicNameValuePair("erpt[2]", Jni.m5622k(this.f4149Y)));
            StringBuffer stringBuffer = new StringBuffer(512);
            stringBuffer.append("&t1=");
            stringBuffer.append(this.aa.f4162k);
            stringBuffer.append("&t2=");
            stringBuffer.append(this.aa.f4160i);
            String ba = ao.bg().ba();
            if (ba != null) {
                stringBuffer.append(ba);
            }
            this.c0.add(new BasicNameValuePair("erpt[3]", Jni.m5622k(stringBuffer.toString())));
            this.aa.f4157f = null;
            this.aa.f4158g = null;
            this.aa.f4160i = 0;
        }

        void m6123do(boolean z) {
            if (this.c0 != null) {
                this.c0.clear();
            }
            try {
                this.f4150Z.send(z ? Message.obtain(null, C0452e.f3828W) : Message.obtain(null, C0452e.f3841h));
            } catch (Exception e) {
            }
            this.f4151a = false;
        }

        public void m6124try(Message message) {
            this.f4150Z = message.replyTo;
            if (this.f4151a) {
                try {
                    this.f4150Z.send(Message.obtain(null, C0452e.f3841h));
                    return;
                } catch (Exception e) {
                    return;
                }
            }
            this.f4151a = true;
            this.f4149Y = message.getData().getString("errInfo");
            m5570R();
        }
    }

    private C0552z() {
        this.f4153b = null;
        this.f4154c = null;
        this.f4155d = null;
        this.f4163new = null;
        this.f4156e = false;
        this.f4157f = null;
        this.f4158g = null;
        this.f4159h = null;
        this.f4160i = 0;
        this.f4161j = 0;
        this.f4162k = 0;
        this.f4159h = new C0551a(this);
    }

    public static C0552z m6126a() {
        if (f4152a == null) {
            f4152a = new C0552z();
        }
        return f4152a;
    }

    public void m6133a(Message message) {
        if (this.f4157f == null || this.f4158g == null) {
            this.f4157f = this.f4153b;
            this.f4158g = this.f4154c;
        }
        this.f4159h.m6124try(message);
    }

    public void m6134a(String str) {
        this.f4155d = str;
        this.f4156e = true;
        this.f4161j = System.currentTimeMillis();
    }

    public void m6135do() {
        this.f4157f = this.f4153b;
        this.f4158g = this.f4154c;
        this.f4160i = System.currentTimeMillis();
    }

    public void m6136if() {
        this.f4157f = null;
        this.f4158g = null;
        this.f4160i = 0;
    }

    public void m6137if(String str) {
        if (this.f4156e) {
            this.f4153b = this.f4155d;
            this.f4156e = false;
            this.f4162k = this.f4161j;
        }
        this.f4154c = str;
    }
}
