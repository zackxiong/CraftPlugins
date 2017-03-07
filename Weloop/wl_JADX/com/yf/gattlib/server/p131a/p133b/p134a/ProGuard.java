package com.yf.gattlib.server.p131a.p133b.p134a;

import android.annotation.SuppressLint;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGattCharacteristic;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.baidu.android.pushservice.db.LightAppTableDefine;
import com.tencent.mm.sdk.constants.ConstantsAPI.WXApp;
import com.yf.gattlib.notification.NotificationContent;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

@SuppressLint({"HandlerLeak"})
/* renamed from: com.yf.gattlib.server.a.b.a.a */
public class ProGuard implements com.yf.gattlib.server.p131a.ProGuard {
    private static final String f6368a;
    private ProGuard f6369b;
    private ProGuard f6370c;
    private com.yf.gattlib.server.p131a.p133b.ProGuard f6371d;
    private byte[] f6372e;
    private byte[] f6373f;
    private boolean f6374g;
    private Handler f6375h;
    private HandlerThread f6376i;
    private boolean f6377j;
    private String f6378k;
    private String f6379l;
    private OnSharedPreferenceChangeListener f6380m;
    private StringBuffer f6381n;

    /* renamed from: com.yf.gattlib.server.a.b.a.a.a */
    private class ProGuard {
        byte[] f6361a;
        byte f6362b;
        int f6363c;
        Map<Byte, Short> f6364d;
        final /* synthetic */ ProGuard f6365e;

        ProGuard(ProGuard proGuard, byte[] bArr) {
            this.f6365e = proGuard;
            this.f6361a = bArr;
            this.f6362b = this.f6361a[0];
            this.f6363c = ByteBuffer.wrap(this.f6361a, 1, 4).order(ByteOrder.LITTLE_ENDIAN).getInt();
            Map hashMap = new HashMap();
            this.f6364d = hashMap;
            int i = 5;
            while (i < bArr.length) {
                switch (bArr[i]) {
                    case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_theme /*0*/:
                    case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                    case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                    case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                        hashMap.put(Byte.valueOf(bArr[i]), Short.valueOf(ByteBuffer.wrap(this.f6361a, i + 1, 2).order(ByteOrder.LITTLE_ENDIAN).getShort()));
                        i += 3;
                        break;
                    case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_theme /*4*/:
                    case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTint /*5*/:
                        hashMap.put(Byte.valueOf(bArr[i]), Short.valueOf((short) -1));
                        i++;
                        break;
                    default:
                        i++;
                        break;
                }
            }
        }

        public int m8324a() {
            int i = 5;
            for (Entry entry : this.f6364d.entrySet()) {
                int shortValue;
                int i2 = i + 1;
                if (((Short) entry.getValue()).shortValue() > (short) 0) {
                    shortValue = ((Short) entry.getValue()).shortValue() + (i2 + 2);
                } else {
                    shortValue = i2 + 4;
                }
                i = shortValue;
            }
            return i;
        }
    }

    /* renamed from: com.yf.gattlib.server.a.b.a.a.b */
    private class ProGuard extends com.yf.gattlib.p119l.ProGuard {
        final /* synthetic */ ProGuard f6366a;

        private ProGuard(ProGuard proGuard) {
            this.f6366a = proGuard;
        }

        public void m8325a(Context context, Intent intent) {
            if (!com.yf.gattlib.p108a.ProGuard.m7368a().m7376f().m8078h()) {
                this.f6366a.f6370c.m8364b();
            } else if (this.f6366a.m8342c()) {
                this.f6366a.f6370c.m8362a(System.currentTimeMillis() + 1000);
            } else {
                String action = intent.getAction();
                Object obj = ("com.yf.gattlib.intent.action.MY_ACTION_RESULT".equalsIgnoreCase(action) || "com.yf.gattlib.intent.action.NLSERVICE_RESULT".equalsIgnoreCase(action)) ? 1 : null;
                if (obj != null && "get notification".equalsIgnoreCase(intent.getStringExtra("command"))) {
                    this.f6366a.m8332a((NotificationContent) intent.getParcelableExtra(LightAppTableDefine.DB_TABLE_NOTIFICATION), intent.getStringExtra("notification flag"));
                }
            }
        }
    }

    /* renamed from: com.yf.gattlib.server.a.b.a.a.c */
    private class ProGuard extends Handler {
        final /* synthetic */ ProGuard f6367a;

        ProGuard(ProGuard proGuard, Looper looper) {
            this.f6367a = proGuard;
            super(looper);
        }

