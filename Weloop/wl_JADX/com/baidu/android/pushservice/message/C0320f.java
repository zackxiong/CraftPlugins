package com.baidu.android.pushservice.message;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.ad;
import com.baidu.android.pushservice.util.C0372d;
import com.baidu.frontia.module.deeplink.GetApn;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import com.baidu.frontia.p075a.p081e.C0400a;
import com.baidu.frontia.p075a.p081e.C0401b;
import com.baidu.frontia.p075a.p081e.C0402c;
import com.baidu.frontia.p075a.p081e.C0406f;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import org.json.JSONObject;

/* renamed from: com.baidu.android.pushservice.message.f */
public class C0320f extends C0318d {
    private C0372d f3374b;

    public C0320f(Context context) {
        super(context);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private byte[] m5063a(long r8, int r10) {
        /*
        r7 = this;
        r1 = new java.io.ByteArrayOutputStream;
        r1.<init>();
        r2 = new com.baidu.android.pushservice.util.e;
        r2.<init>(r1);
        r2.m5166a(r8);	 Catch:{ Exception -> 0x005b }
        r2.m5168b(r10);	 Catch:{ Exception -> 0x005b }
        r0 = 0;
        r2.m5168b(r0);	 Catch:{ Exception -> 0x005b }
        r0 = r1.toByteArray();	 Catch:{ Exception -> 0x005b }
        r1.close();	 Catch:{ IOException -> 0x001f }
    L_0x001b:
        r2.m5164a();	 Catch:{ IOException -> 0x003d }
    L_0x001e:
        return r0;
    L_0x001f:
        r1 = move-exception;
        r3 = "MessageHandler";
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r5 = "error ";
        r4 = r4.append(r5);
        r1 = r1.getMessage();
        r1 = r4.append(r1);
        r1 = r1.toString();
        com.baidu.frontia.p075a.p077b.p078a.C0385a.m5313d(r3, r1);
        goto L_0x001b;
    L_0x003d:
        r1 = move-exception;
        r2 = "MessageHandler";
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r4 = "error ";
        r3 = r3.append(r4);
        r1 = r1.getMessage();
        r1 = r3.append(r1);
        r1 = r1.toString();
        com.baidu.frontia.p075a.p077b.p078a.C0385a.m5313d(r2, r1);
        goto L_0x001e;
    L_0x005b:
        r0 = move-exception;
        r3 = "MessageHandler";
        com.baidu.frontia.p075a.p077b.p078a.C0385a.m5310a(r3, r0);	 Catch:{ all -> 0x00a5 }
        r1.close();	 Catch:{ IOException -> 0x0069 }
    L_0x0064:
        r2.m5164a();	 Catch:{ IOException -> 0x0087 }
    L_0x0067:
        r0 = 0;
        goto L_0x001e;
    L_0x0069:
        r0 = move-exception;
        r1 = "MessageHandler";
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r4 = "error ";
        r3 = r3.append(r4);
        r0 = r0.getMessage();
        r0 = r3.append(r0);
        r0 = r0.toString();
        com.baidu.frontia.p075a.p077b.p078a.C0385a.m5313d(r1, r0);
        goto L_0x0064;
    L_0x0087:
        r0 = move-exception;
        r1 = "MessageHandler";
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "error ";
        r2 = r2.append(r3);
        r0 = r0.getMessage();
        r0 = r2.append(r0);
        r0 = r0.toString();
        com.baidu.frontia.p075a.p077b.p078a.C0385a.m5313d(r1, r0);
        goto L_0x0067;
    L_0x00a5:
        r0 = move-exception;
        r1.close();	 Catch:{ IOException -> 0x00ad }
    L_0x00a9:
        r2.m5164a();	 Catch:{ IOException -> 0x00cb }
    L_0x00ac:
        throw r0;
    L_0x00ad:
        r1 = move-exception;
        r3 = "MessageHandler";
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r5 = "error ";
        r4 = r4.append(r5);
        r1 = r1.getMessage();
        r1 = r4.append(r1);
        r1 = r1.toString();
        com.baidu.frontia.p075a.p077b.p078a.C0385a.m5313d(r3, r1);
        goto L_0x00a9;
    L_0x00cb:
        r1 = move-exception;
        r2 = "MessageHandler";
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r4 = "error ";
        r3 = r3.append(r4);
        r1 = r1.getMessage();
        r1 = r3.append(r1);
        r1 = r1.toString();
        com.baidu.frontia.p075a.p077b.p078a.C0385a.m5313d(r2, r1);
        goto L_0x00ac;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.android.pushservice.message.f.a(long, int):byte[]");
    }

    private byte[] m5064a(String str, int i) {
        Object obj = new byte[i];
        if (str != null) {
            Object bytes = str.getBytes();
            System.arraycopy(bytes, 0, obj, 0, Math.min(obj.length, bytes.length));
        }
        return obj;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private byte[] m5065a(short r7, byte[] r8) {
        /*
        r6 = this;
        r0 = 0;
        r2 = new java.io.ByteArrayOutputStream;
        r2.<init>();
        r3 = new com.baidu.android.pushservice.util.e;
        r3.<init>(r2);
        if (r8 == 0) goto L_0x0147;
    L_0x000d:
        r0 = r8.length;
        r1 = r0;
    L_0x000f:
        r3.m5165a(r7);	 Catch:{ IOException -> 0x00a2 }
        r0 = com.baidu.android.pushservice.message.C0321g.MSG_ID_TINY_HEARTBEAT_CLIENT;	 Catch:{ IOException -> 0x00a2 }
        r0 = r0.m5074a();	 Catch:{ IOException -> 0x00a2 }
        if (r7 == r0) goto L_0x0058;
    L_0x001a:
        r0 = com.baidu.android.pushservice.message.C0321g.MSG_ID_TINY_HEARTBEAT_SERVER;	 Catch:{ IOException -> 0x00a2 }
        r0 = r0.m5074a();	 Catch:{ IOException -> 0x00a2 }
        if (r7 == r0) goto L_0x0058;
    L_0x0022:
        r0 = com.baidu.android.pushservice.C0192a.m4336a();	 Catch:{ IOException -> 0x00a2 }
        r3.m5165a(r0);	 Catch:{ IOException -> 0x00a2 }
        r0 = 0;
        r3.m5168b(r0);	 Catch:{ IOException -> 0x00a2 }
        r0 = r6.a;	 Catch:{ IOException -> 0x00a2 }
        r4 = r6.a;	 Catch:{ IOException -> 0x00a2 }
        r4 = r4.getPackageName();	 Catch:{ IOException -> 0x00a2 }
        r0 = com.baidu.android.pushservice.util.C0374f.m5218f(r0, r4);	 Catch:{ IOException -> 0x00a2 }
        if (r0 == 0) goto L_0x0063;
    L_0x003b:
        r0 = "BaiduApp";
    L_0x003d:
        r4 = 16;
        r0 = r6.m5064a(r0, r4);	 Catch:{ IOException -> 0x00a2 }
        r3.m5167a(r0);	 Catch:{ IOException -> 0x00a2 }
        r0 = -76508268; // 0xfffffffffb709394 float:-1.2491445E36 double:NaN;
        r3.m5168b(r0);	 Catch:{ IOException -> 0x00a2 }
        r0 = 1;
        r3.m5168b(r0);	 Catch:{ IOException -> 0x00a2 }
        r3.m5168b(r1);	 Catch:{ IOException -> 0x00a2 }
        if (r8 == 0) goto L_0x0058;
    L_0x0055:
        r3.m5167a(r8);	 Catch:{ IOException -> 0x00a2 }
    L_0x0058:
        r0 = r2.toByteArray();	 Catch:{ IOException -> 0x00a2 }
        r2.close();	 Catch:{ IOException -> 0x0066 }
    L_0x005f:
        r3.m5164a();	 Catch:{ IOException -> 0x0084 }
    L_0x0062:
        return r0;
    L_0x0063:
        r0 = "DevApp";
        goto L_0x003d;
    L_0x0066:
        r1 = move-exception;
        r2 = "MessageHandler";
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r5 = "error ";
        r4 = r4.append(r5);
        r1 = r1.getMessage();
        r1 = r4.append(r1);
        r1 = r1.toString();
        com.baidu.frontia.p075a.p077b.p078a.C0385a.m5313d(r2, r1);
        goto L_0x005f;
    L_0x0084:
        r1 = move-exception;
        r2 = "MessageHandler";
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r4 = "error ";
        r3 = r3.append(r4);
        r1 = r1.getMessage();
        r1 = r3.append(r1);
        r1 = r1.toString();
        com.baidu.frontia.p075a.p077b.p078a.C0385a.m5313d(r2, r1);
        goto L_0x0062;
    L_0x00a2:
        r0 = move-exception;
        r1 = "MessageHandler";
        r4 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0103 }
        r4.<init>();	 Catch:{ all -> 0x0103 }
        r5 = "error ";
        r4 = r4.append(r5);	 Catch:{ all -> 0x0103 }
        r0 = r0.getMessage();	 Catch:{ all -> 0x0103 }
        r0 = r4.append(r0);	 Catch:{ all -> 0x0103 }
        r0 = r0.toString();	 Catch:{ all -> 0x0103 }
        com.baidu.frontia.p075a.p077b.p078a.C0385a.m5313d(r1, r0);	 Catch:{ all -> 0x0103 }
        r2.close();	 Catch:{ IOException -> 0x00c7 }
    L_0x00c2:
        r3.m5164a();	 Catch:{ IOException -> 0x00e5 }
    L_0x00c5:
        r0 = 0;
        goto L_0x0062;
    L_0x00c7:
        r0 = move-exception;
        r1 = "MessageHandler";
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r4 = "error ";
        r2 = r2.append(r4);
        r0 = r0.getMessage();
        r0 = r2.append(r0);
        r0 = r0.toString();
        com.baidu.frontia.p075a.p077b.p078a.C0385a.m5313d(r1, r0);
        goto L_0x00c2;
    L_0x00e5:
        r0 = move-exception;
        r1 = "MessageHandler";
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "error ";
        r2 = r2.append(r3);
        r0 = r0.getMessage();
        r0 = r2.append(r0);
        r0 = r0.toString();
        com.baidu.frontia.p075a.p077b.p078a.C0385a.m5313d(r1, r0);
        goto L_0x00c5;
    L_0x0103:
        r0 = move-exception;
        r2.close();	 Catch:{ IOException -> 0x010b }
    L_0x0107:
        r3.m5164a();	 Catch:{ IOException -> 0x0129 }
    L_0x010a:
        throw r0;
    L_0x010b:
        r1 = move-exception;
        r2 = "MessageHandler";
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r5 = "error ";
        r4 = r4.append(r5);
        r1 = r1.getMessage();
        r1 = r4.append(r1);
        r1 = r1.toString();
        com.baidu.frontia.p075a.p077b.p078a.C0385a.m5313d(r2, r1);
        goto L_0x0107;
    L_0x0129:
        r1 = move-exception;
        r2 = "MessageHandler";
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r4 = "error ";
        r3 = r3.append(r4);
        r1 = r1.getMessage();
        r1 = r3.append(r1);
        r1 = r1.toString();
        com.baidu.frontia.p075a.p077b.p078a.C0385a.m5313d(r2, r1);
        goto L_0x010a;
    L_0x0147:
        r1 = r0;
        goto L_0x000f;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.android.pushservice.message.f.a(short, byte[]):byte[]");
    }

    private String m5066d() {
        return ((TelephonyManager) this.a.getSystemService("phone")).getSubscriberId();
    }

    private String m5067e() {
        return ((WifiManager) this.a.getSystemService(GetApn.APN_TYPE_WIFI)).getConnectionInfo().getMacAddress();
    }

    public C0319e m5068a(byte[] bArr, int i) {
        int i2 = 20480;
        InputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        this.f3374b = new C0372d(byteArrayInputStream);
        short c = this.f3374b.m5162c();
        C0319e c0319e = new C0319e();
        c0319e.f3366a = c;
        if (c == C0321g.MSG_ID_TINY_HEARTBEAT_SERVER.m5074a() || c == C0321g.MSG_ID_TINY_HEARTBEAT_CLIENT.m5074a()) {
            if (C0192a.m4341b()) {
                C0385a.m5308a("MessageHandler", "readMessage tiny heart beat from server, msgType:" + c);
            }
            if (byteArrayInputStream != null) {
                byteArrayInputStream.close();
            }
            if (this.f3374b != null) {
                this.f3374b.m5159a();
            }
            return c0319e;
        }
        byte[] bArr2;
        short c2 = this.f3374b.m5162c();
        int b = this.f3374b.m5161b();
        this.f3374b.m5160a(new byte[16]);
        int b2 = this.f3374b.m5161b();
        int b3 = this.f3374b.m5161b();
        int b4 = this.f3374b.m5161b();
        if (C0192a.m4341b()) {
            C0385a.m5308a("MessageHandler", "readMessage nshead, msgId:" + c + " magicNum:" + Integer.toHexString(b2) + " length:" + b4 + " version =" + c2 + " logId =" + b + " reserved = " + b3);
        }
        if (b4 > 0) {
            if (b4 <= 20480) {
                i2 = b4;
            }
            bArr2 = new byte[i2];
            this.f3374b.m5160a(bArr2);
        } else {
            bArr2 = null;
        }
        c0319e.f3369d = bArr2;
        if (byteArrayInputStream != null) {
            byteArrayInputStream.close();
        }
        if (this.f3374b != null) {
            this.f3374b.m5159a();
        }
        return c0319e;
    }

    public void m5069a(int i) {
        String e;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("channel_token", new String(C0406f.m5359a(C0401b.m5344a(ad.m4377a().m4383d().getBytes()), "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC/7VlVn9LIrZ71PL2RZMbK/Yxc\r\ndb046w/cXVylxS7ouPY06namZUFVhdbUnNRJzmGUZlzs3jUbvMO3l+4c9cw/n9aQ\r\nrm/brgaRDeZbeSrQYRZv60xzJIimuFFxsRM+ku6/dAyYmXiQXlRbgvFQ0MsVng4j\r\nv+cXhtTis2Kbwb8mQwIDAQAB\r\n")));
            jSONObject.put("channel_id", ad.m4377a().m4382c());
            jSONObject.put("period", 1800);
            jSONObject.put("channel_type", 3);
            jSONObject.put("tinyheart", 1);
            jSONObject.put("connect_version", 2);
            jSONObject.put("tiny_msghead", 1);
            e = m5067e();
            if (e != null) {
                jSONObject.put("cam", C0400a.m5341a("2011121211143000", "9876543210123456", e.getBytes()));
            }
            e = C0402c.m5346a(this.a);
            if (e != null) {
                jSONObject.put("cuid", C0400a.m5341a("2011121211143000", "9876543210123456", e.getBytes()));
            }
            e = m5066d();
            if (e != null) {
                jSONObject.put("imsi", C0400a.m5341a("2011121211143000", "9876543210123456", e.getBytes()));
            }
        } catch (Exception e2) {
            C0385a.m5313d("MessageHandler", "error " + e2.getMessage());
        }
        e = jSONObject.toString();
        if (C0192a.m4341b()) {
            C0385a.m5308a("MessageHandler", "onSessionOpened, send handshake msg :" + e);
        }
        byte[] a = m5065a((short) C0321g.MSG_ID_HANDSHAKE.m5074a(), e.getBytes());
        C0319e c0319e = new C0319e();
        c0319e.f3369d = a;
        c0319e.f3370e = true;
        c0319e.m5058a(false);
        m5053a(c0319e);
    }

    public void m5070b() {
    }

    public void m5071b(C0319e c0319e) {
        if (c0319e != null) {
            C0315a c0315a = new C0315a(this.a);
            C0321g a = C0321g.m5073a(c0319e.f3366a);
            C0316c a2 = c0315a.m5047a(a);
            int i = 0;
            if (a2 != null) {
                i = a2.m5048a(c0319e);
            }
            if (c0319e.f3371f) {
                C0319e c0319e2 = new C0319e();
                if (a == C0321g.MSG_ID_PUSH_MSG) {
                    if (C0192a.m4341b()) {
                        C0385a.m5311b("MessageHandler", "message need reply , send msg msgId :" + c0319e.m5062d().m5086b() + " ret: " + i);
                    }
                    c0319e2.f3369d = m5065a((short) C0321g.MSG_ID_PUSH_MSG.m5074a(), m5063a(c0319e.m5062d().m5086b(), i));
                } else if (a == C0321g.MSG_ID_TINY_HEARTBEAT_SERVER || a == C0321g.MSG_ID_HEARTBEAT_SERVER) {
                    if (C0192a.m4341b()) {
                        C0385a.m5308a("MessageHandler", "handleServerHeartbeatMsg, send handshake return msg ");
                    }
                    c0319e2.f3369d = m5065a(c0319e.f3366a, null);
                }
                m5053a(c0319e2);
            }
        }
    }

    public void m5072c() {
        if (C0192a.m4341b()) {
            C0385a.m5308a("MessageHandler", "sendHeartbeatMessage ");
        }
        byte[] a = m5065a((short) C0321g.MSG_ID_TINY_HEARTBEAT_CLIENT.m5074a(), null);
        C0319e c0319e = new C0319e();
        c0319e.f3369d = a;
        c0319e.f3370e = true;
        c0319e.m5058a(true);
        m5053a(c0319e);
    }
}
