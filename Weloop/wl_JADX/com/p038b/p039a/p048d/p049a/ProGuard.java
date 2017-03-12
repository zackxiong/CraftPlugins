package com.p038b.p039a.p048d.p049a;

import android.text.TextUtils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import org.apache.http.HttpEntity;

/* renamed from: com.b.a.d.a.b */
public class ProGuard {
    public File m3962a(HttpEntity httpEntity, ProGuard proGuard, String str, boolean z, String str2) {
        if (httpEntity == null || TextUtils.isEmpty(str)) {
            return null;
        }
        File parentFile;
        File file = new File(str);
        if (!file.exists()) {
            parentFile = file.getParentFile();
            if (parentFile.exists() || parentFile.mkdirs()) {
                file.createNewFile();
            }
        }
        long j = 0;
        Closeable closeable = null;
        if (z) {
            try {
                j = file.length();
                OutputStream fileOutputStream = new FileOutputStream(str, true);
            } catch (Throwable th) {
                Throwable th2 = th;
                Closeable closeable2 = null;
                com.p038b.p039a.p055f.ProGuard.m4094a(closeable2);
                com.p038b.p039a.p055f.ProGuard.m4094a(closeable);
                throw th2;
            }
        }
        fileOutputStream = new FileOutputStream(str);
        long contentLength = httpEntity.getContentLength() + j;
        Closeable bufferedInputStream = new BufferedInputStream(httpEntity.getContent());
        try {
            Closeable bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
            if (proGuard != null) {
                try {
                    if (!proGuard.m3970a(contentLength, j, true)) {
                        com.p038b.p039a.p055f.ProGuard.m4094a(bufferedInputStream);
                        com.p038b.p039a.p055f.ProGuard.m4094a(bufferedOutputStream);
                        return file;
                    }
                } catch (Throwable th3) {
                    th2 = th3;
                    closeable = bufferedOutputStream;
                    closeable2 = bufferedInputStream;
                    com.p038b.p039a.p055f.ProGuard.m4094a(closeable2);
                    com.p038b.p039a.p055f.ProGuard.m4094a(closeable);
                    throw th2;
                }
            }
            byte[] bArr = new byte[4096];
            while (true) {
                int read = bufferedInputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                bufferedOutputStream.write(bArr, 0, read);
                j += (long) read;
                if (proGuard != null && !proGuard.m3970a(contentLength, j, false)) {
                    com.p038b.p039a.p055f.ProGuard.m4094a(bufferedInputStream);
                    com.p038b.p039a.p055f.ProGuard.m4094a(bufferedOutputStream);
                    return file;
                }
            }
            bufferedOutputStream.flush();
            if (proGuard != null) {
                proGuard.m3970a(contentLength, j, true);
            }
            com.p038b.p039a.p055f.ProGuard.m4094a(bufferedInputStream);
            com.p038b.p039a.p055f.ProGuard.m4094a(bufferedOutputStream);
            if (!file.exists() || TextUtils.isEmpty(str2)) {
                return file;
            }
            parentFile = new File(file.getParent(), str2);
            while (parentFile.exists()) {
                parentFile = new File(file.getParent(), System.currentTimeMillis() + str2);
            }
            if (!file.renameTo(parentFile)) {
                parentFile = file;
            }
            return parentFile;
        } catch (Throwable th4) {
            th2 = th4;
            closeable2 = bufferedInputStream;
            com.p038b.p039a.p055f.ProGuard.m4094a(closeable2);
            com.p038b.p039a.p055f.ProGuard.m4094a(closeable);
            throw th2;
        }
    }
}
