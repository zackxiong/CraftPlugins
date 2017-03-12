package com.p038b.p039a.p055f;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import java.io.File;
import java.nio.charset.Charset;
import java.util.Locale;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.methods.HttpRequestBase;

/* renamed from: com.b.a.f.e */
public class ProGuard {
    private static SSLSocketFactory f2822a;

    public static String m4107a(Context context) {
        String string;
        String country;
        if (context != null) {
            try {
                string = context.getString(((Integer) Class.forName("com.android.internal.R$string").getDeclaredField("web_user_agent").get(null)).intValue());
            } catch (Throwable th) {
                string = null;
            }
        } else {
            string = null;
        }
        if (TextUtils.isEmpty(string)) {
            string = "Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 %sSafari/533.1";
        }
        Locale locale = Locale.getDefault();
        StringBuffer stringBuffer = new StringBuffer();
        String str = VERSION.RELEASE;
        if (str.length() > 0) {
            stringBuffer.append(str);
        } else {
            stringBuffer.append("1.0");
        }
        stringBuffer.append("; ");
        str = locale.getLanguage();
        if (str != null) {
            stringBuffer.append(str.toLowerCase());
            country = locale.getCountry();
            if (country != null) {
                stringBuffer.append("-");
                stringBuffer.append(country.toLowerCase());
            }
        } else {
            stringBuffer.append("en");
        }
        if ("REL".equals(VERSION.CODENAME)) {
            country = Build.MODEL;
            if (country.length() > 0) {
                stringBuffer.append("; ");
                stringBuffer.append(country);
            }
        }
        country = Build.ID;
        if (country.length() > 0) {
            stringBuffer.append(" Build/");
            stringBuffer.append(country);
        }
        return String.format(string, new Object[]{stringBuffer, "Mobile "});
    }

    public static String m4108a(Context context, String str) {
        File externalCacheDir;
        String str2 = null;
        if ("mounted".equals(Environment.getExternalStorageState())) {
            externalCacheDir = context.getExternalCacheDir();
            if (externalCacheDir != null) {
                str2 = externalCacheDir.getPath();
            }
        }
        if (str2 == null) {
            externalCacheDir = context.getCacheDir();
            if (externalCacheDir != null && externalCacheDir.exists()) {
                str2 = externalCacheDir.getPath();
            }
        }
        return str2 + File.separator + str;
    }

    public static long m4104a(File file) {
        try {
            StatFs statFs = new StatFs(file.getPath());
            return ((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize());
        } catch (Throwable th) {
            ProGuard.m4101a(th.getMessage(), th);
            return -1;
        }
    }

    public static boolean m4111a(HttpResponse httpResponse) {
        if (httpResponse == null) {
            return false;
        }
        Header firstHeader = httpResponse.getFirstHeader("Accept-Ranges");
        if (firstHeader != null) {
            return "bytes".equals(firstHeader.getValue());
        }
        firstHeader = httpResponse.getFirstHeader("Content-Range");
        if (firstHeader == null) {
            return false;
        }
        String value = firstHeader.getValue();
        if (value == null || !value.startsWith("bytes")) {
            return false;
        }
        return true;
    }

    public static String m4112b(HttpResponse httpResponse) {
        if (httpResponse == null) {
            return null;
        }
        Header firstHeader = httpResponse.getFirstHeader("Content-Disposition");
        if (firstHeader == null) {
            return null;
        }
        for (HeaderElement parameterByName : firstHeader.getElements()) {
            NameValuePair parameterByName2 = parameterByName.getParameterByName("filename");
            if (parameterByName2 != null) {
                String value = parameterByName2.getValue();
                return ProGuard.m4090a(value, "UTF-8", value.length());
            }
        }
        return null;
    }

    public static Charset m4110a(HttpRequestBase httpRequestBase) {
        boolean z = false;
        if (httpRequestBase == null) {
            return null;
        }
        String value;
        Header firstHeader = httpRequestBase.getFirstHeader("Content-Type");
        if (firstHeader != null) {
            HeaderElement[] elements = firstHeader.getElements();
            int length = elements.length;
            for (int i = z; i < length; i++) {
                NameValuePair parameterByName = elements[i].getParameterByName("charset");
                if (parameterByName != null) {
                    value = parameterByName.getValue();
                    break;
                }
            }
        }
        value = null;
        if (!TextUtils.isEmpty(value)) {
            try {
                z = Charset.isSupported(value);
            } catch (Throwable th) {
            }
        }
        if (z) {
            return Charset.forName(value);
        }
        return null;
    }

    public static long m4105a(String str, String str2) {
        long j = 0;
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        int length = str.length();
        if (length < 100) {
            return (long) str.getBytes(str2).length;
        }
        for (int i = 0; i < length; i += 100) {
            int i2 = i + 100;
            if (i2 >= length) {
                i2 = length;
            }
            j += (long) ProGuard.m4109a(str, i, i2).getBytes(str2).length;
        }
        return j;
    }

    public static String m4109a(String str, int i, int i2) {
        return new String(str.substring(i, i2));
    }

    public static StackTraceElement m4106a() {
        return Thread.currentThread().getStackTrace()[4];
    }

    public static void m4113b() {
        if (f2822a == null) {
            TrustManager[] trustManagerArr = new TrustManager[]{new ProGuard()};
            try {
                SSLContext instance = SSLContext.getInstance("TLS");
                instance.init(null, trustManagerArr, null);
                f2822a = instance.getSocketFactory();
            } catch (Throwable th) {
                ProGuard.m4101a(th.getMessage(), th);
            }
        }
        if (f2822a != null) {
            HttpsURLConnection.setDefaultSSLSocketFactory(f2822a);
            HttpsURLConnection.setDefaultHostnameVerifier(org.apache.http.conn.ssl.SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
        }
    }
}
