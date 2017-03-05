package com.baidu.platform.comjni.map.basemap;

import android.os.Bundle;
import android.util.SparseArray;

public class BaseMapCallback {
    private static SparseArray<C0619b> f4905a;

    static {
        f4905a = new SparseArray();
    }

    public static int ReqLayerData(Bundle bundle, int i, int i2, Bundle bundle2) {
        int size = f4905a.size();
        for (int i3 = 0; i3 < size; i3++) {
            C0619b c0619b = (C0619b) f4905a.valueAt(i3);
            if (c0619b != null && c0619b.m6503a(i)) {
                return c0619b.m6502a(bundle, i, i2, bundle2);
            }
        }
        return 0;
    }

    public static void addLayerDataInterface(int i, C0619b c0619b) {
        f4905a.put(i, c0619b);
    }

    public static void removeLayerDataInterface(int i) {
        f4905a.remove(i);
    }
}
