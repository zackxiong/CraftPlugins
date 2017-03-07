package com.baidu.location;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import com.umeng.update.util.ProGuard;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.RandomAccessFile;
import java.util.zip.GZIPOutputStream;

/* renamed from: com.baidu.location.o */
class C0533o implements SensorEventListener, C0452e {
    private static C0533o ad;
    private final int f4094Y;
    private SensorManager f4095Z;
    private final int f4096a;
    private Sensor aa;
    private Sensor ab;
    private Handler ac;
    private boolean ae;
    private boolean af;
    private boolean ag;
    private boolean ah;
    private StringBuffer ai;
    private StringBuffer aj;
    private Runnable ak;
    private Runnable al;
    private int am;
    private int an;
    private boolean ao;

    private C0533o() {
        this.f4096a = 1;
        this.f4094Y = 2;
        this.ae = false;
        this.af = false;
        this.ag = false;
        this.ah = false;
        this.ai = null;
        this.aj = null;
        this.ak = null;
        this.al = null;
        this.am = 0;
        this.an = 0;
        this.ao = false;
        try {
            this.f4095Z = (SensorManager) C0513f.getServiceContext().getSystemService("sensor");
            this.aa = this.f4095Z.getDefaultSensor(1);
            this.ab = this.f4095Z.getDefaultSensor(2);
        } catch (Exception e) {
        }
        this.ac = new Handler();
    }

    private void m6057a(RandomAccessFile randomAccessFile, int i) {
        try {
            randomAccessFile.seek(0);
            randomAccessFile.writeInt(3321);
            randomAccessFile.writeLong(System.currentTimeMillis());
            randomAccessFile.writeInt(i);
            randomAccessFile.writeInt(3321);
        } catch (Exception e) {
        }
    }

    private void m6058a(StringBuffer stringBuffer) {
        if (this.af && this.aj != null) {
            m6060a(this.aj, stringBuffer, m6073d(2));
        }
    }

