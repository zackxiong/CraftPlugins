package com.baidu.android.pushservice.message;

/* renamed from: com.baidu.android.pushservice.message.e */
public class C0319e {
    protected short f3366a;
    protected short f3367b;
    protected int f3368c;
    protected byte[] f3369d;
    protected boolean f3370e;
    protected boolean f3371f;
    protected boolean f3372g;
    private C0325k f3373h;

    public C0319e() {
        this.f3371f = false;
    }

    public void m5057a(C0325k c0325k) {
        this.f3373h = c0325k;
    }

    public void m5058a(boolean z) {
        this.f3372g = z;
    }

    public byte[] m5059a() {
        return this.f3369d;
    }

    public boolean m5060b() {
        return this.f3370e;
    }

    public boolean m5061c() {
        return this.f3372g;
    }

    public C0325k m5062d() {
        return this.f3373h;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("type : ");
        stringBuffer.append(this.f3366a);
        stringBuffer.append("id : ");
        stringBuffer.append(this.f3368c);
        stringBuffer.append(", version: ");
        stringBuffer.append(this.f3367b);
        stringBuffer.append(", needReply: ");
        stringBuffer.append(this.f3370e);
        return stringBuffer.toString();
    }
}
