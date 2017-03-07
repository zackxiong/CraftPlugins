package com.baidu.android.pushservice.p065a.p066a;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;
import android.os.Build.VERSION;
import android.util.Log;
import com.umeng.update.util.ProGuard;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.Socket;
import java.net.URL;
import java.security.KeyStore;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import org.apache.http.conn.ssl.SSLSocketFactory;

/* renamed from: com.baidu.android.pushservice.a.a.a */
public class C0170a extends Thread {
    private C0168a f2891a;
    private Uri[] f2892b;
    private int f2893c;

    /* renamed from: com.baidu.android.pushservice.a.a.a.a */
    public interface C0168a {
        void m4234a(Bitmap... bitmapArr);
    }

    /* renamed from: com.baidu.android.pushservice.a.a.a.b */
    private static class C0169b extends SSLSocketFactory {
        static KeyStore f2888a;
        static C0169b f2889b;
        SSLContext f2890c;

        static {
            try {
                f2888a = KeyStore.getInstance(KeyStore.getDefaultType());
                f2888a.load(null, null);
            } catch (Exception e) {
            }
        }

        public C0169b(KeyStore keyStore) {
            super(keyStore);
            C0171b c0171b = new C0171b(this);
            this.f2890c = SSLContext.getInstance("TLS");
            this.f2890c.init(null, new TrustManager[]{c0171b}, null);
            if (VERSION.SDK_INT >= 14) {
                setHostnameVerifier(SSLSocketFactory.STRICT_HOSTNAME_VERIFIER);
            } else {
                setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
            }
        }

        static C0169b m4235a() {
            if (f2889b == null) {
                try {
                    f2889b = new C0169b(f2888a);
                } catch (Exception e) {
                }
            }
            return f2889b;
        }

        public Socket createSocket() {
            return this.f2890c.getSocketFactory().createSocket();
        }

        public Socket createSocket(Socket socket, String str, int i, boolean z) {
            return this.f2890c.getSocketFactory().createSocket(socket, str, i, z);
        }
    }

    public C0170a(int i, C0168a c0168a, Uri... uriArr) {
        this.f2893c = 2073600;
        if (c0168a == null) {
            Log.e("DownLoadThread", "listener is null");
            return;
        }
        this.f2893c = i;
        this.f2891a = c0168a;
        this.f2892b = uriArr;
    }

    static int m4236a(Options options, int i, int i2) {
        int b = C0170a.m4240b(options, i, i2);
        if (b > 8) {
            return ((b + 7) / 8) * 8;
        }
        int i3 = 1;
        while (i3 < b) {
            i3 <<= 1;
        }
        return i3;
    }

    private InputStream m4237a(Uri uri) {
        if (uri == null || uri.toString().length() == 0 || !C0176g.m4257a(uri)) {
            Log.e("DownLoadThread", "getInputStreamFromUri function's uri param is error");
            return null;
        }
        try {
            URL url = new URL(uri.toString());
            if (uri.getScheme().equalsIgnoreCase("https")) {
                HttpsURLConnection httpsURLConnection = (HttpsURLConnection) url.openConnection();
                httpsURLConnection.setSSLSocketFactory(C0169b.m4235a().f2890c.getSocketFactory());
                httpsURLConnection.setConnectTimeout(8000);
                httpsURLConnection.setReadTimeout(8000);
                return httpsURLConnection.getInputStream();
            }
            if (uri.getScheme().equalsIgnoreCase("http")) {
                HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                httpURLConnection.setConnectTimeout(8000);
                httpURLConnection.setReadTimeout(8000);
                return httpURLConnection.getInputStream();
            }
            return null;
        } catch (Exception e) {
            Log.e("DownLoadThread", "Uri can't open a inputstream");
        }
    }

