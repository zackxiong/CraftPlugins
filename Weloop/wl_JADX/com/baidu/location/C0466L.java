package com.baidu.location;

import android.os.Build;
import android.os.Build.VERSION;
import android.os.Handler;
import com.umeng.update.util.ProGuard;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import org.apache.http.util.EntityUtils;
import org.json.JSONObject;

/* renamed from: com.baidu.location.L */
class C0466L extends ac {
    private static C0466L ab;
    String f3900Y;
    String f3901Z;
    String f3902a;
    Handler aa;

    static {
        ab = null;
    }

    private C0466L() {
        this.f3902a = null;
        this.f3900Y = null;
        this.f3901Z = null;
        this.aa = null;
        this.aa = new Handler();
    }

    private static boolean m5646a(String str, String str2) {
        File file = new File(C0465K.m5643long() + File.separator + "tmp");
        if (file.exists()) {
            file.delete();
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            byte[] bArr = new byte[4096];
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            BufferedInputStream bufferedInputStream = new BufferedInputStream(httpURLConnection.getInputStream());
            while (true) {
                int read = bufferedInputStream.read(bArr);
                if (read <= 0) {
                    break;
                }
                fileOutputStream.write(bArr, 0, read);
            }
            httpURLConnection.disconnect();
            fileOutputStream.close();
            if (file.length() < 10240) {
                file.delete();
                return false;
            }
            file.renameTo(new File(C0465K.m5643long() + File.separator + str2));
            return true;
        } catch (Exception e) {
            file.delete();
            return false;
        }
    }

    public static C0466L ac() {
        if (ab == null) {
            ab = new C0466L();
        }
        return ab;
    }

    private Handler m5649d() {
        return this.aa;
    }

    private void m5650e() {
        if (this.f3902a != null && C0453D.cq()) {
            new C0473O(this).start();
        }
    }

    private boolean m5651f() {
        return (this.f3901Z == null || new File(C0465K.m5643long() + File.separator + this.f3901Z).exists()) ? true : C0466L.m5646a("http://" + this.f3902a + "/" + this.f3901Z, this.f3901Z);
    }

    private void m5652g() {
        if (this.f3900Y != null) {
            File file = new File(C0465K.m5643long() + File.separator + this.f3900Y);
            if (!file.exists() && C0466L.m5646a("http://" + this.f3902a + "/" + this.f3900Y, this.f3900Y)) {
                File file2 = new File(C0465K.m5643long() + File.separator + C0513f.replaceFileName);
                if (file2.exists()) {
                    file2.delete();
                }
                try {
                    C0466L.m5653if(file, file2);
                } catch (Exception e) {
                    file2.delete();
                }
            }
        }
    }

    public static void m5653if(File file, File file2) {
        BufferedOutputStream bufferedOutputStream;
        Throwable th;
        BufferedInputStream bufferedInputStream = null;
        try {
            BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(file));
            try {
                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file2));
                try {
                    byte[] bArr = new byte[C0452e.f3827V];
                    while (true) {
                        int read = bufferedInputStream2.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        bufferedOutputStream.write(bArr, 0, read);
                    }
                    bufferedOutputStream.flush();
                    if (bufferedInputStream2 != null) {
                        bufferedInputStream2.close();
                    }
                    if (bufferedOutputStream != null) {
                        bufferedOutputStream.close();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    bufferedInputStream = bufferedInputStream2;
                    if (bufferedInputStream != null) {
                        bufferedInputStream.close();
                    }
                    if (bufferedOutputStream != null) {
                        bufferedOutputStream.close();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                bufferedOutputStream = null;
                bufferedInputStream = bufferedInputStream2;
                if (bufferedInputStream != null) {
                    bufferedInputStream.close();
                }
                if (bufferedOutputStream != null) {
                    bufferedOutputStream.close();
                }
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            bufferedOutputStream = null;
            if (bufferedInputStream != null) {
                bufferedInputStream.close();
            }
            if (bufferedOutputStream != null) {
                bufferedOutputStream.close();
            }
            throw th;
        }
    }

    void m5654X() {
        StringBuffer stringBuffer = new StringBuffer(ProGuard.f5670c);
        stringBuffer.append("&sdk=");
        stringBuffer.append(5.21f);
        stringBuffer.append("&fw=");
        stringBuffer.append(C0513f.getFrameVersion());
        stringBuffer.append("&suit=");
        stringBuffer.append(2);
        if (C0518i.cY().f4051Y == null) {
            stringBuffer.append("&im=");
            stringBuffer.append(C0518i.cY().f4053a);
        } else {
            stringBuffer.append("&cu=");
            stringBuffer.append(C0518i.cY().f4051Y);
        }
        stringBuffer.append("&mb=");
        stringBuffer.append(Build.MODEL);
        stringBuffer.append("&sv=");
        String str = VERSION.RELEASE;
        if (str != null && str.length() > 10) {
            str = str.substring(0, 10);
        }
        stringBuffer.append(str);
        stringBuffer.append("&pack=");
        stringBuffer.append(C0518i.ju);
        this.cY = C0465K.m5644new() + "?&it=" + Jni.m5625n(stringBuffer.toString());
    }

    public void ae() {
        if (System.currentTimeMillis() - C0474P.m5704if().m5707do() > 172800000) {
            m5649d().postDelayed(new C0471M(this), 10000);
        }
    }

    void m5655do(boolean z) {
        if (z) {
            try {
                JSONObject jSONObject = new JSONObject(EntityUtils.toString(this.cZ, "utf-8"));
                if ("up".equals(jSONObject.getString("res"))) {
                    this.f3902a = jSONObject.getString("upath");
                    if (jSONObject.has("u1")) {
                        this.f3900Y = jSONObject.getString("u1");
                    }
                    if (jSONObject.has("u2")) {
                        this.f3901Z = jSONObject.getString("u2");
                    }
                    m5649d().post(new C0472N(this));
                }
            } catch (Exception e) {
            }
        }
        C0474P.m5704if().m5708do(System.currentTimeMillis());
    }
}
