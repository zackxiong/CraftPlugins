package com.baidu.location;

import java.io.File;
import java.io.RandomAccessFile;

/* renamed from: com.baidu.location.P */
class C0474P {
    static C0474P f3931c;
    String f3932a;
    int f3933b;
    int f3934d;
    int f3935e;
    int f3936f;

    C0474P() {
        this.f3932a = "firll.dat";
        this.f3933b = 3164;
        this.f3934d = 0;
        this.f3935e = 20;
        this.f3936f = 40;
    }

    private long m5702a(int i) {
        String str = C0465K.m5643long();
        if (str == null) {
            return -1;
        }
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(str + File.separator + this.f3932a, "rw");
            randomAccessFile.seek((long) i);
            int readInt = randomAccessFile.readInt();
            long readLong = randomAccessFile.readLong();
            int readInt2 = randomAccessFile.readInt();
            randomAccessFile.close();
            return readInt == readInt2 ? readLong : -1;
        } catch (Exception e) {
            return -1;
        }
    }

    private void m5703a(int i, long j) {
        String str = C0465K.m5643long();
        if (str != null) {
            try {
                RandomAccessFile randomAccessFile = new RandomAccessFile(str + File.separator + this.f3932a, "rw");
                randomAccessFile.seek((long) i);
                randomAccessFile.writeInt(this.f3933b);
                randomAccessFile.writeLong(j);
                randomAccessFile.writeInt(this.f3933b);
                randomAccessFile.close();
            } catch (Exception e) {
            }
        }
    }

    public static C0474P m5704if() {
        if (f3931c == null) {
            f3931c = new C0474P();
        }
        return f3931c;
    }

    public long m5705a() {
        return m5702a(this.f3935e);
    }

    public void m5706a(long j) {
        m5703a(this.f3936f, j);
    }

    public long m5707do() {
        return m5702a(this.f3934d);
    }

    public void m5708do(long j) {
        m5703a(this.f3934d, j);
    }

    public long m5709for() {
        return m5702a(this.f3936f);
    }

    public void m5710if(long j) {
        m5703a(this.f3935e, j);
    }
}
