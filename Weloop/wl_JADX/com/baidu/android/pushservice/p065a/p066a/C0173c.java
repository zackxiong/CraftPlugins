package com.baidu.android.pushservice.p065a.p066a;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.baidu.android.pushservice.a.a.c */
class C0173c implements C0172d {
    private String f2895a;
    private C0172d f2896b;
    private int f2897c;
    private int f2898d;
    private Map<String, Integer> f2899e;

    public C0173c(String str, int i, int i2, C0172d c0172d) {
        this.f2899e = new HashMap();
        this.f2895a = str;
        this.f2897c = i;
        this.f2898d = i2;
        this.f2896b = c0172d;
    }

    public Bitmap m4243a(String str) {
        if (!m4245b(str)) {
            return null;
        }
        Options options = new Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(m4246c(str), options);
        options.inSampleSize = C0170a.m4236a(options, -1, this.f2898d);
        options.inJustDecodeBounds = false;
        Bitmap decodeFile = BitmapFactory.decodeFile(m4246c(str), options);
        if (decodeFile == null) {
            return null;
        }
        Integer num = (Integer) this.f2899e.get(str);
        if (num == null) {
            num = Integer.valueOf(0);
        }
        if (num.intValue() + 1 < this.f2897c || this.f2896b == null) {
            this.f2899e.put(str, Integer.valueOf(num.intValue() + 1));
            return decodeFile;
        }
        this.f2896b.m4242a(str, decodeFile);
        this.f2899e.remove(str);
        return decodeFile;
    }

    public void m4244a(String str, Bitmap bitmap) {
        OutputStream fileOutputStream;
        Throwable th;
        File file = new File(m4246c(str));
        File parentFile = file.getParentFile();
        if (!(parentFile == null || parentFile.exists())) {
            parentFile.mkdirs();
        }
        OutputStream outputStream = null;
        try {
            fileOutputStream = new FileOutputStream(file);
            try {
                bitmap.compress(CompressFormat.PNG, 100, fileOutputStream);
                fileOutputStream.flush();
                this.f2899e.put(str, Integer.valueOf(1));
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException e) {
                    }
                }
            } catch (Exception e2) {
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException e3) {
                    }
                }
            } catch (Throwable th2) {
                Throwable th3 = th2;
                outputStream = fileOutputStream;
                th = th3;
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (IOException e4) {
                    }
                }
                throw th;
            }
        } catch (Exception e5) {
            fileOutputStream = null;
            if (fileOutputStream != null) {
                fileOutputStream.close();
            }
        } catch (Throwable th4) {
            th = th4;
            if (outputStream != null) {
                outputStream.close();
            }
            throw th;
        }
    }

    public boolean m4245b(String str) {
        return new File(m4246c(str)).exists();
    }

    String m4246c(String str) {
        return this.f2895a + "/" + str + ".png";
    }
}
