package com.baidu.platform.comjni.map.favorite;

import android.os.Bundle;

/* renamed from: com.baidu.platform.comjni.map.favorite.a */
public class C0646a {
    private int f4914a;
    private JNIFavorite f4915b;

    /* renamed from: com.baidu.platform.comjni.map.favorite.a.a */
    public static class C0645a {
        public static boolean f4913a;

        static {
            f4913a = false;
        }

        private static void m6667b() {
            f4913a = true;
        }
    }

    public C0646a() {
        this.f4914a = 0;
        this.f4915b = null;
        this.f4915b = new JNIFavorite();
    }

    public int m6668a() {
        this.f4914a = this.f4915b.Create();
        return this.f4914a;
    }

    public int m6669a(Bundle bundle) {
        try {
            return this.f4915b.GetAll(this.f4914a, bundle);
        } catch (Throwable th) {
            return 0;
        }
    }

    public boolean m6670a(int i) {
        return this.f4915b.SetType(this.f4914a, i);
    }

    public boolean m6671a(String str) {
        return this.f4915b.Remove(this.f4914a, str);
    }

    public boolean m6672a(String str, String str2) {
        C0645a.m6667b();
        return this.f4915b.Add(this.f4914a, str, str2);
    }

    public boolean m6673a(String str, String str2, String str3, int i, int i2, int i3) {
        return this.f4915b.Load(this.f4914a, str, str2, str3, i, i2, i3);
    }

    public int m6674b() {
        return this.f4915b.Release(this.f4914a);
    }

    public String m6675b(String str) {
        try {
            return this.f4915b.GetValue(this.f4914a, str);
        } catch (Exception e) {
            return null;
        }
    }

    public boolean m6676b(String str, String str2) {
        C0645a.m6667b();
        return this.f4915b.Update(this.f4914a, str, str2);
    }

    public boolean m6677c() {
        return this.f4915b.Clear(this.f4914a);
    }

    public boolean m6678c(String str) {
        try {
            return this.f4915b.IsExist(this.f4914a, str);
        } catch (Throwable th) {
            return false;
        }
    }

    public boolean m6679d() {
        return this.f4915b.SaveCache(this.f4914a);
    }
}
