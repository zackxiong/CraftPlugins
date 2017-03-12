package com.tencent.p099b.p100a;

import android.content.Context;
import com.tencent.p095a.p096a.p097a.p098a.C0660g;
import com.tencent.p095a.p096a.p097a.p098a.C0661h;
import com.tencent.p099b.p100a.p101a.C0662d;
import com.tencent.p099b.p100a.p102b.C0673b;
import com.tencent.p099b.p100a.p102b.C0677f;
import com.tencent.p099b.p100a.p102b.C0678g;
import com.tencent.p099b.p100a.p102b.C0683l;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.zip.GZIPOutputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.util.EntityUtils;
import org.json.JSONObject;

/* renamed from: com.tencent.b.a.l */
class C0700l {
    private static C0673b f5248d;
    private static C0700l f5249e;
    private static Context f5250f;
    DefaultHttpClient f5251a;
    C0677f f5252b;
    StringBuilder f5253c;
    private long f5254g;

    static {
        f5248d = C0683l.m6973c();
        f5249e = null;
        f5250f = null;
    }

    private C0700l(Context context) {
        this.f5251a = null;
        this.f5252b = null;
        this.f5253c = new StringBuilder(4096);
        this.f5254g = 0;
        try {
            f5250f = context.getApplicationContext();
            this.f5254g = System.currentTimeMillis() / 1000;
            this.f5252b = new C0677f();
            if (C0708t.m7062b()) {
                try {
                    Logger.getLogger("org.apache.http.wire").setLevel(Level.FINER);
                    Logger.getLogger("org.apache.http.headers").setLevel(Level.FINER);
                    System.setProperty("org.apache.commons.logging.Log", "org.apache.commons.logging.impl.SimpleLog");
                    System.setProperty("org.apache.commons.logging.simplelog.showdatetime", "true");
                    System.setProperty("org.apache.commons.logging.simplelog.log.httpclient.wire", "debug");
                    System.setProperty("org.apache.commons.logging.simplelog.log.org.apache.http", "debug");
                    System.setProperty("org.apache.commons.logging.simplelog.log.org.apache.http.headers", "debug");
                } catch (Throwable th) {
                }
            }
            HttpParams basicHttpParams = new BasicHttpParams();
            HttpConnectionParams.setStaleCheckingEnabled(basicHttpParams, false);
            HttpConnectionParams.setConnectionTimeout(basicHttpParams, 10000);
            HttpConnectionParams.setSoTimeout(basicHttpParams, 10000);
            this.f5251a = new DefaultHttpClient(basicHttpParams);
            this.f5251a.setKeepAliveStrategy(new C0701m(this));
        } catch (Throwable th2) {
            f5248d.m6938b(th2);
        }
    }

    static Context m7033a() {
        return f5250f;
    }

    static void m7034a(Context context) {
        f5250f = context.getApplicationContext();
    }

    static C0700l m7035b(Context context) {
        if (f5249e == null) {
            synchronized (C0700l.class) {
                if (f5249e == null) {
                    f5249e = new C0700l(context);
                }
            }
        }
        return f5249e;
    }

    final void m7036a(C0662d c0662d, C0671k c0671k) {
        m7038b(Arrays.asList(new String[]{c0662d.m6870g()}), c0671k);
    }

