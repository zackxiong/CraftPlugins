package com.baidu.vi;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;

public class VMsg {
    private static final String f4920a;
    private static Handler f4921b;
    private static HandlerThread f4922c;

    /* renamed from: com.baidu.vi.VMsg.a */
    static class C0649a extends Handler {
        public C0649a(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            VMsg.OnUserCommand1(message.what, message.arg1, message.arg2, message.obj == null ? 0 : ((Integer) message.obj).intValue());
        }
    }

    static {
        f4920a = VMsg.class.getSimpleName();
    }

    private static native void OnUserCommand1(int i, int i2, int i3, int i4);

    public static void destroy() {
        f4922c.quit();
        f4922c = null;
        f4921b.removeCallbacksAndMessages(null);
        f4921b = null;
    }

    public static void init() {
        f4922c = new HandlerThread("VIMsgThread");
        f4922c.start();
        f4921b = new C0649a(f4922c.getLooper());
    }

    private static void postMessage(int i, int i2, int i3, int i4) {
        if (f4921b != null) {
            Message.obtain(f4921b, i, i2, i3, Integer.valueOf(i4)).sendToTarget();
        }
    }
}
