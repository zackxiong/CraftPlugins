package cn.sharesdk.framework.network;

import android.content.Context;
import cn.sharesdk.framework.utils.C0064R;
import cn.sharesdk.framework.utils.C0065a;
import cn.sharesdk.framework.utils.C0068d;
import cn.sharesdk.framework.utils.C0071e;
import com.baidu.location.C0452e;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.URLConnection;
import java.security.KeyStore;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.UUID;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.util.EntityUtils;

/* renamed from: cn.sharesdk.framework.network.h */
public class C0037h {
    public static int f1982a;
    public static int f1983b;

    private String m3009a(ArrayList<C0034e<String>> arrayList) {
        StringBuilder stringBuilder = new StringBuilder();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            C0034e c0034e = (C0034e) it.next();
            String c = C0065a.m3210c(c0034e.f1977a, "utf-8");
            String c2 = c0034e.f1978b != null ? C0065a.m3210c((String) c0034e.f1978b, "utf-8") : "";
            if (stringBuilder.length() > 0) {
                stringBuilder.append('&');
            }
            stringBuilder.append(c).append('=').append(c2);
        }
        return stringBuilder.toString();
    }

    private HttpClient m3010a() {
        KeyStore instance = KeyStore.getInstance(KeyStore.getDefaultType());
        instance.load(null, null);
        SocketFactory c0039j = new C0039j(instance);
        c0039j.setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
        HttpParams basicHttpParams = new BasicHttpParams();
        HttpProtocolParams.setVersion(basicHttpParams, HttpVersion.HTTP_1_1);
        HttpProtocolParams.setContentCharset(basicHttpParams, "UTF-8");
        SchemeRegistry schemeRegistry = new SchemeRegistry();
        schemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
        schemeRegistry.register(new Scheme("https", c0039j, 443));
        return new DefaultHttpClient(new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry), basicHttpParams);
    }

    private HttpPost m3011a(String str, ArrayList<C0034e<String>> arrayList) {
        HttpPost httpPost = new HttpPost(str);
        if (arrayList != null) {
            C0041l c0041l = new C0041l();
            c0041l.m3028a(m3009a(arrayList));
            HttpEntity c = c0041l.m2996c();
            c.setContentType("application/x-www-form-urlencoded");
            httpPost.setEntity(c);
        }
        return httpPost;
    }

    private HttpPost m3012a(String str, ArrayList<C0034e<String>> arrayList, C0034e<String> c0034e) {
        HttpPost httpPost = new HttpPost(str);
        String uuid = UUID.randomUUID().toString();
        C0035f c0035f = new C0035f();
        C0031d c0041l = new C0041l();
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                C0034e c0034e2 = (C0034e) it.next();
                c0041l.m3028a("--").m3028a(uuid).m3028a("\r\n");
                c0041l.m3028a("content-disposition: form-data; name=\"").m3028a(c0034e2.f1977a).m3028a("\"\r\n\r\n");
                c0041l.m3028a((String) c0034e2.f1978b).m3028a("\r\n");
            }
        }
        httpPost.setHeader("Content-Type", "multipart/form-data; boundary=" + uuid);
        c0041l.m3028a("--").m3028a(uuid).m3028a("\r\n");
        c0041l.m3028a("Content-Disposition: form-data; name=\"").m3028a(c0034e.f1977a).m3028a("\"; filename=\"").m3028a(new File((String) c0034e.f1978b).getName()).m3028a("\"\r\n");
        String contentTypeFor = URLConnection.getFileNameMap().getContentTypeFor((String) c0034e.f1978b);
        if (contentTypeFor == null || contentTypeFor.length() <= 0) {
            if (((String) c0034e.f1978b).toLowerCase().endsWith("jpg") || ((String) c0034e.f1978b).toLowerCase().endsWith("jepg")) {
                contentTypeFor = "image/jpeg";
            } else if (((String) c0034e.f1978b).toLowerCase().endsWith("png")) {
                contentTypeFor = "image/png";
            } else if (((String) c0034e.f1978b).toLowerCase().endsWith("gif")) {
                contentTypeFor = "image/gif";
            } else {
                InputStream fileInputStream = new FileInputStream((String) c0034e.f1978b);
                contentTypeFor = URLConnection.guessContentTypeFromStream(fileInputStream);
                fileInputStream.close();
                if (contentTypeFor == null || contentTypeFor.length() <= 0) {
                    contentTypeFor = "application/octet-stream";
                }
            }
        }
        c0041l.m3028a("Content-Type: ").m3028a(contentTypeFor).m3028a("\r\n\r\n");
        c0035f.m3004a(c0041l);
        c0041l = new C0033c();
        c0041l.m3002a((String) c0034e.f1978b);
        c0035f.m3004a(c0041l);
        C0031d c0041l2 = new C0041l();
        c0041l2.m3028a("\r\n--").m3028a(uuid).m3028a("--\r\n");
        c0035f.m3004a(c0041l2);
        httpPost.setEntity(c0035f.m2996c());
        return httpPost;
    }

    public String m3013a(Context context, String str, String str2, boolean z) {
        long currentTimeMillis = System.currentTimeMillis();
        C0071e.m3265b("downloading: " + str, new Object[0]);
        if (z) {
            File file = new File(C0064R.getCachePath(context, str2), C0065a.m3208b(str));
            if (z && file.exists()) {
                C0071e.m3265b("use time: " + (System.currentTimeMillis() - currentTimeMillis), new Object[0]);
                return file.getAbsolutePath();
            }
        }
        HttpUriRequest httpGet = new HttpGet(str);
        HttpClient a = str.startsWith("https://") ? m3010a() : new DefaultHttpClient();
        HttpResponse execute = a.execute(httpGet);
        int statusCode = execute.getStatusLine().getStatusCode();
        String b;
        if (statusCode == 200) {
            String str3 = null;
            Header[] headers = execute.getHeaders("Content-Disposition");
            if (headers != null && headers.length > 0) {
                for (String str4 : headers[0].getValue().split(";")) {
                    if (str4.trim().startsWith("filename")) {
                        str3 = str4.split("=")[1];
                        if (str3.startsWith("\"") && str3.endsWith("\"")) {
                            str3 = str3.substring(1, str3.length() - 1);
                        }
                    }
                }
            }
            if (str3 == null) {
                b = C0065a.m3208b(str);
                Header[] headers2 = execute.getHeaders("Content-Type");
                if (headers2 != null && headers2.length > 0) {
                    str3 = headers2[0].getValue().trim();
                    if (str3.startsWith("image/")) {
                        str3 = str3.substring("image/".length());
                        StringBuilder append = new StringBuilder().append(b).append(".");
                        if ("jpeg".equals(str3)) {
                            str3 = "jpg";
                        }
                        str3 = append.append(str3).toString();
                    } else {
                        int lastIndexOf = str.lastIndexOf(47);
                        str3 = null;
                        if (lastIndexOf > 0) {
                            str3 = str.substring(lastIndexOf + 1);
                        }
                        if (str3 != null && str3.length() > 0) {
                            lastIndexOf = str3.lastIndexOf(46);
                            if (lastIndexOf > 0 && str3.length() - lastIndexOf < 10) {
                                str3 = b + str3.substring(lastIndexOf);
                            }
                        }
                    }
                }
                str3 = b;
            }
            File file2 = new File(C0064R.getCachePath(context, str2), str3);
            if (z && file2.exists()) {
                a.getConnectionManager().shutdown();
                C0071e.m3265b("use time: " + (System.currentTimeMillis() - currentTimeMillis), new Object[0]);
                return file2.getAbsolutePath();
            }
            if (!file2.getParentFile().exists()) {
                file2.getParentFile().mkdirs();
            }
            if (file2.exists()) {
                file2.delete();
            }
            try {
                InputStream content = execute.getEntity().getContent();
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                byte[] bArr = new byte[1024];
                for (statusCode = content.read(bArr); statusCode > 0; statusCode = content.read(bArr)) {
                    fileOutputStream.write(bArr, 0, statusCode);
                }
                fileOutputStream.flush();
                content.close();
                fileOutputStream.close();
                a.getConnectionManager().shutdown();
                C0071e.m3265b("use time: " + (System.currentTimeMillis() - currentTimeMillis), new Object[0]);
                return file2.getAbsolutePath();
            } catch (Throwable th) {
                if (file2.exists()) {
                    file2.delete();
                }
            }
        } else {
            b = EntityUtils.toString(execute.getEntity(), "utf-8");
            HashMap hashMap = new HashMap();
            hashMap.put("error", b);
            hashMap.put("status", Integer.valueOf(statusCode));
            a.getConnectionManager().shutdown();
            throw new Throwable(new C0068d().m3254a(hashMap));
        }
    }

    public String m3014a(String str, ArrayList<C0034e<String>> arrayList, C0034e<String> c0034e, ArrayList<C0034e<String>> arrayList2, ArrayList<C0034e<?>> arrayList3) {
        HttpUriRequest a;
        long currentTimeMillis = System.currentTimeMillis();
        C0071e.m3265b("httpPost: " + str, new Object[0]);
        if (c0034e == null || c0034e.f1978b == null || !new File((String) c0034e.f1978b).exists()) {
            Object a2 = m3011a(str, arrayList);
        } else {
            a = m3012a(str, arrayList, c0034e);
        }
        if (arrayList2 != null) {
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                C0034e c0034e2 = (C0034e) it.next();
                a.setHeader(c0034e2.f1977a, (String) c0034e2.f1978b);
            }
        }
        HttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, f1982a);
        HttpConnectionParams.setSoTimeout(basicHttpParams, f1983b);
        a.setParams(basicHttpParams);
        HttpClient a3 = str.startsWith("https://") ? m3010a() : new DefaultHttpClient();
        HttpResponse execute = a3.execute(a);
        int statusCode = execute.getStatusLine().getStatusCode();
        if (statusCode == 200 || statusCode == C0452e.f3861z) {
            String entityUtils = EntityUtils.toString(execute.getEntity(), "utf-8");
            a3.getConnectionManager().shutdown();
            C0071e.m3265b("use time: " + (System.currentTimeMillis() - currentTimeMillis), new Object[0]);
            return entityUtils;
        }
        entityUtils = EntityUtils.toString(execute.getEntity(), "utf-8");
        HashMap hashMap = new HashMap();
        hashMap.put("error", entityUtils);
        hashMap.put("status", Integer.valueOf(statusCode));
        a3.getConnectionManager().shutdown();
        throw new Throwable(new C0068d().m3254a(hashMap));
    }

    public String m3015a(String str, ArrayList<C0034e<String>> arrayList, ArrayList<C0034e<String>> arrayList2, ArrayList<C0034e<?>> arrayList3) {
        long currentTimeMillis = System.currentTimeMillis();
        C0071e.m3265b("httpGet: " + str, new Object[0]);
        if (arrayList != null) {
            String a = m3009a(arrayList);
            if (a.length() > 0) {
                str = str + "?" + a;
            }
        }
        HttpUriRequest httpGet = new HttpGet(str);
        if (arrayList2 != null) {
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                C0034e c0034e = (C0034e) it.next();
                httpGet.setHeader(c0034e.f1977a, (String) c0034e.f1978b);
            }
        }
        HttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, f1982a);
        HttpConnectionParams.setSoTimeout(basicHttpParams, f1983b);
        httpGet.setParams(basicHttpParams);
        HttpClient a2 = str.startsWith("https://") ? m3010a() : new DefaultHttpClient();
        HttpResponse execute = a2.execute(httpGet);
        int statusCode = execute.getStatusLine().getStatusCode();
        if (statusCode == 200) {
            String entityUtils = EntityUtils.toString(execute.getEntity(), "utf-8");
            a2.getConnectionManager().shutdown();
            C0071e.m3265b("use time: " + (System.currentTimeMillis() - currentTimeMillis), new Object[0]);
            return entityUtils;
        }
        entityUtils = EntityUtils.toString(execute.getEntity(), "utf-8");
        HashMap hashMap = new HashMap();
        hashMap.put("error", entityUtils);
        hashMap.put("status", Integer.valueOf(statusCode));
        a2.getConnectionManager().shutdown();
        throw new Throwable(new C0068d().m3254a(hashMap));
    }

    public void m3016a(String str, ArrayList<C0034e<String>> arrayList, C0031d c0031d, RawNetworkCallback rawNetworkCallback) {
        long currentTimeMillis = System.currentTimeMillis();
        C0071e.m3265b("raw post: " + str, new Object[0]);
        HttpUriRequest httpPost = new HttpPost(str);
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                C0034e c0034e = (C0034e) it.next();
                httpPost.setHeader(c0034e.f1977a, (String) c0034e.f1978b);
            }
        }
        httpPost.setEntity(c0031d.m2996c());
        HttpClient a = str.startsWith("https://") ? m3010a() : new DefaultHttpClient();
        HttpResponse execute = a.execute(httpPost);
        int statusCode = execute.getStatusLine().getStatusCode();
        if (statusCode == 200) {
            C0071e.m3265b("use time: " + (System.currentTimeMillis() - currentTimeMillis), new Object[0]);
            if (rawNetworkCallback != null) {
                rawNetworkCallback.onResponse(execute.getEntity().getContent());
            }
            a.getConnectionManager().shutdown();
            return;
        }
        String entityUtils = EntityUtils.toString(execute.getEntity(), "utf-8");
        HashMap hashMap = new HashMap();
        hashMap.put("error", entityUtils);
        hashMap.put("status", Integer.valueOf(statusCode));
        a.getConnectionManager().shutdown();
        throw new Throwable(new C0068d().m3254a(hashMap));
    }

    public String m3017b(String str, ArrayList<C0034e<String>> arrayList, C0034e<String> c0034e, ArrayList<C0034e<String>> arrayList2, ArrayList<C0034e<?>> arrayList3) {
        long currentTimeMillis = System.currentTimeMillis();
        C0071e.m3265b("httpPut: " + str, new Object[0]);
        if (arrayList != null) {
            String a = m3009a(arrayList);
            if (a.length() > 0) {
                str = str + "?" + a;
            }
        }
        HttpUriRequest httpPut = new HttpPut(str);
        if (arrayList2 != null) {
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                C0034e c0034e2 = (C0034e) it.next();
                httpPut.setHeader(c0034e2.f1977a, (String) c0034e2.f1978b);
            }
        }
        C0033c c0033c = new C0033c();
        c0033c.m3002a((String) c0034e.f1978b);
        HttpEntity c = c0033c.m2996c();
        c.setContentEncoding("application/octet-stream");
        httpPut.setEntity(c);
        HttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, f1982a);
        HttpConnectionParams.setSoTimeout(basicHttpParams, f1983b);
        httpPut.setParams(basicHttpParams);
        HttpClient a2 = str.startsWith("https://") ? m3010a() : new DefaultHttpClient();
        HttpResponse execute = a2.execute(httpPut);
        int statusCode = execute.getStatusLine().getStatusCode();
        if (statusCode == 200 || statusCode == C0452e.f3861z) {
            String entityUtils = EntityUtils.toString(execute.getEntity(), "utf-8");
            a2.getConnectionManager().shutdown();
            C0071e.m3265b("use time: " + (System.currentTimeMillis() - currentTimeMillis), new Object[0]);
            return entityUtils;
        }
        entityUtils = EntityUtils.toString(execute.getEntity(), "utf-8");
        HashMap hashMap = new HashMap();
        hashMap.put("error", entityUtils);
        hashMap.put("status", Integer.valueOf(statusCode));
        a2.getConnectionManager().shutdown();
        throw new Throwable(new C0068d().m3254a(hashMap));
    }
}
