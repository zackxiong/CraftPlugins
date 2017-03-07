package android.support.v4.view;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;

/* compiled from: ProGuard */
public abstract class ag {
    private DataSetObservable f31a;

    public abstract boolean m65a(View view, Object obj);

    public abstract int m66b();

    public ag() {
        this.f31a = new DataSetObservable();
    }

    public void m63a(ViewGroup viewGroup) {
        m61a((View) viewGroup);
    }

    public Object m58a(ViewGroup viewGroup, int i) {
        return m57a((View) viewGroup, i);
    }

    public void m64a(ViewGroup viewGroup, int i, Object obj) {
        m62a((View) viewGroup, i, obj);
    }

    public void m71b(ViewGroup viewGroup, int i, Object obj) {
        m69b((View) viewGroup, i, obj);
    }

    public void m70b(ViewGroup viewGroup) {
        m68b((View) viewGroup);
    }

    public void m61a(View view) {
    }

    public Object m57a(View view, int i) {
        throw new UnsupportedOperationException("Required method instantiateItem was not overridden");
    }

    public void m62a(View view, int i, Object obj) {
        throw new UnsupportedOperationException("Required method destroyItem was not overridden");
    }

    public void m69b(View view, int i, Object obj) {
    }

    public void m68b(View view) {
    }

    public Parcelable m56a() {
        return null;
    }

    public void m60a(Parcelable parcelable, ClassLoader classLoader) {
    }

    public int m55a(Object obj) {
        return -1;
    }

    public void m73c() {
        this.f31a.notifyChanged();
    }

    public void m59a(DataSetObserver dataSetObserver) {
        this.f31a.registerObserver(dataSetObserver);
    }

    public void m67b(DataSetObserver dataSetObserver) {
        this.f31a.unregisterObserver(dataSetObserver);
    }

    public float m72c(int i) {
        return 1.0f;
    }
}
