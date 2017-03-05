package com.baidu.platform.comjni.engine;

import android.os.Handler;
import android.os.Message;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.baidu.platform.comjni.engine.a */
public class C0642a {
    private static final String f4903a;
    private static SparseArray<List<Handler>> f4904b;

    static {
        f4903a = C0642a.class.getSimpleName();
        f4904b = new SparseArray();
    }

    public static void m6618a() {
        synchronized (f4904b) {
            int size = f4904b.size();
            for (int i = 0; i < size; i++) {
                List list = (List) f4904b.get(f4904b.keyAt(i));
                if (list != null) {
                    list.clear();
                }
            }
            f4904b.clear();
        }
    }

    public static void m6619a(int i, int i2, int i3, int i4) {
        synchronized (f4904b) {
            List<Handler> list = (List) f4904b.get(i);
            if (!(list == null || list.isEmpty())) {
                for (Handler obtain : list) {
                    Message.obtain(obtain, i, i2, i3, Integer.valueOf(i4)).sendToTarget();
                }
            }
        }
    }

    public static void m6620a(int i, Handler handler) {
        synchronized (f4904b) {
            if (handler == null) {
                return;
            }
            List list = (List) f4904b.get(i);
            if (list == null) {
                list = new ArrayList();
                list.add(handler);
                f4904b.put(i, list);
            } else if (!list.contains(handler)) {
                list.add(handler);
            }
            return;
        }
    }

    public static void m6621b(int i, Handler handler) {
        synchronized (f4904b) {
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
                List list = (List) f4904b.get(i);
                if (list != null) {
                    list.remove(handler);
                }
            }
        }
    }
}
