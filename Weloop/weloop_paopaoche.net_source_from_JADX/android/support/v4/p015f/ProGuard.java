package android.support.v4.p015f;

import java.util.Map;

/* renamed from: android.support.v4.f.b */
class ProGuard extends ProGuard<K, V> {
    final /* synthetic */ ProGuard f332a;

    ProGuard(ProGuard proGuard) {
        this.f332a = proGuard;
    }

    protected int m486a() {
        return this.f332a.h;
    }

    protected Object m488a(int i, int i2) {
        return this.f332a.g[(i << 1) + i2];
    }

    protected int m487a(Object obj) {
        return this.f332a.m458a(obj);
    }

    protected int m492b(Object obj) {
        return this.f332a.m462b(obj);
    }

    protected Map<K, V> m493b() {
        return this.f332a;
    }

    protected void m491a(K k, V v) {
        this.f332a.put(k, v);
    }

    protected V m489a(int i, V v) {
        return this.f332a.m460a(i, (Object) v);
    }

    protected void m490a(int i) {
        this.f332a.m465d(i);
    }

    protected void m494c() {
        this.f332a.clear();
    }
}
