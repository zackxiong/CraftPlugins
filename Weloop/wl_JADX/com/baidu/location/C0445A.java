package com.baidu.location;

/* renamed from: com.baidu.location.A */
public final class C0445A {
    public static Object m5490a(Object obj) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException("null reference");
    }

    public static Object m5491a(Object obj, Object obj2) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(String.valueOf(obj2));
    }

    public static void m5492a(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }

    public static void m5493a(boolean z, Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    public static void m5494a(boolean z, String str, Object[] objArr) {
        if (!z) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    public static void m5495if(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    public static void m5496if(boolean z, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }
}
