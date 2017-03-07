package cn.sharesdk.framework.utils;

import android.text.TextUtils;
import android.util.Xml;
import java.util.HashMap;
import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;

/* renamed from: cn.sharesdk.framework.utils.n */
public class C0084n {

    /* renamed from: cn.sharesdk.framework.utils.n.a */
    private static class C0083a extends DefaultHandler {
        private HashMap<String, Object> f2128a;
        private HashMap<String, Object> f2129b;

        public C0083a() {
            this.f2128a = new HashMap();
        }

        public HashMap<String, Object> m3303a() {
            return this.f2128a;
        }

        public void characters(char[] cArr, int i, int i2) {
            CharSequence trim = String.valueOf(cArr, i, i2).trim();
            if (!TextUtils.isEmpty(trim) && this.f2129b != null) {
                this.f2129b.put("value", trim);
            }
        }

        public void endElement(String str, String str2, String str3) {
            this.f2129b = null;
        }

        public void startElement(String str, String str2, String str3, Attributes attributes) {
            if (this.f2129b != null) {
                HashMap hashMap = new HashMap();
                this.f2129b.put(str2, hashMap);
                this.f2129b = hashMap;
            } else {
                this.f2129b = new HashMap();
                this.f2128a.put(str2, this.f2129b);
            }
            int length = attributes.getLength();
            for (int i = 0; i < length; i++) {
                this.f2129b.put(attributes.getLocalName(i), attributes.getValue(i));
            }
        }
    }

    public HashMap<String, Object> m3304a(String str) {
        Object c0083a = new C0083a();
        Xml.parse(str, c0083a);
        return c0083a.m3303a();
    }
}
