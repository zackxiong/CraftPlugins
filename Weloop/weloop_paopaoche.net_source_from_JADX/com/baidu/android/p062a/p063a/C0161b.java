package com.baidu.android.p062a.p063a;

import android.annotation.SuppressLint;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.baidu.android.a.a.b */
public class C0161b {
    @SuppressLint({"UseSparseArrays"})
    private static final Map<Integer, String> f2857a;
    private Map<String, String> f2858b;
    private StringBuilder f2859c;
    private int f2860d;
    private String f2861e;

    static {
        f2857a = new HashMap();
        f2857a.put(Integer.valueOf(200), "OK");
        f2857a.put(Integer.valueOf(404), "Page Not Found");
        f2857a.put(Integer.valueOf(500), "Intenal Error");
    }

    public C0161b() {
        this.f2858b = new HashMap();
        this.f2859c = new StringBuilder();
        this.f2860d = 404;
        this.f2861e = "HTTP/1.1";
        this.f2858b.put("Content-Type", "text/html");
        this.f2858b.put("Content-Encoding", "utf-8");
    }

    public Map<String, String> m4146a() {
        return this.f2858b;
    }

    public void m4147a(int i) {
        this.f2860d = i;
    }

    public void m4148a(String str) {
        this.f2858b.put("Content-Type", str);
    }

    public void m4149b(String str) {
        this.f2859c.append(str);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        String str = (String) f2857a.get(Integer.valueOf(this.f2860d));
        if (str == null) {
            str = "Unknown";
        }
        stringBuilder.append(this.f2861e + " " + this.f2860d + " " + str + "\r\n");
        this.f2858b.put("Content-Length", String.valueOf(this.f2859c.toString().getBytes().length));
        for (String str2 : this.f2858b.keySet()) {
            stringBuilder.append(str2 + ": " + ((String) this.f2858b.get(str2)) + "\r\n");
        }
        stringBuilder.append("\r\n" + this.f2859c.toString());
        return stringBuilder.toString();
    }
}
