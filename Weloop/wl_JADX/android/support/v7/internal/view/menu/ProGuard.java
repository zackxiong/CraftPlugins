package android.support.v7.internal.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnKeyListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.PopupWindow.OnDismissListener;
import java.util.ArrayList;

/* renamed from: android.support.v7.internal.view.menu.l */
public class ProGuard implements ProGuard, OnKeyListener, OnGlobalLayoutListener, OnItemClickListener, OnDismissListener {
    static final int f1008a;
    boolean f1009b;
    private final Context f1010c;
    private final LayoutInflater f1011d;
    private final ProGuard f1012e;
    private final ProGuard f1013f;
    private final boolean f1014g;
    private final int f1015h;
    private final int f1016i;
    private final int f1017j;
    private View f1018k;
    private android.support.v7.widget.ProGuard f1019l;
    private ViewTreeObserver f1020m;
    private ProGuard f1021n;
    private ViewGroup f1022o;
    private boolean f1023p;
    private int f1024q;
    private int f1025r;

    /* renamed from: android.support.v7.internal.view.menu.l.a */
    private class ProGuard extends BaseAdapter {
        final /* synthetic */ ProGuard f1005a;
        private ProGuard f1006b;
        private int f1007c;

        public /* synthetic */ Object getItem(int i) {
            return m2098a(i);
        }

        public ProGuard(ProGuard proGuard, ProGuard proGuard2) {
            this.f1005a = proGuard;
            this.f1007c = -1;
            this.f1006b = proGuard2;
            m2099a();
        }

        public int getCount() {
            ArrayList l = this.f1005a.f1014g ? this.f1006b.m2041l() : this.f1006b.m2038i();
            if (this.f1007c < 0) {
                return l.size();
            }
            return l.size() - 1;
        }

        public ProGuard m2098a(int i) {
            ArrayList l = this.f1005a.f1014g ? this.f1006b.m2041l() : this.f1006b.m2038i();
            if (this.f1007c >= 0 && i >= this.f1007c) {
                i++;
            }
            return (ProGuard) l.get(i);
        }

        public long getItemId(int i) {
            return (long) i;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            View inflate;
            if (view == null) {
                inflate = this.f1005a.f1011d.inflate(ProGuard.f1008a, viewGroup, false);
            } else {
                inflate = view;
            }
            ProGuard proGuard = (ProGuard) inflate;
            if (this.f1005a.f1009b) {
                ((ListMenuItemView) inflate).setForceShowIcon(true);
            }
            proGuard.m1926a(m2098a(i), 0);
            return inflate;
        }

        void m2099a() {
            ProGuard r = this.f1005a.f1012e.m2047r();
            if (r != null) {
                ArrayList l = this.f1005a.f1012e.m2041l();
                int size = l.size();
                for (int i = 0; i < size; i++) {
                    if (((ProGuard) l.get(i)) == r) {
                        this.f1007c = i;
                        return;
                    }
                }
            }
            this.f1007c = -1;
        }

        public void notifyDataSetChanged() {
            m2099a();
            super.notifyDataSetChanged();
        }
    }

    static {
        f1008a = android.support.v7.appcompat.ProGuard.layout.abc_popup_menu_item_layout;
    }

    public ProGuard(Context context, ProGuard proGuard, View view) {
        this(context, proGuard, view, false, android.support.v7.appcompat.ProGuard.attr.popupMenuStyle);
    }

    public ProGuard(Context context, ProGuard proGuard, View view, boolean z, int i) {
        this(context, proGuard, view, z, i, 0);
    }