    final void m7037a(List<?> list, C0671k c0671k) {
        Throwable th;
        int i = 0;
        if (list != null && !list.isEmpty()) {
            int size = list.size();
            list.get(0);
            try {
                int i2;
                String str;
                this.f5253c.delete(0, this.f5253c.length());
                this.f5253c.append("[");
                String str2 = "rc4";
                for (i2 = 0; i2 < size; i2++) {
                    this.f5253c.append(list.get(i2).toString());
                    if (i2 != size - 1) {
                        this.f5253c.append(",");
                    }
                }
                this.f5253c.append("]");
                String stringBuilder = this.f5253c.toString();
                size = stringBuilder.length();
                String str3 = C0708t.m7080o() + "/?index=" + this.f5254g;
                this.f5254g++;
                if (C0708t.m7062b()) {
                    f5248d.m6935a("[" + str3 + "]Send request(" + size + "bytes), content:" + stringBuilder);
                }
                HttpPost httpPost = new HttpPost(str3);
                httpPost.addHeader("Accept-Encoding", "gzip");
                httpPost.setHeader("Connection", "Keep-Alive");
                httpPost.removeHeaders("Cache-Control");
                HttpHost a = C0712x.m7120a(f5250f).m7124a();
                httpPost.addHeader("Content-Encoding", str2);
                if (a == null) {
                    this.f5251a.getParams().removeParameter("http.route.default-proxy");
                } else {
                    if (C0708t.m7062b()) {
                        f5248d.m6943g("proxy:" + a.toHostString());
                    }
                    httpPost.addHeader("X-Content-Encoding", str2);
                    this.f5251a.getParams().setParameter("http.route.default-proxy", a);
                    httpPost.addHeader("X-Online-Host", C0708t.f5301l);
                    httpPost.addHeader("Accept", "*/*");
                    httpPost.addHeader("Content-Type", "json");
                }
                OutputStream byteArrayOutputStream = new ByteArrayOutputStream(size);
                byte[] bytes = stringBuilder.getBytes("UTF-8");
                int length = bytes.length;
                if (size > C0708t.f5305p) {
                    i = 1;
                }
                if (i != 0) {
                    httpPost.removeHeaders("Content-Encoding");
                    str = str2 + ",gzip";
                    httpPost.addHeader("Content-Encoding", str);
                    if (a != null) {
                        httpPost.removeHeaders("X-Content-Encoding");
                        httpPost.addHeader("X-Content-Encoding", str);
                    }
                    byteArrayOutputStream.write(new byte[4]);
                    GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                    gZIPOutputStream.write(bytes);
                    gZIPOutputStream.close();
                    bytes = byteArrayOutputStream.toByteArray();
                    ByteBuffer.wrap(bytes, 0, 4).putInt(length);
                    if (C0708t.m7062b()) {
                        f5248d.m6943g("before Gzip:" + length + " bytes, after Gzip:" + bytes.length + " bytes");
                    }
                }
                httpPost.setEntity(new ByteArrayEntity(C0678g.m6953a(bytes)));
                HttpResponse execute = this.f5251a.execute(httpPost);
                HttpEntity entity = execute.getEntity();
                size = execute.getStatusLine().getStatusCode();
                long contentLength = entity.getContentLength();
                if (C0708t.m7062b()) {
                    f5248d.m6935a("http recv response status code:" + size + ", content length:" + contentLength);
                }
                if (contentLength <= 0) {
                    f5248d.m6941e("Server response no data.");
                    if (c0671k != null) {
                        c0671k.m6894b();
                    }
                    EntityUtils.toString(entity);
                    return;
                }
                if (contentLength > 0) {
                    InputStream content = entity.getContent();
                    DataInputStream dataInputStream = new DataInputStream(content);
                    bytes = new byte[((int) entity.getContentLength())];
                    dataInputStream.readFully(bytes);
                    content.close();
                    dataInputStream.close();
                    Header firstHeader = execute.getFirstHeader("Content-Encoding");
                    if (firstHeader != null) {
                        if (firstHeader.getValue().equalsIgnoreCase("gzip,rc4")) {
                            bytes = C0678g.m6955b(C0683l.m6969a(bytes));
                        } else if (firstHeader.getValue().equalsIgnoreCase("rc4,gzip")) {
                            bytes = C0683l.m6969a(C0678g.m6955b(bytes));
                        } else if (firstHeader.getValue().equalsIgnoreCase("gzip")) {
                            bytes = C0683l.m6969a(bytes);
                        } else if (firstHeader.getValue().equalsIgnoreCase("rc4")) {
                            bytes = C0678g.m6955b(bytes);
                        }
                    }
                    str = new String(bytes, "UTF-8");
                    if (C0708t.m7062b()) {
                        f5248d.m6935a("http get response data:" + str);
                    }
                    JSONObject jSONObject = new JSONObject(str);
                    if (size == 200) {
                        try {
                            stringBuilder = jSONObject.optString("mid");
                            if (C0661h.m6860b(stringBuilder)) {
                                if (C0708t.m7062b()) {
                                    f5248d.m6935a("update mid:" + stringBuilder);
                                }
                                C0660g.m6851a(f5250f).m6853a(stringBuilder);
                            }
                            if (!jSONObject.isNull("cfg")) {
                                C0708t.m7054a(f5250f, jSONObject.getJSONObject("cfg"));
                            }
                            if (!jSONObject.isNull("ncts")) {
                                i2 = jSONObject.getInt("ncts");
                                i = (int) (((long) i2) - (System.currentTimeMillis() / 1000));
                                if (C0708t.m7062b()) {
                                    f5248d.m6935a("server time:" + i2 + ", diff time:" + i);
                                }
                                C0683l.m7001v(f5250f);
                                C0683l.m6967a(f5250f, i);
                            }
                        } catch (Throwable th2) {
                            f5248d.m6939c(th2);
                        }
                        if (c0671k != null) {
                            if (jSONObject.optInt("ret") == 0) {
                                c0671k.m6893a();
                            } else {
                                f5248d.m6940d("response error data.");
                                c0671k.m6894b();
                            }
                        }
                    } else {
                        f5248d.m6940d("Server response error code:" + size + ", error:" + new String(bytes, "UTF-8"));
                        if (c0671k != null) {
                            c0671k.m6894b();
                        }
                    }
                    content.close();
                } else {
                    EntityUtils.toString(entity);
                }
                byteArrayOutputStream.close();
                th2 = null;
                if (th2 != null) {
                    f5248d.m6936a(th2);
                    if (c0671k != null) {
                        try {
                            c0671k.m6894b();
                        } catch (Throwable th3) {
                            f5248d.m6938b(th3);
                        }
                    }
                    if (th2 instanceof OutOfMemoryError) {
                        System.gc();
                        this.f5253c = null;
                        this.f5253c = new StringBuilder(2048);
                    }
                    C0712x.m7120a(f5250f).m7128d();
                }
            } catch (Throwable th4) {
            }
        }
    }

    final void m7038b(List<?> list, C0671k c0671k) {
        if (this.f5252b != null) {
            this.f5252b.m6952a(new C0702n(this, list, c0671k));
        }
    }
}
