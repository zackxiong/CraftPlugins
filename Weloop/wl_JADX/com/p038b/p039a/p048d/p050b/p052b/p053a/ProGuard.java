package com.p038b.p039a.p048d.p050b.p052b.p053a;

import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;

/* renamed from: com.b.a.d.b.b.a.d */
public class ProGuard extends ProGuard {
    private final File f2652b;
    private final String f2653c;
    private final String f2654d;

    public ProGuard(File file, String str, String str2, String str3) {
        super(str2);
        if (file == null) {
            throw new IllegalArgumentException("File may not be null");
        }
        this.f2652b = file;
        if (str != null) {
            this.f2653c = str;
        } else {
            this.f2653c = file.getName();
        }
        this.f2654d = str3;
    }

    public ProGuard(File file) {
        this(file, null, "application/octet-stream", null);
    }

    public void m3993a(OutputStream outputStream) {
        Closeable bufferedInputStream;
        Throwable th;
        if (outputStream == null) {
            throw new IllegalArgumentException("Output stream may not be null");
        }
        try {
            bufferedInputStream = new BufferedInputStream(new FileInputStream(this.f2652b));
            try {
                byte[] bArr = new byte[4096];
                do {
                    int read = bufferedInputStream.read(bArr);
                    if (read != -1) {
                        outputStream.write(bArr, 0, read);
                        com.p038b.p039a.p048d.p050b.p052b.ProGuard.ProGuard proGuard = this.a;
                        proGuard.f2680d += (long) read;
                    } else {
                        outputStream.flush();
                        com.p038b.p039a.p055f.ProGuard.m4094a(bufferedInputStream);
                        return;
                    }
                } while (this.a.m4027a(false));
                throw new InterruptedIOException(com.umeng.update.net.ProGuard.f5634c);
            } catch (Throwable th2) {
                th = th2;
                com.p038b.p039a.p055f.ProGuard.m4094a(bufferedInputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            bufferedInputStream = null;
            com.p038b.p039a.p055f.ProGuard.m4094a(bufferedInputStream);
            throw th;
        }
    }

    public String m3996d() {
        return "binary";
    }

    public String m3995c() {
        return this.f2654d;
    }

    public long m3997e() {
        return this.f2652b.length();
    }

    public String m3994b() {
        return this.f2653c;
    }
}