    public ProGuard(Context context, ProGuard proGuard, View view, boolean z, int i, int i2) {
        this.f1025r = 0;
        this.f1010c = context;
        this.f1011d = LayoutInflater.from(context);
        this.f1012e = proGuard;
        this.f1013f = new ProGuard(this, this.f1012e);
        this.f1014g = z;
        this.f1016i = i;
        this.f1017j = i2;
        Resources resources = context.getResources();
        this.f1015h = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(android.support.v7.appcompat.ProGuard.dimen.abc_config_prefDialogWidth));
        this.f1018k = view;
        proGuard.m2017a((ProGuard) this, context);
    }

    public void m2109a(View view) {
        this.f1018k = view;
    }

    public void m2110a(boolean z) {
        this.f1009b = z;
    }

    public void m2105a(int i) {
        this.f1025r = i;
    }

    public void m2104a() {
        if (!m2117d()) {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
    }

    public android.support.v7.widget.ProGuard m2116c() {
        return this.f1019l;
    }

    public boolean m2117d() {
        boolean z = false;
        this.f1019l = new android.support.v7.widget.ProGuard(this.f1010c, null, this.f1016i, this.f1017j);
        this.f1019l.m2280a((OnDismissListener) this);
        this.f1019l.m2278a((OnItemClickListener) this);
        this.f1019l.m2279a(this.f1013f);
        this.f1019l.m2281a(true);
        View view = this.f1018k;
        if (view == null) {
            return false;
        }
        if (this.f1020m == null) {
            z = true;
        }
        this.f1020m = view.getViewTreeObserver();
        if (z) {
            this.f1020m.addOnGlobalLayoutListener(this);
        }
        this.f1019l.m2277a(view);
        this.f1019l.m2282b(this.f1025r);
        if (!this.f1023p) {
            this.f1024q = m2103g();
            this.f1023p = true;
        }
        this.f1019l.m2287d(this.f1024q);
        this.f1019l.m2289e(2);
        this.f1019l.m2284c();
        this.f1019l.m2291g().setOnKeyListener(this);
        return true;
    }

    public void m2118e() {
        if (m2119f()) {
            this.f1019l.m2274a();
        }
    }

    public void onDismiss() {
        this.f1019l = null;
        this.f1012e.close();
        if (this.f1020m != null) {
            if (!this.f1020m.isAlive()) {
                this.f1020m = this.f1018k.getViewTreeObserver();
            }
            this.f1020m.removeGlobalOnLayoutListener(this);
            this.f1020m = null;
        }
    }

    public boolean m2119f() {
        return this.f1019l != null && this.f1019l.m2283b();
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        ProGuard proGuard = this.f1013f;
        proGuard.f1006b.m2022a(proGuard.m2098a(i), 0);
    }

    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i != 82) {
            return false;
        }
        m2118e();
        return true;
    }

    private int m2103g() {
        ListAdapter listAdapter = this.f1013f;
        int makeMeasureSpec = MeasureSpec.makeMeasureSpec(0, 0);
        int makeMeasureSpec2 = MeasureSpec.makeMeasureSpec(0, 0);
        int count = listAdapter.getCount();
        int i = 0;
        int i2 = 0;
        View view = null;
        int i3 = 0;
        while (i < count) {
            View view2;
            int itemViewType = listAdapter.getItemViewType(i);
            if (itemViewType != i2) {
                i2 = itemViewType;
                view2 = null;
            } else {
                view2 = view;
            }
            if (this.f1022o == null) {
                this.f1022o = new FrameLayout(this.f1010c);
            }
            view = listAdapter.getView(i, view2, this.f1022o);
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            itemViewType = view.getMeasuredWidth();
            if (itemViewType >= this.f1015h) {
                return this.f1015h;
            }
            if (itemViewType <= i3) {
                itemViewType = i3;
            }
            i++;
            i3 = itemViewType;
        }
        return i3;
    }

    public void onGlobalLayout() {
        if (m2119f()) {
            View view = this.f1018k;
            if (view == null || !view.isShown()) {
                m2118e();
            } else if (m2119f()) {
                this.f1019l.m2284c();
            }
        }
    }

    public void m2106a(Context context, ProGuard proGuard) {
    }

    public void m2113b(boolean z) {
        this.f1023p = false;
        if (this.f1013f != null) {
            this.f1013f.notifyDataSetChanged();
        }
    }

    public void m2108a(ProGuard proGuard) {
        this.f1021n = proGuard;
    }

    public boolean m2112a(ProGuard proGuard) {
        if (proGuard.hasVisibleItems()) {
            boolean z;
            ProGuard proGuard2 = new ProGuard(this.f1010c, proGuard, this.f1018k);
            proGuard2.m2108a(this.f1021n);
            int size = proGuard.size();
            for (int i = 0; i < size; i++) {
                MenuItem item = proGuard.getItem(i);
                if (item.isVisible() && item.getIcon() != null) {
                    z = true;
                    break;
                }
            }
            z = false;
            proGuard2.m2110a(z);
            if (proGuard2.m2117d()) {
                if (this.f1021n == null) {
                    return true;
                }
                this.f1021n.m1740a(proGuard);
                return true;
            }
        }
        return false;
    }

    public void m2107a(ProGuard proGuard, boolean z) {
        if (proGuard == this.f1012e) {
            m2118e();
            if (this.f1021n != null) {
                this.f1021n.m1739a(proGuard, z);
            }
        }
    }

    public boolean m2114b() {
        return false;
    }

    public boolean m2111a(ProGuard proGuard, ProGuard proGuard2) {
        return false;
    }

    public boolean m2115b(ProGuard proGuard, ProGuard proGuard2) {
        return false;
    }
}