    private byte[] m4238a(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                break;
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
        inputStream.close();
        bArr = byteArrayOutputStream.toByteArray();
        if (byteArrayOutputStream != null) {
            byteArrayOutputStream.close();
        }
        return bArr;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private android.graphics.Bitmap[] m4239a(android.net.Uri[] r9) {
        /*
        r8 = this;
        r3 = 1;
        r0 = 0;
        r2 = 0;
        if (r9 == 0) goto L_0x0008;
    L_0x0005:
        r1 = r9.length;
        if (r1 >= r3) goto L_0x000a;
    L_0x0008:
        r0 = r2;
    L_0x0009:
        return r0;
    L_0x000a:
        r1 = r9.length;
        r1 = new android.graphics.Bitmap[r1];
    L_0x000d:
        r3 = r9.length;
        if (r0 >= r3) goto L_0x00fd;
    L_0x0010:
        r3 = r9[r0];
        r4 = r8.m4237a(r3);
        if (r4 == 0) goto L_0x00f9;
    L_0x0018:
        r3 = r8.m4238a(r4);	 Catch:{ OutOfMemoryError -> 0x004c, Exception -> 0x0097 }
        if (r3 == 0) goto L_0x0048;
    L_0x001e:
        r5 = r3.length;	 Catch:{ OutOfMemoryError -> 0x004c, Exception -> 0x0097 }
        if (r5 <= 0) goto L_0x0048;
    L_0x0021:
        r5 = new android.graphics.BitmapFactory$Options;	 Catch:{ OutOfMemoryError -> 0x004c, Exception -> 0x0097 }
        r5.<init>();	 Catch:{ OutOfMemoryError -> 0x004c, Exception -> 0x0097 }
        r6 = 1;
        r5.inJustDecodeBounds = r6;	 Catch:{ OutOfMemoryError -> 0x004c, Exception -> 0x0097 }
        r6 = 0;
        r7 = r3.length;	 Catch:{ OutOfMemoryError -> 0x004c, Exception -> 0x0097 }
        android.graphics.BitmapFactory.decodeByteArray(r3, r6, r7, r5);	 Catch:{ OutOfMemoryError -> 0x004c, Exception -> 0x0097 }
        r6 = -1;
        r7 = r8.f2893c;	 Catch:{ OutOfMemoryError -> 0x004c, Exception -> 0x0097 }
        r6 = com.baidu.android.pushservice.p065a.p066a.C0170a.m4236a(r5, r6, r7);	 Catch:{ OutOfMemoryError -> 0x004c, Exception -> 0x0097 }
        r5.inSampleSize = r6;	 Catch:{ OutOfMemoryError -> 0x004c, Exception -> 0x0097 }
        r6 = 0;
        r5.inJustDecodeBounds = r6;	 Catch:{ OutOfMemoryError -> 0x004c, Exception -> 0x0097 }
        r6 = 0;
        r7 = r3.length;	 Catch:{ OutOfMemoryError -> 0x004c, Exception -> 0x0097 }
        r3 = android.graphics.BitmapFactory.decodeByteArray(r3, r6, r7, r5);	 Catch:{ OutOfMemoryError -> 0x004c, Exception -> 0x0097 }
        r1[r0] = r3;	 Catch:{ OutOfMemoryError -> 0x004c, Exception -> 0x0097 }
    L_0x0042:
        r4.close();	 Catch:{ IOException -> 0x0079 }
    L_0x0045:
        r0 = r0 + 1;
        goto L_0x000d;
    L_0x0048:
        r3 = 0;
        r1[r0] = r3;	 Catch:{ OutOfMemoryError -> 0x004c, Exception -> 0x0097 }
        goto L_0x0042;
    L_0x004c:
        r3 = move-exception;
        r3 = "DownLoadThread";
        r5 = "out of memory err no bitmap found";
        android.util.Log.e(r3, r5);	 Catch:{ all -> 0x00d6 }
        r3 = 0;
        r1[r0] = r3;	 Catch:{ all -> 0x00d6 }
        r4.close();	 Catch:{ IOException -> 0x005b }
        goto L_0x0045;
    L_0x005b:
        r3 = move-exception;
        r4 = "DownLoadThread";
        r5 = new java.lang.StringBuilder;
        r5.<init>();
        r6 = "IO exception ";
        r5 = r5.append(r6);
        r3 = r3.getMessage();
        r3 = r5.append(r3);
        r3 = r3.toString();
        android.util.Log.e(r4, r3);
        goto L_0x0045;
    L_0x0079:
        r3 = move-exception;
        r4 = "DownLoadThread";
        r5 = new java.lang.StringBuilder;
        r5.<init>();
        r6 = "IO exception ";
        r5 = r5.append(r6);
        r3 = r3.getMessage();
        r3 = r5.append(r3);
        r3 = r3.toString();
        android.util.Log.e(r4, r3);
        goto L_0x0045;
    L_0x0097:
        r3 = move-exception;
        r5 = "DownLoadThread";
        r6 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00d6 }
        r6.<init>();	 Catch:{ all -> 0x00d6 }
        r7 = "IO exception";
        r6 = r6.append(r7);	 Catch:{ all -> 0x00d6 }
        r3 = r6.append(r3);	 Catch:{ all -> 0x00d6 }
        r3 = r3.toString();	 Catch:{ all -> 0x00d6 }
        android.util.Log.e(r5, r3);	 Catch:{ all -> 0x00d6 }
        r3 = 0;
        r1[r0] = r3;	 Catch:{ all -> 0x00d6 }
        r4.close();	 Catch:{ IOException -> 0x00b7 }
        goto L_0x0045;
    L_0x00b7:
        r3 = move-exception;
        r4 = "DownLoadThread";
        r5 = new java.lang.StringBuilder;
        r5.<init>();
        r6 = "IO exception ";
        r5 = r5.append(r6);
        r3 = r3.getMessage();
        r3 = r5.append(r3);
        r3 = r3.toString();
        android.util.Log.e(r4, r3);
        goto L_0x0045;
    L_0x00d6:
        r0 = move-exception;
        r4.close();	 Catch:{ IOException -> 0x00db }
    L_0x00da:
        throw r0;
    L_0x00db:
        r1 = move-exception;
        r2 = "DownLoadThread";
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r4 = "IO exception ";
        r3 = r3.append(r4);
        r1 = r1.getMessage();
        r1 = r3.append(r1);
        r1 = r1.toString();
        android.util.Log.e(r2, r1);
        goto L_0x00da;
    L_0x00f9:
        r1[r0] = r2;
        goto L_0x0045;
    L_0x00fd:
        r0 = r1;
        goto L_0x0009;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.android.pushservice.a.a.a.a(android.net.Uri[]):android.graphics.Bitmap[]");
    }

    private static int m4240b(Options options, int i, int i2) {
        double d = (double) options.outWidth;
        double d2 = (double) options.outHeight;
        int ceil = i2 == -1 ? 1 : (int) Math.ceil(Math.sqrt((d * d2) / ((double) i2)));
        int min = i == -1 ? ProGuard.f5670c : (int) Math.min(Math.floor(d / ((double) i)), Math.floor(d2 / ((double) i)));
        return min < ceil ? ceil : (i2 == -1 && i == -1) ? 1 : i != -1 ? min : ceil;
    }

    protected void m4241a(Bitmap[] bitmapArr) {
        if (this.f2891a != null) {
            this.f2891a.m4234a(bitmapArr);
        }
    }

    public void run() {
        m4241a(m4239a(this.f2892b));
    }
}