    private void m6059a(StringBuffer stringBuffer, File file) {
        Object obj = 1;
        if (file.exists()) {
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(new BufferedOutputStream(new FileOutputStream(file, true)));
                int i = 0;
                while (i < 3) {
                    try {
                        gZIPOutputStream.write(stringBuffer.toString().getBytes());
                    } catch (Exception e) {
                        obj = null;
                    }
                    if (obj == null) {
                        i++;
                    }
                }
                break;
                gZIPOutputStream.close();
            } catch (Exception e2) {
            }
        }
    }

    private void m6060a(StringBuffer stringBuffer, StringBuffer stringBuffer2, String str) {
        if (stringBuffer.length() + stringBuffer2.length() < 8190) {
            stringBuffer.append(stringBuffer2);
            return;
        }
        File file = new File(str);
        m6067b(stringBuffer.length());
        m6059a(stringBuffer, file);
        this.ao = true;
        stringBuffer.delete(0, stringBuffer.length());
        stringBuffer.append(stringBuffer2);
    }

    private boolean m6061a() {
        String b = m6066b();
        if (b == null) {
            return false;
        }
        try {
            File file = new File(b);
            RandomAccessFile randomAccessFile;
            if (file.exists()) {
                randomAccessFile = new RandomAccessFile(file, "rw");
                randomAccessFile.seek(4);
                long readLong = randomAccessFile.readLong();
                int readInt = randomAccessFile.readInt();
                if (randomAccessFile.readInt() == 3321) {
                    readLong = System.currentTimeMillis() - readLong;
                    if (readLong < 0 || readLong > 86400000) {
                        randomAccessFile.seek(4);
                        randomAccessFile.writeLong(System.currentTimeMillis());
                        randomAccessFile.writeInt(0);
                        randomAccessFile.close();
                        return true;
                    } else if (readInt > 96000) {
                        randomAccessFile.close();
                        return false;
                    } else {
                        randomAccessFile.close();
                        return true;
                    }
                }
                m6057a(randomAccessFile, 0);
                randomAccessFile.close();
                return true;
            }
            file.createNewFile();
            randomAccessFile = new RandomAccessFile(file, "rw");
            m6057a(randomAccessFile, 0);
            randomAccessFile.close();
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    private boolean m6062a(int i) {
        boolean z = false;
        String d = m6073d(i);
        if (d == null) {
            return z;
        }
        File file;
        File file2;
        if (i == 2) {
            file = new File(d);
            if (file.exists()) {
                if (file.length() <= 30720) {
                    return true;
                }
                if (!m6064a(file, i)) {
                    return z;
                }
            }
            file2 = new File(d);
            if (file2.exists()) {
                return z;
            }
            try {
                return m6063a(file2);
            } catch (Exception e) {
                return z;
            }
        } else if (i != 1 || !m6061a()) {
            return z;
        } else {
            file = new File(d);
            if (file.exists()) {
                if (file.length() <= 30720) {
                    return true;
                }
                if (!m6064a(file, i)) {
                    return z;
                }
            }
            file2 = new File(d);
            if (file2.exists()) {
                return z;
            }
            try {
                return m6063a(file2);
            } catch (Exception e2) {
                return z;
            }
        }
    }

    private boolean m6063a(File file) {
        try {
            file.createNewFile();
            StringBuffer stringBuffer = new StringBuffer(ProGuard.f5669b);
            stringBuffer.append("C");
            stringBuffer.append("\t");
            stringBuffer.append(Jni.m5622k(C0518i.cY().cX()));
            stringBuffer.append("\n");
            m6059a(stringBuffer, file);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    private boolean m6064a(File file, int i) {
        String str = null;
        if (i == 2) {
            str = m6070c();
        } else if (i == 1) {
            str = m6072d();
        }
        return str == null ? false : file.renameTo(new File(str));
    }

    private String m6066b() {
        String c = m6071c(1);
        if (c == null) {
            return null;
        }
        c = c + File.separator + "lscts.dat";
        File file = new File(c);
        if (!file.exists()) {
            try {
                file.createNewFile();
                RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
                m6057a(randomAccessFile, 0);
                randomAccessFile.close();
            } catch (Exception e) {
                return null;
            }
        }
        return c;
    }

    private void m6067b(int i) {
        String b = m6066b();
        if (b != null) {
            try {
                File file = new File(b);
                if (file.exists()) {
                    RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
                    randomAccessFile.seek(0);
                    int readInt = randomAccessFile.readInt();
                    randomAccessFile.readLong();
                    int readInt2 = randomAccessFile.readInt();
                    if (randomAccessFile.readInt() == 3321 && readInt == 3321) {
                        readInt = readInt2 + i;
                        randomAccessFile.seek(12);
                        randomAccessFile.writeInt(readInt);
                    } else {
                        m6057a(randomAccessFile, 48000 + i);
                    }
                    randomAccessFile.close();
                }
            } catch (Exception e) {
            }
        }
    }

    private void m6068b(StringBuffer stringBuffer) {
        if (this.ae && this.ai != null) {
            m6060a(this.ai, stringBuffer, m6073d(1));
        }
    }

    public static C0533o bI() {
        if (ad == null) {
            ad = new C0533o();
        }
        return ad;
    }

    private String m6070c() {
        int i = 0;
        String c = m6071c(2);
        String[] strArr = new String[]{"lbaca.dat", "lbacb.dat", "lbacc.dat", "lbacd.dat"};
        int length = strArr.length;
        while (i < length) {
            String str = strArr[i];
            if (!new File(c + File.separator + str).exists()) {
                return c + File.separator + str;
            }
            i++;
        }
        return null;
    }

    private String m6071c(int i) {
        String str = C0465K.m5636goto();
        if (str == null) {
            return null;
        }
        if (i == 1) {
            str = str + File.separator + "llmis1";
        } else if (i != 2) {
            return null;
        } else {
            str = str + File.separator + "llmis2";
        }
        File file = new File(str);
        if (file.exists()) {
            return str;
        }
        try {
            return !file.mkdirs() ? null : str;
        } catch (Exception e) {
            return null;
        }
    }

    private String m6072d() {
        int i = 0;
        String c = m6071c(1);
        String[] strArr = new String[]{"lmibaca.dat", "lmibacb.dat"};
        int length = strArr.length;
        while (i < length) {
            String str = strArr[i];
            if (!new File(c + File.separator + str).exists()) {
                return c + File.separator + str;
            }
            i++;
        }
        return null;
    }

    private String m6073d(int i) {
        String c = m6071c(i);
        return c == null ? null : i == 2 ? c + File.separator + "lbacz.dat" : i == 1 ? c + File.separator + "lmibacz.dat" : null;
    }

    private void m6074e() {
        if (this.af || this.ae) {
            m6076g();
        }
        if (this.af) {
            m6078i();
        }
    }

    private void m6075f() {
        if (!this.af) {
            if (this.ae) {
                m6079j();
                return;
            }
            m6079j();
            m6077h();
            this.am = 0;
            this.an = 0;
        }
    }

    private void m6076g() {
        if (this.f4095Z != null && this.aa != null && !this.ag) {
            try {
                this.f4095Z.registerListener(this, this.aa, 2, this.ac);
                this.ag = true;
            } catch (Exception e) {
            }
        }
    }

    private void m6077h() {
        if (this.ag) {
            try {
                this.f4095Z.unregisterListener(this, this.aa);
                this.ag = false;
            } catch (Exception e) {
            }
        }
    }

    private void m6078i() {
        if (this.f4095Z != null && this.ab != null && !this.ah) {
            try {
                this.f4095Z.registerListener(this, this.ab, 2, this.ac);
                this.ah = true;
            } catch (Exception e) {
            }
        }
    }

    private void m6079j() {
        if (this.ah) {
            try {
                this.f4095Z.unregisterListener(this, this.ab);
                this.ah = false;
            } catch (Exception e) {
            }
        }
    }

    public String bC() {
        String str = null;
        int i = 0;
        String c = m6071c(1);
        String[] strArr = new String[]{"lmibaca.dat", "lmibacb.dat", "lmibacz.dat"};
        try {
            int length = strArr.length;
            while (i < length) {
                String str2 = strArr[i];
                File file = new File(c + File.separator + str2);
                if (file.exists()) {
                    if (file.length() > 92160) {
                        file.delete();
                    } else if (file.length() >= 4096) {
                        if (!(str2.equals("lmibacz.dat") && this.ae)) {
                            str = c + File.separator + str2;
                        }
                        return str;
                    }
                }
                i++;
            }
        } catch (Exception e) {
        }
        return str;
    }

    public void bG() {
        this.ac.post(new C0535q(this));
    }

    public void bK() {
        this.ae = false;
        if ((this.ai != null && this.ai.length() > 3800) || this.ao) {
            File file = new File(m6073d(1));
            m6067b(this.ai.length());
            m6059a(this.ai, file);
            this.ao = false;
        }
        this.ai = null;
        m6075f();
    }

    public void bL() {
        this.af = false;
        if (this.aj != null && this.aj.length() > 3800) {
            m6059a(this.aj, new File(m6073d(2)));
        }
        this.aj = null;
        m6075f();
    }

    public void m6080case(int i) {
        if (!this.ae && m6062a(1)) {
            StringBuffer stringBuffer = new StringBuffer(ProGuard.f5670c);
            this.ae = true;
            this.ai = new StringBuffer(8192);
            stringBuffer.append("T1");
            stringBuffer.append("\t");
            stringBuffer.append(i);
            stringBuffer.append("\n");
            m6068b(stringBuffer);
            m6074e();
            this.al = new C0534p(this);
            this.ac.postDelayed(this.al, 8000);
        }
    }

    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    public void onSensorChanged(SensorEvent sensorEvent) {
        int type = sensorEvent.sensor.getType();
        StringBuffer stringBuffer = new StringBuffer(ProGuard.f5669b);
        if (type == 1) {
            this.am++;
            stringBuffer.append("A");
            stringBuffer.append("\t");
            stringBuffer.append(sensorEvent.values[0]);
            stringBuffer.append("\t");
            stringBuffer.append(sensorEvent.values[1]);
            stringBuffer.append("\t");
            stringBuffer.append(sensorEvent.values[2]);
            if (this.am == 1) {
                stringBuffer.append("\t");
                stringBuffer.append(sensorEvent.timestamp);
            }
            if (this.am >= 14) {
                this.am = 0;
            }
            stringBuffer.append("\n");
            m6058a(stringBuffer);
            m6068b(stringBuffer);
        }
        if (type == 2) {
            this.an++;
            stringBuffer.append("M");
            stringBuffer.append("\t");
            stringBuffer.append(sensorEvent.values[0]);
            stringBuffer.append("\t");
            stringBuffer.append(sensorEvent.values[1]);
            stringBuffer.append("\t");
            stringBuffer.append(sensorEvent.values[2]);
            if (this.an == 1) {
                stringBuffer.append("\t");
                stringBuffer.append(sensorEvent.timestamp);
            }
            if (this.an > 13) {
                this.an = 0;
            }
            stringBuffer.append("\n");
            m6058a(stringBuffer);
        }
    }
}
