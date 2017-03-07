package com.yf.gattlib.client.p113b;

import android.os.Handler;
import com.yf.gattlib.p117p.ProGuard;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* compiled from: ProGuard */
/* renamed from: com.yf.gattlib.client.b.bc */
public class bc extends ProGuard {
    private static final String f5826d;
    public ProGuard f5827a;
    public byte[] f5828b;
    Handler f5829c;
    private byte f5830e;
    private String f5831f;
    private byte[] f5832g;
    private byte f5833h;
    private int f5834i;
    private Runnable f5835j;

    /* renamed from: com.yf.gattlib.client.b.bc.a */
    public interface ProGuard {
        void m7585a();

        void m7586b();
    }

    /* renamed from: com.yf.gattlib.client.b.bc.b */
    public enum ProGuard {
        Sunny("\u6674", (byte) 1),
        Overcast("\u9634\u5929", (byte) 2),
        Cloudy("\u591a\u4e91", (byte) 3),
        ShoweryRain("\u9635\u96e8", (byte) 4),
        LightRain("\u5c0f\u96e8", (byte) 5),
        ThunderAndLightning("\u96f7\u7535", (byte) 6),
        CloudyNight("\u591c\u95f4\u591a\u4e91", (byte) 7),
        SunnyNight("\u591c\u6674", (byte) 8),
        Thunderstorm("\u96f7\u96e8", (byte) 9),
        ShoweryRainNight("\u591c\u95f4\u9635\u96e8", (byte) 10),
        Wind("\u98ce", (byte) 11),
        Rainstorm("\u66b4\u96e8", (byte) 12),
        Fog("\u96fe", (byte) 13),
        RainAndSnow("\u96e8\u96ea", (byte) 14),
        ModeratesRain("\u4e2d\u96e8", (byte) 15),
        HeavySnow("\u5927\u96ea", (byte) 16),
        ModerateSnow("\u4e2d\u96ea", (byte) 17),
        LightSnow("\u5c0f\u96ea", (byte) 18),
        Typhoon("\u53f0\u98ce", (byte) 19),
        Hail("\u51b0\u96f9", (byte) 20),
        Frost("\u971c\u51bb", (byte) 21),
        SUNNY("\u96fe\u973e", (byte) 22),
        Sandstorm("\u6c99\u5c18\u66b4", (byte) 23),
        Unknown("\u672a\u77e5", (byte) -1);
        
        private String f5824y;
        private byte f5825z;

        private ProGuard(String str, byte b) {
            this.f5824y = str;
            this.f5825z = b;
        }
    }

    static {
        f5826d = bc.class.getSimpleName();
    }

    public bc(String str, byte b, ProGuard proGuard) {
        this.f5829c = ProGuard.m8310a("syncWeather");
        this.f5834i = 8000;
        this.f5835j = new bd(this);
        this.f5827a = proGuard;
        this.f5831f = str;
        this.f5830e = b;
        this.f5828b = new byte[13];
        for (int i = 0; i < 13; i++) {
            this.f5828b[i] = b;
        }
        this.f5833h = m7589a(this.f5831f);
        ProGuard.m8301c("yonghong", "index = " + this.f5833h);
        this.f5832g = m7594c();
        ProGuard.m8289a(this.f5832g);
    }

    public void m7592a(byte[] bArr, Object... objArr) {
        m7591p();
        this.f5827a.m7585a();
        m7501i();
    }

    public void m7593b() {
        m7590e();
        m7488a(this.f5832g);
    }

    public byte[] m7594c() {
        ByteBuffer allocate = ByteBuffer.allocate(17);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        allocate.put((byte) -91);
        allocate.put((byte) 81);
        allocate.put(this.f5833h);
        allocate.put(this.f5833h);
        allocate.put(this.f5828b);
        return allocate.array();
    }

    public long m7595d() {
        return 10000;
    }

    private byte m7589a(String str) {
        for (ProGuard proGuard : ProGuard.values()) {
            if (proGuard.f5824y.equalsIgnoreCase(str)) {
                return proGuard.f5825z;
            }
        }
        return (byte) 1;
    }

    private void m7590e() {
        m7591p();
        this.f5829c.postDelayed(this.f5835j, (long) this.f5834i);
    }

    private void m7591p() {
        this.f5829c.removeCallbacks(this.f5835j);
    }
}
