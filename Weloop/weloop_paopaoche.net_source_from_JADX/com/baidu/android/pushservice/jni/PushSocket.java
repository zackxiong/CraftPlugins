package com.baidu.android.pushservice.jni;

import com.baidu.frontia.p075a.p077b.p078a.C0385a;

public class PushSocket {
    public static boolean f3324a;
    private static byte[] f3325b;
    private static int f3326c;
    private static String f3327d;
    private static int f3328e;
    private static int f3329f;

    static {
        f3325b = null;
        f3326c = 0;
        f3327d = "socket";
        f3328e = 36;
        f3329f = 32;
        f3324a = false;
        try {
            System.loadLibrary("bdpush_V2_3");
            f3324a = true;
        } catch (UnsatisfiedLinkError e) {
            C0385a.m5313d(f3327d, "Native library not found! Please copy libbdpush_V2_3.so into your project!");
        }
    }

    public static short m5012a(byte[] bArr, int i) {
        return (short) ((bArr[i + 1] << 8) | (bArr[i + 0] & 255));
    }

    public static void m5013a(int i) {
        f3325b = null;
        f3326c = 0;
        closeSocket(i);
    }

    public static boolean m5014a() {
        if (!f3324a) {
            try {
                System.loadLibrary("bdpush_V2_3");
                f3324a = true;
            } catch (UnsatisfiedLinkError e) {
                C0385a.m5313d(f3327d, "Native library not found! Please copy libbdpush_V2_3.so into your project!");
            }
        }
        return f3324a;
    }

    public static int m5015b(byte[] bArr, int i) {
        return ((((bArr[i + 3] & 255) << 24) | ((bArr[i + 2] & 255) << 16)) | ((bArr[i + 1] & 255) << 8)) | ((bArr[i + 0] & 255) << 0);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static byte[] m5016b(int r7) {
        /*
        r6 = 0;
        r0 = 0;
    L_0x0002:
        r1 = f3325b;
        if (r1 == 0) goto L_0x00bd;
    L_0x0006:
        r1 = f3325b;
        r1 = r1.length;
        r2 = f3326c;
        if (r1 != r2) goto L_0x0012;
    L_0x000d:
        f3325b = r0;
        f3326c = r6;
        goto L_0x0002;
    L_0x0012:
        r2 = f3326c;
        r2 = r1 - r2;
        r3 = 1;
        if (r2 <= r3) goto L_0x00b6;
    L_0x0019:
        r2 = f3325b;
        r3 = f3326c;
        r2 = m5012a(r2, r3);
        r3 = f3327d;
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r5 = "msgid:";
        r4 = r4.append(r5);
        r4 = r4.append(r2);
        r4 = r4.toString();
        com.baidu.frontia.p075a.p077b.p078a.C0385a.m5308a(r3, r4);
        r3 = com.baidu.android.pushservice.message.C0321g.MSG_ID_TINY_HEARTBEAT_CLIENT;
        r3 = r3.m5074a();
        if (r2 == r3) goto L_0x0049;
    L_0x0041:
        r3 = com.baidu.android.pushservice.message.C0321g.MSG_ID_TINY_HEARTBEAT_SERVER;
        r3 = r3.m5074a();
        if (r2 != r3) goto L_0x0075;
    L_0x0049:
        r0 = 2;
        r0 = new byte[r0];
        r1 = f3325b;
        r3 = f3326c;
        r4 = r0.length;
        java.lang.System.arraycopy(r1, r3, r0, r6, r4);
        r1 = com.baidu.android.pushservice.C0192a.m4341b();
        if (r1 == 0) goto L_0x006e;
    L_0x005a:
        r1 = com.baidu.android.pushservice.message.C0321g.MSG_ID_TINY_HEARTBEAT_SERVER;
        r1 = r1.m5074a();
        if (r2 != r1) goto L_0x006e;
    L_0x0062:
        r1 = f3327d;
        r2 = "MSG_ID_TINY_HEARTBEAT_SERVER";
        com.baidu.frontia.p075a.p077b.p078a.C0385a.m5308a(r1, r2);
        r1 = "MSG_ID_TINY_HEARTBEAT_SERVER";
        com.baidu.android.pushservice.util.C0374f.m5201b(r1);
    L_0x006e:
        r1 = f3326c;
        r1 = r1 + 2;
        f3326c = r1;
    L_0x0074:
        return r0;
    L_0x0075:
        r2 = f3326c;
        r2 = r1 - r2;
        r3 = f3328e;
        if (r2 >= r3) goto L_0x0083;
    L_0x007d:
        r2 = m5017c(r7);
        if (r2 == 0) goto L_0x0074;
    L_0x0083:
        r2 = f3325b;
        r3 = f3326c;
        r4 = f3329f;
        r3 = r3 + r4;
        r2 = m5015b(r2, r3);
        r3 = f3326c;
        r3 = r3 + r2;
        r4 = f3328e;
        r3 = r3 + r4;
        r4 = f3326c;
        r1 = r1 - r4;
        if (r3 > r1) goto L_0x00af;
    L_0x0099:
        r0 = f3328e;
        r0 = r0 + r2;
        r0 = new byte[r0];
        r1 = f3325b;
        r3 = f3326c;
        r4 = r0.length;
        java.lang.System.arraycopy(r1, r3, r0, r6, r4);
        r1 = f3326c;
        r3 = f3328e;
        r2 = r2 + r3;
        r1 = r1 + r2;
        f3326c = r1;
        goto L_0x0074;
    L_0x00af:
        r1 = m5017c(r7);
        if (r1 != 0) goto L_0x0002;
    L_0x00b5:
        goto L_0x0074;
    L_0x00b6:
        r1 = m5017c(r7);
        if (r1 != 0) goto L_0x0002;
    L_0x00bc:
        goto L_0x0074;
    L_0x00bd:
        r1 = m5017c(r7);
        if (r1 != 0) goto L_0x0002;
    L_0x00c3:
        goto L_0x0074;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.android.pushservice.jni.PushSocket.b(int):byte[]");
    }

    private static boolean m5017c(int i) {
        Object rcvMsg = rcvMsg(i);
        if (rcvMsg == null || rcvMsg.length == 0) {
            return false;
        }
        if (f3325b == null) {
            f3325b = rcvMsg;
        } else {
            Object obj = new byte[(f3325b.length + rcvMsg.length)];
            System.arraycopy(f3325b, f3326c, obj, 0, f3325b.length - f3326c);
            System.arraycopy(rcvMsg, 0, obj, f3325b.length, rcvMsg.length);
            f3325b = obj;
        }
        return true;
    }

    public static native int closeSocket(int i);

    public static native int createSocket(String str, int i);

    public static native int getLastSocketError();

    private static native byte[] rcvMsg(int i);

    public static native int sendMsg(int i, byte[] bArr, int i2);
}