        public void handleMessage(Message message) {
            this.f6367a.m8345e();
            ProGuard a = this.f6367a.f6370c.m8360a();
            if (a == null) {
                this.f6367a.m8348f();
                return;
            }
            a.m8355a(true);
            byte[] a2 = com.yf.gattlib.server.p131a.p133b.ProGuard.m8392a(a.m8354a(), (byte) 1, a.m8357c().f6279b, (byte) 1, ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putInt(a.m8356b()).array());
            synchronized (this.f6367a.f6372e) {
                try {
                    this.f6367a.f6371d.m8390a(com.yf.gattlib.server.p131a.p133b.ProGuard.ProGuard.f6398a, a2, false);
                } catch (Throwable th) {
                    com.yf.gattlib.p117p.ProGuard.m8295a(th);
                    com.yf.gattlib.p117p.ProGuard.m8297b(ProGuard.f6368a + " SendingHandler have problem");
                }
            }
        }
    }

    static {
        f6368a = ProGuard.class.getSimpleName();
    }

    public ProGuard(com.yf.gattlib.server.p131a.p133b.ProGuard proGuard) {
        this.f6370c = new ProGuard();
        this.f6372e = new byte[0];
        this.f6373f = new byte[0];
        this.f6377j = false;
        this.f6380m = new ProGuard(this);
        this.f6381n = new StringBuffer();
        this.f6378k = com.yf.gattlib.p108a.ProGuard.m7368a().m7372b();
        this.f6379l = com.yf.gattlib.p108a.ProGuard.m7368a().m7373c();
        com.yf.gattlib.p108a.ProGuard.m7368a().m7387q().registerOnSharedPreferenceChangeListener(this.f6380m);
        this.f6369b = new ProGuard();
        this.f6376i = new HandlerThread("sending");
        this.f6376i.start();
        this.f6375h = new ProGuard(this, this.f6376i.getLooper());
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.yf.gattlib.intent.action.NLSERVICE_RESULT");
        intentFilter.addAction("com.yf.gattlib.intent.action.MY_ACTION_RESULT");
        com.yf.gattlib.p108a.ProGuard.m7347a().m7355a(this.f6369b, intentFilter);
        this.f6371d = proGuard;
    }

    public ProGuard m8350a(NotificationContent notificationContent, byte b) {
        ProGuard proGuard = new ProGuard(notificationContent, b);
        this.f6370c.m8363a(proGuard);
        return proGuard;
    }

    public ProGuard m8349a(int i) {
        return this.f6370c.m8361a(i);
    }

    public void m8353a(BluetoothDevice bluetoothDevice, int i, BluetoothGattCharacteristic bluetoothGattCharacteristic, boolean z, boolean z2, int i2, byte[] bArr) {
        int i3 = 0;
        bluetoothGattCharacteristic.setValue(bArr);
        this.f6371d.m8387a().sendResponse(bluetoothDevice, i, 0, i2, bluetoothGattCharacteristic.getValue());
        if (bArr != null && bArr.length > 8) {
            i3 = 1;
        }
        if (i3 == 0) {
            com.yf.gattlib.p117p.ProGuard.m8297b(f6368a + " onCharacteristicWriteRequest have problem");
            return;
        }
        ProGuard proGuard = new ProGuard(this, bArr);
        com.yf.gattlib.p117p.ProGuard.m8292a(f6368a + " xxx, request:" + proGuard.f6363c);
        ProGuard a = m8349a(proGuard.f6363c);
        if (a == null) {
            Object obj = " xxx, no id:" + proGuard.f6363c;
            com.yf.gattlib.p117p.ProGuard.m8293a(f6368a, (String) obj);
            com.yf.gattlib.p117p.ProGuard.m8292a(f6368a + obj);
            com.yf.gattlib.p117p.ProGuard.m8245a(obj);
            m8348f();
            m8343d();
            return;
        }
        this.f6370c.m8365b(a.m8356b());
        m8335a(bluetoothDevice.getAddress(), a, bArr);
        m8348f();
        m8343d();
    }

    public void m8352a(BluetoothDevice bluetoothDevice, int i, int i2, BluetoothGattCharacteristic bluetoothGattCharacteristic) {
        this.f6371d.m8387a().sendResponse(bluetoothDevice, i, 0, i2, bluetoothGattCharacteristic.getValue());
    }

    private boolean m8342c() {
        return com.yf.gattlib.p117p.ProGuard.m8231a(this.f6378k, this.f6379l);
    }

    private void m8332a(NotificationContent notificationContent, String str) {
        byte b = (byte) 0;
        if (!"posted".equalsIgnoreCase(str) && "removed".equalsIgnoreCase(str)) {
            b = (byte) 2;
        }
        if (m8337a(notificationContent.f6279b)) {
            this.f6370c.m8362a(System.currentTimeMillis());
        }
        ProGuard a = m8350a(notificationContent, b);
        this.f6370c.m8366b(a.m8358d() - 30000);
        this.f6370c.m8362a(a.m8358d() - 3000);
        m8343d();
    }

    private boolean m8337a(byte b) {
        return (byte) 1 == b || 2 == b;
    }

