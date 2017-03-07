package com.baidu.mapapi.map;

import android.graphics.Point;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* renamed from: com.baidu.mapapi.map.i */
class C0574i<T extends C0563a> {
    private final C0569d f4503a;
    private final int f4504b;
    private List<T> f4505c;
    private List<C0574i<T>> f4506d;

    /* renamed from: com.baidu.mapapi.map.i.a */
    static abstract class C0563a {
        C0563a() {
        }

        abstract Point m6280a();
    }

    private C0574i(double d, double d2, double d3, double d4, int i) {
        this(new C0569d(d, d2, d3, d4), i);
    }

    public C0574i(C0569d c0569d) {
        this(c0569d, 0);
    }

    private C0574i(C0569d c0569d, int i) {
        this.f4506d = null;
        this.f4503a = c0569d;
        this.f4504b = i;
    }

    private void m6345a() {
        this.f4506d = new ArrayList(4);
        this.f4506d.add(new C0574i(this.f4503a.f4490a, this.f4503a.f4494e, this.f4503a.f4491b, this.f4503a.f4495f, this.f4504b + 1));
        this.f4506d.add(new C0574i(this.f4503a.f4494e, this.f4503a.f4492c, this.f4503a.f4491b, this.f4503a.f4495f, this.f4504b + 1));
        this.f4506d.add(new C0574i(this.f4503a.f4490a, this.f4503a.f4494e, this.f4503a.f4495f, this.f4503a.f4493d, this.f4504b + 1));
        this.f4506d.add(new C0574i(this.f4503a.f4494e, this.f4503a.f4492c, this.f4503a.f4495f, this.f4503a.f4493d, this.f4504b + 1));
        List<C0563a> list = this.f4505c;
        this.f4505c = null;
        for (C0563a c0563a : list) {
            m6346a((double) c0563a.m6280a().x, (double) c0563a.m6280a().y, c0563a);
        }
    }

    private void m6346a(double d, double d2, T t) {
        if (this.f4506d == null) {
            if (this.f4505c == null) {
                this.f4505c = new ArrayList();
            }
            this.f4505c.add(t);
            if (this.f4505c.size() > 40 && this.f4504b < 40) {
                m6345a();
            }
        } else if (d2 < this.f4503a.f4495f) {
            if (d < this.f4503a.f4494e) {
                ((C0574i) this.f4506d.get(0)).m6346a(d, d2, t);
            } else {
                ((C0574i) this.f4506d.get(1)).m6346a(d, d2, t);
            }
        } else if (d < this.f4503a.f4494e) {
            ((C0574i) this.f4506d.get(2)).m6346a(d, d2, t);
        } else {
            ((C0574i) this.f4506d.get(3)).m6346a(d, d2, t);
        }
    }

    private void m6347a(C0569d c0569d, Collection<T> collection) {
        if (!this.f4503a.m6325a(c0569d)) {
            return;
        }
        if (this.f4506d != null) {
            for (C0574i a : this.f4506d) {
                a.m6347a(c0569d, collection);
            }
        } else if (this.f4505c == null) {
        } else {
            if (c0569d.m6326b(this.f4503a)) {
                collection.addAll(this.f4505c);
                return;
            }
            for (C0563a c0563a : this.f4505c) {
                if (c0569d.m6324a(c0563a.m6280a())) {
                    collection.add(c0563a);
                }
            }
        }
    }

    public Collection<T> m6348a(C0569d c0569d) {
        Collection<T> arrayList = new ArrayList();
        m6347a(c0569d, arrayList);
        return arrayList;
    }

    public void m6349a(T t) {
        Point a = t.m6280a();
        if (this.f4503a.m6322a((double) a.x, (double) a.y)) {
            m6346a((double) a.x, (double) a.y, t);
        }
    }
}
