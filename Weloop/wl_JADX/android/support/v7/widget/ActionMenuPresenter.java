package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v7.internal.view.menu.ActionMenuItemView;
import android.support.v7.internal.widget.TintImageView;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import java.util.ArrayList;

/* compiled from: ProGuard */
public class ActionMenuPresenter extends android.support.v7.internal.view.menu.ProGuard implements android.support.v4.view.ProGuard.ProGuard {
    final ProGuard f1381g;
    int f1382h;
    private View f1383i;
    private boolean f1384j;
    private boolean f1385k;
    private int f1386l;
    private int f1387m;
    private int f1388n;
    private boolean f1389o;
    private boolean f1390p;
    private boolean f1391q;
    private boolean f1392r;
    private int f1393s;
    private final SparseBooleanArray f1394t;
    private View f1395u;
    private ProGuard f1396v;
    private ProGuard f1397w;
    private ProGuard f1398x;
    private ProGuard f1399y;

    /* compiled from: ProGuard */
    private static class SavedState implements Parcelable {
        public static final Creator<SavedState> CREATOR;
        public int f1371a;

        SavedState() {
        }

        SavedState(Parcel parcel) {
            this.f1371a = parcel.readInt();
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f1371a);
        }

        static {
            CREATOR = new ProGuard();
        }
    }

    /* renamed from: android.support.v7.widget.ActionMenuPresenter.a */
    private class ProGuard extends android.support.v7.internal.view.menu.ProGuard {
        final /* synthetic */ ActionMenuPresenter f1372c;
        private android.support.v7.internal.view.menu.ProGuard f1373d;

        public ProGuard(ActionMenuPresenter actionMenuPresenter, Context context, android.support.v7.internal.view.menu.ProGuard proGuard) {
            boolean z = false;
            this.f1372c = actionMenuPresenter;
            super(context, proGuard, null, false, android.support.v7.appcompat.ProGuard.attr.actionOverflowMenuStyle);
            this.f1373d = proGuard;
            if (!((android.support.v7.internal.view.menu.ProGuard) proGuard.getItem()).m2075j()) {
                m2109a(actionMenuPresenter.f1383i == null ? (View) actionMenuPresenter.f : actionMenuPresenter.f1383i);
            }
            m2108a(actionMenuPresenter.f1381g);
            int size = proGuard.size();
            for (int i = 0; i < size; i++) {
                MenuItem item = proGuard.getItem(i);
                if (item.isVisible() && item.getIcon() != null) {
                    z = true;
                    break;
                }
            }
            m2110a(z);
        }

        public void onDismiss() {
            super.onDismiss();
            this.f1372c.f1397w = null;
            this.f1372c.f1382h = 0;
        }
    }

    /* renamed from: android.support.v7.widget.ActionMenuPresenter.b */
    private class ProGuard extends android.support.v7.internal.view.menu.ActionMenuItemView.ProGuard {
        final /* synthetic */ ActionMenuPresenter f1374a;

        private ProGuard(ActionMenuPresenter actionMenuPresenter) {
            this.f1374a = actionMenuPresenter;
        }

        public ProGuard m2491a() {
            return this.f1374a.f1397w != null ? this.f1374a.f1397w.m2116c() : null;
        }
    }

    /* renamed from: android.support.v7.widget.ActionMenuPresenter.c */
    private class ProGuard implements Runnable {
        final /* synthetic */ ActionMenuPresenter f1375a;
        private ProGuard f1376b;

        public ProGuard(ActionMenuPresenter actionMenuPresenter, ProGuard proGuard) {
            this.f1375a = actionMenuPresenter;
            this.f1376b = proGuard;
        }

        public void run() {
            this.f1375a.c.m2035f();
            View view = (View) this.f1375a.f;
            if (!(view == null || view.getWindowToken() == null || !this.f1376b.m2117d())) {
                this.f1375a.f1396v = this.f1376b;
            }
            this.f1375a.f1398x = null;
        }
    }

    /* renamed from: android.support.v7.widget.ActionMenuPresenter.d */
    private class ProGuard extends TintImageView implements android.support.v7.widget.ActionMenuView.ProGuard {
        final /* synthetic */ ActionMenuPresenter f1377a;
        private final float[] f1378b;

        public ProGuard(ActionMenuPresenter actionMenuPresenter, Context context) {
            this.f1377a = actionMenuPresenter;
            super(context, null, android.support.v7.appcompat.ProGuard.attr.actionOverflowButtonStyle);
            this.f1378b = new float[2];
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            setOnTouchListener(new ProGuard(this, this, actionMenuPresenter));
        }

        public boolean performClick() {
            if (!super.performClick()) {
                playSoundEffect(0);
                this.f1377a.m2524c();
            }
            return true;
        }

        public boolean m2492c() {
            return false;
        }

        public boolean m2493d() {
            return false;
        }

        protected boolean setFrame(int i, int i2, int i3, int i4) {
            boolean frame = super.setFrame(i, i2, i3, i4);
            Drawable drawable = getDrawable();
            Drawable background = getBackground();
            if (!(drawable == null || background == null)) {
                int width = getWidth();
                int height = getHeight();
                int max = Math.max(width, height) / 2;
                width = (width + (getPaddingLeft() - getPaddingRight())) / 2;
                height = (height + (getPaddingTop() - getPaddingBottom())) / 2;
                android.support.v4.p009b.p010a.ProGuard.m403a(background, width - max, height - max, width + max, height + max);
            }
            return frame;
        }
    }

    /* renamed from: android.support.v7.widget.ActionMenuPresenter.e */
    private class ProGuard extends android.support.v7.internal.view.menu.ProGuard {
        final /* synthetic */ ActionMenuPresenter f1379c;

        public ProGuard(ActionMenuPresenter actionMenuPresenter, Context context, android.support.v7.internal.view.menu.ProGuard proGuard, View view, boolean z) {
            this.f1379c = actionMenuPresenter;
            super(context, proGuard, view, z, android.support.v7.appcompat.ProGuard.attr.actionOverflowMenuStyle);
            m2105a(8388613);
            m2108a(actionMenuPresenter.f1381g);
        }

        public void onDismiss() {
            super.onDismiss();
            this.f1379c.c.close();
            this.f1379c.f1396v = null;
        }
    }

    /* renamed from: android.support.v7.widget.ActionMenuPresenter.f */
    private class ProGuard implements android.support.v7.internal.view.menu.ProGuard.ProGuard {
        final /* synthetic */ ActionMenuPresenter f1380a;

        private ProGuard(ActionMenuPresenter actionMenuPresenter) {
            this.f1380a = actionMenuPresenter;
        }

        public boolean m2495a(android.support.v7.internal.view.menu.ProGuard proGuard) {
            if (proGuard == null) {
                return false;
            }
            this.f1380a.f1382h = ((android.support.v7.internal.view.menu.ProGuard) proGuard).getItem().getItemId();
            android.support.v7.internal.view.menu.ProGuard.ProGuard a = this.f1380a.m1962a();
            return a != null ? a.m1740a(proGuard) : false;
        }

        public void m2494a(android.support.v7.internal.view.menu.ProGuard proGuard, boolean z) {
            if (proGuard instanceof android.support.v7.internal.view.menu.ProGuard) {
                ((android.support.v7.internal.view.menu.ProGuard) proGuard).m2129p().m2020a(false);
            }
            android.support.v7.internal.view.menu.ProGuard.ProGuard a = this.f1380a.m1962a();
            if (a != null) {
                a.m1739a(proGuard, z);
            }
        }
    }

    public ActionMenuPresenter(Context context) {
        super(context, android.support.v7.appcompat.ProGuard.layout.abc_action_menu_layout, android.support.v7.appcompat.ProGuard.layout.abc_action_menu_item_layout);
        this.f1394t = new SparseBooleanArray();
        this.f1381g = new ProGuard();
    }

    public void m2511a(Context context, android.support.v7.internal.view.menu.ProGuard proGuard) {
        super.m1966a(context, proGuard);
        Resources resources = context.getResources();
        android.support.v7.internal.view.ProGuard a = android.support.v7.internal.view.ProGuard.m1867a(context);
        if (!this.f1385k) {
            this.f1384j = a.m1869b();
        }
        if (!this.f1391q) {
            this.f1386l = a.m1870c();
        }
        if (!this.f1389o) {
            this.f1388n = a.m1868a();
        }
        int i = this.f1386l;
        if (this.f1384j) {
            if (this.f1383i == null) {
                this.f1383i = new ProGuard(this, this.a);
                int makeMeasureSpec = MeasureSpec.makeMeasureSpec(0, 0);
                this.f1383i.measure(makeMeasureSpec, makeMeasureSpec);
            }
            i -= this.f1383i.getMeasuredWidth();
        } else {
            this.f1383i = null;
        }
        this.f1387m = i;
        this.f1393s = (int) (56.0f * resources.getDisplayMetrics().density);
        this.f1395u = null;
    }

    public void m2512a(Configuration configuration) {
        if (!this.f1389o) {
            this.f1388n = this.b.getResources().getInteger(android.support.v7.appcompat.ProGuard.integer.abc_max_action_buttons);
        }
        if (this.c != null) {
            this.c.m2028b(true);
        }
    }

    public void m2510a(int i, boolean z) {
        this.f1386l = i;
        this.f1390p = z;
        this.f1391q = true;
    }

    public void m2523c(boolean z) {
        this.f1384j = z;
        this.f1385k = true;
    }

    public void m2520b(int i) {
        this.f1388n = i;
        this.f1389o = true;
    }

    public void m2525d(boolean z) {
        this.f1392r = z;
    }

    public android.support.v7.internal.view.menu.ProGuard m2508a(ViewGroup viewGroup) {
        android.support.v7.internal.view.menu.ProGuard a = super.m1963a(viewGroup);
        ((ActionMenuView) a).setPresenter(this);
        return a;
    }

    public View m2509a(android.support.v7.internal.view.menu.ProGuard proGuard, View view, ViewGroup viewGroup) {
        View actionView = proGuard.getActionView();
        if (actionView == null || proGuard.m2079n()) {
            actionView = super.m1964a(proGuard, view, viewGroup);
        }
        actionView.setVisibility(proGuard.isActionViewExpanded() ? 8 : 0);
        ActionMenuView actionMenuView = (ActionMenuView) viewGroup;
        LayoutParams layoutParams = actionView.getLayoutParams();
        if (!actionMenuView.checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(actionMenuView.m2541a(layoutParams));
        }
        return actionView;
    }

    public void m2514a(android.support.v7.internal.view.menu.ProGuard proGuard, android.support.v7.internal.view.menu.ProGuard.ProGuard proGuard2) {
        proGuard2.m1926a(proGuard, 0);
        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) proGuard2;
        actionMenuItemView.setItemInvoker((ActionMenuView) this.f);
        if (this.f1399y == null) {
            this.f1399y = new ProGuard();
        }
        actionMenuItemView.setPopupCallback(this.f1399y);
    }

    public boolean m2517a(int i, android.support.v7.internal.view.menu.ProGuard proGuard) {
        return proGuard.m2075j();
    }

    public void m2521b(boolean z) {
        int i;
        int i2 = 1;
        int i3 = 0;
        ViewGroup viewGroup = (ViewGroup) ((View) this.f).getParent();
        if (viewGroup != null) {
            android.support.v7.internal.p022c.ProGuard.m1866a(viewGroup);
        }
        super.m1976b(z);
        ((View) this.f).requestLayout();
        if (this.c != null) {
            ArrayList k = this.c.m2040k();
            int size = k.size();
            for (i = 0; i < size; i++) {
                android.support.v4.view.ProGuard a = ((android.support.v7.internal.view.menu.ProGuard) k.get(i)).m2057a();
                if (a != null) {
                    a.m1258a((android.support.v4.view.ProGuard.ProGuard) this);
                }
            }
        }
        ArrayList l = this.c != null ? this.c.m2041l() : null;
        if (this.f1384j && l != null) {
            i = l.size();
            if (i == 1) {
                int i4;
                if (((android.support.v7.internal.view.menu.ProGuard) l.get(0)).isActionViewExpanded()) {
                    i4 = 0;
                } else {
                    i4 = 1;
                }
                i3 = i4;
            } else {
                if (i <= 0) {
                    i2 = 0;
                }
                i3 = i2;
            }
        }
        if (i3 != 0) {
            if (this.f1383i == null) {
                this.f1383i = new ProGuard(this, this.a);
            }
            viewGroup = (ViewGroup) this.f1383i.getParent();
            if (viewGroup != this.f) {
                if (viewGroup != null) {
                    viewGroup.removeView(this.f1383i);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.f;
                actionMenuView.addView(this.f1383i, actionMenuView.m2550c());
            }
        } else if (this.f1383i != null && this.f1383i.getParent() == this.f) {
            ((ViewGroup) this.f).removeView(this.f1383i);
        }
        ((ActionMenuView) this.f).setOverflowReserved(this.f1384j);
    }

    public boolean m2519a(ViewGroup viewGroup, int i) {
        if (viewGroup.getChildAt(i) == this.f1383i) {
            return false;
        }
        return super.m1974a(viewGroup, i);
    }

    public boolean m2518a(android.support.v7.internal.view.menu.ProGuard proGuard) {
        if (!proGuard.hasVisibleItems()) {
            return false;
        }
        android.support.v7.internal.view.menu.ProGuard proGuard2 = proGuard;
        while (proGuard2.m2130s() != this.c) {
            proGuard2 = (android.support.v7.internal.view.menu.ProGuard) proGuard2.m2130s();
        }
        View a = m2500a(proGuard2.getItem());
        if (a == null) {
            if (this.f1383i == null) {
                return false;
            }
            a = this.f1383i;
        }
        this.f1382h = proGuard.getItem().getItemId();
        this.f1397w = new ProGuard(this, this.b, proGuard);
        this.f1397w.m2109a(a);
        this.f1397w.m2104a();
        super.m1973a(proGuard);
        return true;
    }

    private View m2500a(MenuItem menuItem) {
        ViewGroup viewGroup = (ViewGroup) this.f;
        if (viewGroup == null) {
            return null;
        }
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if ((childAt instanceof android.support.v7.internal.view.menu.ProGuard.ProGuard) && ((android.support.v7.internal.view.menu.ProGuard.ProGuard) childAt).getItemData() == menuItem) {
                return childAt;
            }
        }
        return null;
    }

    public boolean m2524c() {
        if (!this.f1384j || m2529g() || this.c == null || this.f == null || this.f1398x != null || this.c.m2041l().isEmpty()) {
            return false;
        }
        this.f1398x = new ProGuard(this, new ProGuard(this, this.b, this.c, this.f1383i, true));
        ((View) this.f).post(this.f1398x);
        super.m1973a(null);
        return true;
    }

    public boolean m2526d() {
        if (this.f1398x == null || this.f == null) {
            android.support.v7.internal.view.menu.ProGuard proGuard = this.f1396v;
            if (proGuard == null) {
                return false;
            }
            proGuard.m2118e();
            return true;
        }
        ((View) this.f).removeCallbacks(this.f1398x);
        this.f1398x = null;
        return true;
    }

    public boolean m2527e() {
        return m2526d() | m2528f();
    }

    public boolean m2528f() {
        if (this.f1397w == null) {
            return false;
        }
        this.f1397w.m2118e();
        return true;
    }

    public boolean m2529g() {
        return this.f1396v != null && this.f1396v.m2119f();
    }

    public boolean m2530h() {
        return this.f1398x != null || m2529g();
    }

    public boolean m2522b() {
        int i;
        ArrayList i2 = this.c.m2038i();
        int size = i2.size();
        int i3 = this.f1388n;
        int i4 = this.f1387m;
        int makeMeasureSpec = MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) this.f;
        int i5 = 0;
        int i6 = 0;
        Object obj = null;
        int i7 = 0;
        while (i7 < size) {
            android.support.v7.internal.view.menu.ProGuard proGuard = (android.support.v7.internal.view.menu.ProGuard) i2.get(i7);
            if (proGuard.m2077l()) {
                i5++;
            } else if (proGuard.m2076k()) {
                i6++;
            } else {
                obj = 1;
            }
            if (this.f1392r && proGuard.isActionViewExpanded()) {
                i = 0;
            } else {
                i = i3;
            }
            i7++;
            i3 = i;
        }
        if (this.f1384j && (r4 != null || i5 + i6 > i3)) {
            i3--;
        }
        i7 = i3 - i5;
        SparseBooleanArray sparseBooleanArray = this.f1394t;
        sparseBooleanArray.clear();
        i = 0;
        if (this.f1390p) {
            i = i4 / this.f1393s;
            i6 = ((i4 % this.f1393s) / i) + this.f1393s;
        } else {
            i6 = 0;
        }
        int i8 = 0;
        i3 = 0;
        int i9 = i;
        while (i8 < size) {
            proGuard = (android.support.v7.internal.view.menu.ProGuard) i2.get(i8);
            int i10;
            if (proGuard.m2077l()) {
                View a = m2509a(proGuard, this.f1395u, viewGroup);
                if (this.f1395u == null) {
                    this.f1395u = a;
                }
                if (this.f1390p) {
                    i9 -= ActionMenuView.m2536a(a, i6, i9, makeMeasureSpec, 0);
                } else {
                    a.measure(makeMeasureSpec, makeMeasureSpec);
                }
                i5 = a.getMeasuredWidth();
                i10 = i4 - i5;
                if (i3 != 0) {
                    i5 = i3;
                }
                i3 = proGuard.getGroupId();
                if (i3 != 0) {
                    sparseBooleanArray.put(i3, true);
                }
                proGuard.m2068d(true);
                i = i10;
                i3 = i7;
            } else if (proGuard.m2076k()) {
                boolean z;
                int groupId = proGuard.getGroupId();
                boolean z2 = sparseBooleanArray.get(groupId);
                boolean z3 = (i7 > 0 || z2) && i4 > 0 && (!this.f1390p || i9 > 0);
                if (z3) {
                    View a2 = m2509a(proGuard, this.f1395u, viewGroup);
                    if (this.f1395u == null) {
                        this.f1395u = a2;
                    }
                    boolean z4;
                    if (this.f1390p) {
                        int a3 = ActionMenuView.m2536a(a2, i6, i9, makeMeasureSpec, 0);
                        i10 = i9 - a3;
                        if (a3 == 0) {
                            i9 = 0;
                        } else {
                            z4 = z3;
                        }
                        i5 = i10;
                    } else {
                        a2.measure(makeMeasureSpec, makeMeasureSpec);
                        boolean z5 = z3;
                        i5 = i9;
                        z4 = z5;
                    }
                    i10 = a2.getMeasuredWidth();
                    i4 -= i10;
                    if (i3 == 0) {
                        i3 = i10;
                    }
                    if (this.f1390p) {
                        z = i9 & (i4 >= 0 ? 1 : 0);
                        i10 = i3;
                        i3 = i5;
                    } else {
                        z = i9 & (i4 + i3 > 0 ? 1 : 0);
                        i10 = i3;
                        i3 = i5;
                    }
                } else {
                    z = z3;
                    i10 = i3;
                    i3 = i9;
                }
                if (z && groupId != 0) {
                    sparseBooleanArray.put(groupId, true);
                    i9 = i7;
                } else if (z2) {
                    sparseBooleanArray.put(groupId, false);
                    i5 = i7;
                    for (i7 = 0; i7 < i8; i7++) {
                        android.support.v7.internal.view.menu.ProGuard proGuard2 = (android.support.v7.internal.view.menu.ProGuard) i2.get(i7);
                        if (proGuard2.getGroupId() == groupId) {
                            if (proGuard2.m2075j()) {
                                i5++;
                            }
                            proGuard2.m2068d(false);
                        }
                    }
                    i9 = i5;
                } else {
                    i9 = i7;
                }
                if (z) {
                    i9--;
                }
                proGuard.m2068d(z);
                i5 = i10;
                i = i4;
                int i11 = i3;
                i3 = i9;
                i9 = i11;
            } else {
                proGuard.m2068d(false);
                i5 = i3;
                i = i4;
                i3 = i7;
            }
            i8++;
            i4 = i;
            i7 = i3;
            i3 = i5;
        }
        return true;
    }

    public void m2513a(android.support.v7.internal.view.menu.ProGuard proGuard, boolean z) {
        m2527e();
        super.m1967a(proGuard, z);
    }

    public void m2516a(boolean z) {
        if (z) {
            super.m1973a(null);
        } else {
            this.c.m2020a(false);
        }
    }

    public void m2515a(ActionMenuView actionMenuView) {
        this.f = actionMenuView;
        actionMenuView.m2542a(this.c);
    }
}
