package com.baidu.android.p062a.p063a;

import java.net.URLDecoder;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

/* renamed from: com.baidu.android.a.a.a */
public class C0160a {
    private int f2853a;
    private Map<String, String> f2854b;
    private Map<String, String> f2855c;
    private byte[] f2856d;

    public C0160a() {
        this.f2853a = -1;
        this.f2854b = new HashMap();
        this.f2855c = new HashMap();
    }

    public C0160a(String str) {
        this.f2853a = -1;
        this.f2854b = new HashMap();
        this.f2855c = new HashMap();
        if (str != null) {
            String[] split = str.split("\r\n");
            if (split.length >= 2) {
                String[] split2 = split[0].split(" ");
                if (split2.length >= 2) {
                    this.f2853a = C0162c.m4150a(split2[0]);
                    String str2 = split2[1];
                    if (str2 != null) {
                        this.f2854b.put("URI", str2);
                        int indexOf = str2.indexOf("?");
                        try {
                            int i;
                            this.f2855c = new HashMap();
                            if (indexOf != -1) {
                                for (String decode : str2.substring(indexOf + 1).split("&")) {
                                    String decode2 = URLDecoder.decode(decode2, "utf-8");
                                    int indexOf2 = decode2.indexOf("=");
                                    if (indexOf2 > 0 && indexOf2 != decode2.length() - 1) {
                                        this.f2855c.put(decode2.substring(0, indexOf2), decode2.substring(indexOf2 + 1));
                                    }
                                }
                            }
                            for (i = 1; i < split.length; i++) {
                                String[] split3 = split[i].split(": ");
                                if (split3.length >= 2) {
                                    split3[0] = split3[0].trim();
                                    split3[1] = split3[1].trim();
                                    this.f2854b.put(split3[0], split3[1]);
                                }
                            }
                        } catch (Exception e) {
                        }
                    }
                }
            }
        }
    }

    public String m4143a(String str) {
        return (String) this.f2854b.get(str);
    }

    public Map<String, String> m4144a() {
        return this.f2855c;
    }

    public void m4145a(byte[] bArr) {
        this.f2856d = bArr;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        for (Entry entry : this.f2854b.entrySet()) {
            stringBuilder.append(((String) entry.getKey()) + " : " + ((String) entry.getValue()) + "\n");
        }
        if (this.f2856d != null) {
            stringBuilder.append(new String(this.f2856d));
        }
        return stringBuilder.toString();
    }
}