    private void m8343d() {
        this.f6375h.removeMessages(0);
        this.f6375h.sendEmptyMessage(0);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void m8345e() {
        /*
        r4 = this;
        r1 = r4.f6373f;
        monitor-enter(r1);
    L_0x0003:
        r0 = r4.f6374g;	 Catch:{ all -> 0x0018 }
        if (r0 == 0) goto L_0x000e;
    L_0x0007:
        r0 = r4.f6373f;	 Catch:{ InterruptedException -> 0x0013 }
        r2 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
        r0.wait(r2);	 Catch:{ InterruptedException -> 0x0013 }
    L_0x000e:
        r0 = 1;
        r4.f6374g = r0;	 Catch:{ all -> 0x0018 }
        monitor-exit(r1);	 Catch:{ all -> 0x0018 }
        return;
    L_0x0013:
        r0 = move-exception;
        com.yf.gattlib.p117p.ProGuard.m8295a(r0);	 Catch:{ all -> 0x0018 }
        goto L_0x0003;
    L_0x0018:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x0018 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yf.gattlib.server.a.b.a.a.e():void");
    }

    private void m8348f() {
        synchronized (this.f6373f) {
            this.f6374g = false;
            this.f6373f.notify();
        }
    }

    private void m8335a(String str, ProGuard proGuard, byte[] bArr) {
        NotificationContent c = proGuard.m8357c();
        ProGuard proGuard2 = new ProGuard(this, bArr);
        ByteBuffer allocate = ByteBuffer.allocate(proGuard2.m8324a());
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        allocate.put(proGuard2.f6361a, 0, 5);
        this.f6381n.setLength(0);
        for (Entry entry : proGuard2.f6364d.entrySet()) {
            switch (((Byte) entry.getKey()).byteValue()) {
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_theme /*0*/:
                    String replace = c.f6282e.replace("com.tencent.mobileqq", "com.tencent.mqq").replace(WXApp.WXAPP_PACKAGE_NAME, "com.tencent.xin").replace("com.immomo.momo", "com.wemomo.momoappdemo1");
                    if (replace.contains("com.yf.smart.weloopx.alpha") || replace.contains("com.yf.smart.weloopx.beta") || replace.contains("com.yf.smart.weloopx.dist")) {
                        this.f6377j = true;
                    } else {
                        this.f6377j = false;
                    }
                    m8336a(entry, allocate, replace);
                    break;
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                    m8336a(entry, allocate, c.f6280c);
                    break;
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                    if (c.f6281d.contains("\u63d0\u9192") && this.f6377j) {
                        com.yf.gattlib.p117p.ProGuard.m8292a(f6368a + " add 5 blank");
                        c.f6281d += "     ";
                    }
                    m8336a(entry, allocate, c.f6281d);
                    break;
                default:
                    break;
            }
        }
        byte[] bArr2 = new byte[allocate.position()];
        allocate.rewind();
        allocate.get(bArr2);
        m8334a(str);
        synchronized (this.f6372e) {
            this.f6371d.m8388a(str, com.yf.gattlib.server.p131a.p133b.ProGuard.ProGuard.f6400c, bArr2, false);
        }
    }

    private void m8334a(String str) {
        if (this.f6381n.length() <= 0) {
            this.f6381n.append("error: empty log buffer!!");
        }
        String stringBuffer = this.f6381n.toString();
        com.yf.gattlib.p117p.ProGuard.m8299c().m8268a(str, com.yf.gattlib.server.p131a.p133b.ProGuard.ProGuard.f6400c.toString(), LightAppTableDefine.DB_TABLE_NOTIFICATION, stringBuffer);
        com.yf.gattlib.p117p.ProGuard.m8296b().m8267a("notify:" + stringBuffer);
        this.f6381n.setLength(0);
    }

    private void m8336a(Entry<Byte, Short> entry, ByteBuffer byteBuffer, String str) {
        byteBuffer.put(((Byte) entry.getKey()).byteValue());
        this.f6381n.append("{").append(entry.getKey()).append(":[").append(m8331a(byteBuffer, str, ((Short) entry.getValue()).shortValue())).append("]}\r\n\r\n");
    }

    private String m8331a(ByteBuffer byteBuffer, String str, int i) {
        byte[] bytes = str.getBytes(com.yf.gattlib.p129n.ProGuard.f6271a);
        if (bytes.length <= i) {
            i = bytes.length;
        }
        if (byteBuffer.remaining() <= 2) {
            return "";
        }
        if (byteBuffer.remaining() <= i + 2) {
            i = byteBuffer.remaining() - 2;
        }
        String a = com.yf.gattlib.p117p.ProGuard.m8262a(str, i, com.yf.gattlib.p129n.ProGuard.f6271a);
        byte[] bytes2 = a.getBytes();
        byteBuffer.put((byte) (bytes2.length & 255));
        byteBuffer.put((byte) ((bytes2.length >> 8) & 255));
        byteBuffer.put(bytes2);
        return a;
    }

    public void m8351a() {
        com.yf.gattlib.p108a.ProGuard.m7368a().m7387q().unregisterOnSharedPreferenceChangeListener(this.f6380m);
        this.f6370c.m8364b();
        this.f6376i.quitSafely();
        com.yf.gattlib.p108a.ProGuard.m7347a().m7358b(this.f6369b);
    }
}
