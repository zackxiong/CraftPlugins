package com.baidu.frontia.module.deeplink;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.Log;
import com.baidu.android.pushservice.util.NoProGuard;
import com.baidu.frontia.p075a.p079c.C0393g;
import java.net.MalformedURLException;
import java.net.URL;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;

public class FrontiaDeepLinkImpl implements NoProGuard {
    private final String TAG;
    private String mApiKey;
    private final Context mAppContext;

    /* renamed from: com.baidu.frontia.module.deeplink.FrontiaDeepLinkImpl.a */
    class C0408a extends AsyncTask<Void, Void, Void> {
        final /* synthetic */ FrontiaDeepLinkImpl f3666a;
        private final String f3667b;
        private final String f3668c;

        public C0408a(FrontiaDeepLinkImpl frontiaDeepLinkImpl, String str, String str2) {
            this.f3666a = frontiaDeepLinkImpl;
            this.f3667b = str;
            this.f3668c = str2;
        }

        protected Void m5362a(Void... voidArr) {
            System.currentTimeMillis();
            HttpResponse a = C0393g.m5323a(new HttpGet(this.f3667b));
            if (a == null || a.getStatusLine().getStatusCode() != 200) {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(Uri.parse("http://developer.baidu.com"));
                this.f3666a.mAppContext.sendBroadcast(intent);
            }
            if (!(a == null || a.getStatusLine().getStatusCode() == 200)) {
                a.getStatusLine().getStatusCode();
            }
            return null;
        }

        protected /* synthetic */ Object doInBackground(Object[] objArr) {
            return m5362a((Void[]) objArr);
        }
    }

    public FrontiaDeepLinkImpl(Context context) {
        this.TAG = "FrontiaDeepLinkImpl";
        this.mAppContext = context;
    }

    public void init(String str) {
        this.mApiKey = str;
    }

    public void launch(String str) {
        try {
            URL url = new URL(str);
            String path = url.getPath();
            if (path != null && path.trim().length() != 0) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("http://127.0.0.1:7777/native").append(path).append("?client_id=").append(this.mApiKey);
                String query = url.getQuery();
                if (query != null && query.trim().length() > 0) {
                    stringBuilder.append('&').append(query);
                }
                new C0408a(this, stringBuilder.toString(), str).execute(new Void[0]);
            }
        } catch (MalformedURLException e) {
            Log.e("FrontiaDeepLinkImpl", "error " + e.getMessage());
        }
    }
}
