package com.tencent.mm.sdk.p106b;

import android.util.Log;
import com.tencent.mm.sdk.p106b.C0723a.C0722a;

/* renamed from: com.tencent.mm.sdk.b.b */
final class C0724b implements C0722a {
    C0724b() {
    }

    public final void m7150e(String str, String str2) {
        if (C0723a.level <= 2) {
            Log.i(str, str2);
        }
    }

    public final void m7151f(String str, String str2) {
        if (C0723a.level <= 1) {
            Log.d(str, str2);
        }
    }

    public final void m7152g(String str, String str2) {
        if (C0723a.level <= 3) {
            Log.w(str, str2);
        }
    }

    public final int m7153h() {
        return C0723a.level;
    }

    public final void m7154h(String str, String str2) {
        if (C0723a.level <= 4) {
            Log.e(str, str2);
        }
    }
}
