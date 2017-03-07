package com.baidu.lbsapi.auth;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.baidu.frontia.module.deeplink.GetApn;
import java.io.UnsupportedEncodingException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.security.KeyStore;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map.Entry;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.util.EntityUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.baidu.lbsapi.auth.f */
class C0437f {
    private final String f3741a;
    private Context f3742b;
    private String f3743c;
    private String f3744d;
    private List<HashMap<String, String>> f3745e;
    private C0435a<String> f3746f;

    /* renamed from: com.baidu.lbsapi.auth.f.a */
    interface C0435a<Result> {
        void m5471a(Result result);
    }

    /* renamed from: com.baidu.lbsapi.auth.f.b */
    class C0436b extends SSLSocketFactory {
        SSLContext f3739a;
        final /* synthetic */ C0437f f3740b;

        public C0436b(C0437f c0437f, KeyStore keyStore) {
            this.f3740b = c0437f;
            super(keyStore);
            this.f3739a = SSLContext.getInstance("TLS");
            C0439h c0439h = new C0439h(this, c0437f);
            this.f3739a.init(null, new TrustManager[]{c0439h}, null);
        }

        public Socket createSocket() {
            return this.f3739a.getSocketFactory().createSocket();
        }

        public Socket createSocket(Socket socket, String str, int i, boolean z) {
            return this.f3739a.getSocketFactory().createSocket(socket, str, i, z);
        }
    }

    protected C0437f(Context context) {
        this.f3741a = "HttpAsyncTask";
        this.f3743c = null;
        this.f3744d = null;
        this.f3745e = null;
        this.f3746f = null;
        this.f3742b = context;
    }

