package cn.sharesdk.framework.network;

import android.text.TextUtils;
import cn.sharesdk.framework.ShareSDK;
import java.util.ArrayList;

/* renamed from: cn.sharesdk.framework.network.i */
public class C0038i extends C0037h {
    private static C0038i f1984c;

    static {
        f1984c = null;
    }

    private C0038i() {
    }

    public static C0038i m3018a() {
        if (f1984c == null) {
            f1984c = new C0038i();
        }
        return f1984c;
    }

    private void m3019a(String str, int i) {
        if (!TextUtils.isEmpty(str) && i > 0) {
            ShareSDK.logApiEvent(str, i);
        }
    }

    public String m3020a(String str, ArrayList<C0034e<String>> arrayList, C0034e<String> c0034e, String str2, int i) {
        return m3021a(str, (ArrayList) arrayList, (C0034e) c0034e, null, str2, i);
    }

    public String m3021a(String str, ArrayList<C0034e<String>> arrayList, C0034e<String> c0034e, ArrayList<C0034e<String>> arrayList2, String str2, int i) {
        return m3022a(str, arrayList, c0034e, arrayList2, null, str2, i);
    }

    public String m3022a(String str, ArrayList<C0034e<String>> arrayList, C0034e<String> c0034e, ArrayList<C0034e<String>> arrayList2, ArrayList<C0034e<?>> arrayList3, String str2, int i) {
        m3019a(str2, i);
        return super.m3014a(str, arrayList, c0034e, arrayList2, arrayList3);
    }

    public String m3023a(String str, ArrayList<C0034e<String>> arrayList, String str2, int i) {
        return m3024a(str, (ArrayList) arrayList, null, null, str2, i);
    }

    public String m3024a(String str, ArrayList<C0034e<String>> arrayList, ArrayList<C0034e<String>> arrayList2, ArrayList<C0034e<?>> arrayList3, String str2, int i) {
        m3019a(str2, i);
        return super.m3015a(str, (ArrayList) arrayList, (ArrayList) arrayList2, (ArrayList) arrayList3);
    }

    public void m3025a(String str, ArrayList<C0034e<String>> arrayList, C0031d c0031d, RawNetworkCallback rawNetworkCallback, String str2, int i) {
        m3019a(str2, i);
        super.m3016a(str, (ArrayList) arrayList, c0031d, rawNetworkCallback);
    }

    public String m3026b(String str, ArrayList<C0034e<String>> arrayList, C0034e<String> c0034e, ArrayList<C0034e<String>> arrayList2, ArrayList<C0034e<?>> arrayList3, String str2, int i) {
        m3019a(str2, i);
        return super.m3017b(str, arrayList, c0034e, arrayList2, arrayList3);
    }

    public String m3027b(String str, ArrayList<C0034e<String>> arrayList, String str2, int i) {
        return m3020a(str, arrayList, null, str2, i);
    }
}
