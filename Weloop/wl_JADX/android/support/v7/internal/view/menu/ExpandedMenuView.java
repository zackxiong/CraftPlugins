package android.support.v7.internal.view.menu;

import android.content.Context;
import android.support.v7.internal.view.menu.ProGuard.ProGuard;
import android.support.v7.internal.widget.ac;
import android.util.AttributeSet;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;

/* compiled from: ProGuard */
public final class ExpandedMenuView extends ListView implements ProGuard, ProGuard, OnItemClickListener {
    private static final int[] f886a;
    private ProGuard f887b;
    private int f888c;

    static {
        f886a = new int[]{16842964, 16843049};
    }

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842868);
    }

    public ExpandedMenuView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        ac a = ac.m2328a(context, attributeSet, f886a, i, 0);
        if (a.m2343e(0)) {
            setBackgroundDrawable(a.m2332a(0));
        }
        if (a.m2343e(1)) {
            setDivider(a.m2332a(1));
        }
        a.m2336b();
    }

    public void m1941a(ProGuard proGuard) {
        this.f887b = proGuard;
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    public boolean m1942a(ProGuard proGuard) {
        return this.f887b.m2022a((MenuItem) proGuard, 0);
    }

    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        m1942a((ProGuard) getAdapter().getItem(i));
    }

    public int getWindowAnimations() {
        return this.f888c;
    }
}