    private String m5472a(Context context) {
        String str = GetApn.APN_TYPE_WIFI;
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isAvailable()) {
            return "";
        }
        String extraInfo = activeNetworkInfo.getExtraInfo();
        return (extraInfo == null || !(extraInfo.trim().toLowerCase().equals("cmwap") || extraInfo.trim().toLowerCase().equals("uniwap") || extraInfo.trim().toLowerCase().equals("3gwap") || extraInfo.trim().toLowerCase().equals("ctwap"))) ? str : extraInfo.trim().toLowerCase().equals("ctwap") ? "ctwap" : "cmwap";
    }

    private String m5473a(HttpClient httpClient, String str, HashMap<String, String> hashMap) {
        if (C0427a.f3727a) {
            C0427a.m5446a("httpPost start");
        }
        double currentTimeMillis = C0427a.f3727a ? (double) System.currentTimeMillis() : 0.0d;
        HttpUriRequest httpPost = new HttpPost(str);
        if (C0427a.f3727a) {
            C0427a.m5446a("httpPost url:" + str);
        }
        if (hashMap == null) {
            return ErrorMessage.m5444a("Post paramters is null;");
        }
        List arrayList = new ArrayList(hashMap.size());
        for (Entry entry : hashMap.entrySet()) {
            if (!((String) entry.getKey()).equals("url")) {
                if (C0427a.f3727a) {
                    C0427a.m5446a("" + ((String) entry.getKey()) + ":" + ((String) entry.getValue()));
                }
                arrayList.add(new BasicNameValuePair((String) entry.getKey(), (String) entry.getValue()));
            }
        }
        if (C0427a.f3727a) {
            C0427a.m5446a("httpPost add params end");
        }
        for (Header header : httpPost.getAllHeaders()) {
            if (C0427a.f3727a) {
                C0427a.m5446a("http header : " + header.getName() + "=" + header.getValue());
            }
        }
        try {
            httpPost.setEntity(new UrlEncodedFormEntity(arrayList, "utf-8"));
            try {
                if (C0427a.f3727a) {
                    C0427a.m5446a("httpPost execute");
                }
                HttpResponse execute = httpClient.execute(httpPost);
                if (C0427a.f3727a) {
                    C0427a.m5446a("POST Thread duration:" + ((((double) System.currentTimeMillis()) - currentTimeMillis) / 1000.0d) + "[url:" + str + "]");
                }
                if (execute == null || execute.getStatusLine() == null) {
                    return ErrorMessage.m5444a("Error: http response can not get status code.");
                }
                int statusCode = execute.getStatusLine().getStatusCode();
                if (statusCode != 200) {
                    if (C0427a.f3727a) {
                        C0427a.m5446a("syncConnect 104" + execute.getStatusLine().getReasonPhrase());
                    }
                    return ErrorMessage.m5444a("Http code:" + statusCode + ";" + execute.getStatusLine().getReasonPhrase());
                }
                try {
                    this.f3743c = EntityUtils.toString(execute.getEntity(), "utf-8");
                    if (C0427a.f3727a) {
                        C0427a.m5446a("syncConnect parse result = " + this.f3743c);
                    }
                    try {
                        JSONObject jSONObject = new JSONObject(this.f3743c);
                        if (C0427a.f3727a) {
                            C0427a.m5446a("httpPost end");
                        }
                        return jSONObject.toString();
                    } catch (JSONException e) {
                        return ErrorMessage.m5444a("JSONException:" + e.getMessage());
                    }
                } catch (Exception e2) {
                    return ErrorMessage.m5444a("Exception:" + e2.getMessage());
                }
            } catch (ConnectTimeoutException e3) {
                return ErrorMessage.m5444a("Connect timeout exception:" + e3.getMessage());
            } catch (SocketTimeoutException e4) {
                return ErrorMessage.m5444a("Socket timeout exception:" + e4.getMessage());
            } catch (Exception e22) {
                return ErrorMessage.m5444a("Exception:" + e22.getMessage());
            }
        } catch (UnsupportedEncodingException e5) {
            return ErrorMessage.m5444a("Paramters encoding exception:" + e5.getMessage());
        }
    }

    private List<HashMap<String, String>> m5475a(HashMap<String, String> hashMap, String[] strArr) {
        List<HashMap<String, String>> arrayList = new ArrayList();
        if (strArr == null || strArr.length <= 0) {
            HashMap hashMap2 = new HashMap();
            for (Object obj : hashMap.keySet()) {
                String obj2 = obj.toString();
                hashMap2.put(obj2, hashMap.get(obj2));
            }
            arrayList.add(hashMap2);
        } else {
            for (Object put : strArr) {
                HashMap hashMap3 = new HashMap();
                for (Object put2 : hashMap.keySet()) {
                    String obj3 = put2.toString();
                    hashMap3.put(obj3, hashMap.get(obj3));
                }
                hashMap3.put("mcode", put2);
                arrayList.add(hashMap3);
            }
        }
        return arrayList;
    }

    private HttpClient m5476a() {
        try {
            KeyStore instance = KeyStore.getInstance(KeyStore.getDefaultType());
            instance.load(null, null);
            SocketFactory c0436b = new C0436b(this, instance);
            c0436b.setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
            HttpParams basicHttpParams = new BasicHttpParams();
            HttpProtocolParams.setVersion(basicHttpParams, HttpVersion.HTTP_1_1);
            HttpProtocolParams.setContentCharset(basicHttpParams, "UTF-8");
            SchemeRegistry schemeRegistry = new SchemeRegistry();
            schemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
            schemeRegistry.register(new Scheme("https", c0436b, 443));
            return new DefaultHttpClient(new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry), basicHttpParams);
        } catch (Exception e) {
            return new DefaultHttpClient();
        }
    }

    private void m5478a(String str) {
        JSONObject jSONObject;
        try {
            jSONObject = new JSONObject(str);
            if (!jSONObject.has("status")) {
                jSONObject.put("status", -1);
            }
        } catch (JSONException e) {
            jSONObject = new JSONObject();
            try {
                jSONObject.put("status", -1);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        if (this.f3746f != null) {
            this.f3746f.m5471a(jSONObject != null ? jSONObject.toString() : new JSONObject().toString());
        }
    }

    private void m5479a(List<HashMap<String, String>> list) {
        if (C0427a.f3727a) {
            C0427a.m5446a("syncConnect start Thread id = " + String.valueOf(Thread.currentThread().getId()));
        }
        if (list != null && list.size() > 0) {
            JSONObject jSONObject;
            List arrayList = new ArrayList();
            int i = 0;
            while (i < list.size()) {
                if (C0427a.f3727a) {
                    C0427a.m5446a("auth sync resuest " + i + "  start!!!");
                }
                HashMap hashMap = (HashMap) list.get(i);
                HttpClient a = m5476a();
                m5481b(a);
                String str = (String) hashMap.get("url");
                if (m5480a(a)) {
                    String a2 = m5473a(a, str, hashMap);
                    if (C0427a.f3727a) {
                        C0427a.m5446a("auth sync resuest " + i + "  result:" + a2);
                    }
                    arrayList.add(a2);
                    try {
                        jSONObject = new JSONObject(a2);
                        if (jSONObject.has("status") && jSONObject.getInt("status") == 0) {
                            if (C0427a.f3727a) {
                                C0427a.m5446a("auth end and break");
                            }
                            m5478a(a2);
                            return;
                        }
                    } catch (JSONException e) {
                        if (C0427a.f3727a) {
                            C0427a.m5446a("continue-------------------------------");
                        }
                    }
                } else {
                    if (C0427a.f3727a) {
                        C0427a.m5446a("Current network is not available.");
                    }
                    arrayList.add(ErrorMessage.m5444a("Current network is not available."));
                }
                if (C0427a.f3727a) {
                    C0427a.m5446a("syncConnect end");
                }
                i++;
            }
            if (C0427a.f3727a) {
                C0427a.m5446a("---------------------------iiiiii:" + i + "<><>paramList.size():" + list.size() + "<><>authResults.size():" + arrayList.size());
            }
            if (list.size() > 0 && i == list.size() && arrayList.size() > 0 && i == arrayList.size() && i - 1 > 0) {
                try {
                    jSONObject = new JSONObject((String) arrayList.get(i - 1));
                    if (jSONObject.has("status") && jSONObject.getInt("status") != 0) {
                        if (C0427a.f3727a) {
                            C0427a.m5446a("i-1 result is not 0,return first result");
                        }
                        m5478a((String) arrayList.get(0));
                    }
                } catch (JSONException e2) {
                    m5478a(ErrorMessage.m5444a("JSONException:" + e2.getMessage()));
                }
            }
        }
    }

    private boolean m5480a(HttpClient httpClient) {
        if (C0427a.f3727a) {
            C0427a.m5446a("checkNetwork 1 start");
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.f3742b.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isAvailable()) {
            return false;
        }
        String a = m5472a(this.f3742b);
        if (C0427a.f3727a) {
            C0427a.m5446a("checkNetwork = " + a);
        }
        if (a.equals("cmwap")) {
            httpClient.getParams().setParameter("http.route.default-proxy", new HttpHost("10.0.0.172", 80, "http"));
        } else if (a.equals("ctwap")) {
            httpClient.getParams().setParameter("http.route.default-proxy", new HttpHost("10.0.0.200", 80, "http"));
        }
        if (C0427a.f3727a) {
            C0427a.m5446a("checkNetwork 4 end");
        }
        return true;
    }

    private void m5481b(HttpClient httpClient) {
        if (C0427a.f3727a) {
            C0427a.m5446a("setTimeout start");
        }
        httpClient.getParams().setIntParameter("http.socket.timeout", 50000);
        httpClient.getParams().setIntParameter("http.connection.timeout", 50000);
        if (C0427a.f3727a) {
            C0427a.m5446a("setTimeout end");
        }
    }

    protected void m5482a(HashMap<String, String> hashMap, String[] strArr, C0435a<String> c0435a) {
        this.f3745e = m5475a((HashMap) hashMap, strArr);
        this.f3746f = c0435a;
        new Thread(new C0438g(this)).start();
    }
}
