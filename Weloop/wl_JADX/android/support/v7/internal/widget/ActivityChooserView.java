package android.support.v7.internal.widget;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ak;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupWindow.OnDismissListener;
import android.widget.TextView;

/* compiled from: ProGuard */
public class ActivityChooserView extends ViewGroup {
    android.support.v4.view.ProGuard f1157a;
    private final ProGuard f1158b;
    private final ProGuard f1159c;
    private final android.support.v7.widget.ProGuard f1160d;
    private final FrameLayout f1161e;
    private final ImageView f1162f;
    private final FrameLayout f1163g;
    private final int f1164h;
    private final DataSetObserver f1165i;
    private final OnGlobalLayoutListener f1166j;
    private android.support.v7.widget.ProGuard f1167k;
    private OnDismissListener f1168l;
    private boolean f1169m;
    private int f1170n;
    private boolean f1171o;
    private int f1172p;

    /* compiled from: ProGuard */
    public static class InnerLayout extends android.support.v7.widget.ProGuard {
        private static final int[] f1149a;

        static {
            f1149a = new int[]{16842964};
        }

        public InnerLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            ac a = ac.m2327a(context, attributeSet, f1149a);
            setBackgroundDrawable(a.m2332a(0));
            a.m2336b();
        }
    }

    /* renamed from: android.support.v7.internal.widget.ActivityChooserView.a */
    private class ProGuard extends BaseAdapter {
        final /* synthetic */ ActivityChooserView f1150a;
        private ProGuard f1151b;
        private int f1152c;
        private boolean f1153d;
        private boolean f1154e;
        private boolean f1155f;

        public void m2233a(ProGuard proGuard) {
            ProGuard d = this.f1150a.f1158b.m2238d();
            if (d != null && this.f1150a.isShown()) {
                d.unregisterObserver(this.f1150a.f1165i);
            }
            this.f1151b = proGuard;
            if (proGuard != null && this.f1150a.isShown()) {
                proGuard.registerObserver(this.f1150a.f1165i);
            }
            notifyDataSetChanged();
        }

        public int getItemViewType(int i) {
            if (this.f1155f && i == getCount() - 1) {
                return 1;
            }
            return 0;
        }

        public int getViewTypeCount() {
            return 3;
        }

        public int getCount() {
            int a = this.f1151b.m2442a();
            if (!(this.f1153d || this.f1151b.m2446b() == null)) {
                a--;
            }
            a = Math.min(a, this.f1152c);
            if (this.f1155f) {
                return a + 1;
            }
            return a;
        }

        public Object getItem(int i) {
            switch (getItemViewType(i)) {
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_theme /*0*/:
                    if (!(this.f1153d || this.f1151b.m2446b() == null)) {
                        i++;
                    }
                    return this.f1151b.m2444a(i);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                    return null;
                default:
                    throw new IllegalArgumentException();
            }
        }

        public long getItemId(int i) {
            return (long) i;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            switch (getItemViewType(i)) {
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_theme /*0*/:
                    if (view == null || view.getId() != android.support.v7.appcompat.ProGuard.id.list_item) {
                        view = LayoutInflater.from(this.f1150a.getContext()).inflate(android.support.v7.appcompat.ProGuard.layout.abc_activity_chooser_view_list_item, viewGroup, false);
                    }
                    PackageManager packageManager = this.f1150a.getContext().getPackageManager();
                    ResolveInfo resolveInfo = (ResolveInfo) getItem(i);
                    ((ImageView) view.findViewById(android.support.v7.appcompat.ProGuard.id.icon)).setImageDrawable(resolveInfo.loadIcon(packageManager));
                    ((TextView) view.findViewById(android.support.v7.appcompat.ProGuard.id.title)).setText(resolveInfo.loadLabel(packageManager));
                    if (this.f1153d && i == 0 && this.f1154e) {
                        ak.m1026b(view, true);
                        return view;
                    }
                    ak.m1026b(view, false);
                    return view;
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                    if (view != null && view.getId() == 1) {
                        return view;
                    }
                    view = LayoutInflater.from(this.f1150a.getContext()).inflate(android.support.v7.appcompat.ProGuard.layout.abc_activity_chooser_view_list_item, viewGroup, false);
                    view.setId(1);
                    ((TextView) view.findViewById(android.support.v7.appcompat.ProGuard.id.title)).setText(this.f1150a.getContext().getString(android.support.v7.appcompat.ProGuard.string.abc_activity_chooser_view_see_all));
                    return view;
                default:
                    throw new IllegalArgumentException();
            }
        }

        public int m2231a() {
            int i = 0;
            int i2 = this.f1152c;
            this.f1152c = Integer.MAX_VALUE;
            int makeMeasureSpec = MeasureSpec.makeMeasureSpec(0, 0);
            int makeMeasureSpec2 = MeasureSpec.makeMeasureSpec(0, 0);
            int count = getCount();
            View view = null;
            int i3 = 0;
            while (i < count) {
                view = getView(i, view, null);
                view.measure(makeMeasureSpec, makeMeasureSpec2);
                i3 = Math.max(i3, view.getMeasuredWidth());
                i++;
            }
            this.f1152c = i2;
            return i3;
        }

        public void m2232a(int i) {
            if (this.f1152c != i) {
                this.f1152c = i;
                notifyDataSetChanged();
            }
        }

        public ResolveInfo m2236b() {
            return this.f1151b.m2446b();
        }

        public void m2234a(boolean z) {
            if (this.f1155f != z) {
                this.f1155f = z;
                notifyDataSetChanged();
            }
        }

        public int m2237c() {
            return this.f1151b.m2442a();
        }

        public ProGuard m2238d() {
            return this.f1151b;
        }

        public void m2235a(boolean z, boolean z2) {
            if (this.f1153d != z || this.f1154e != z2) {
                this.f1153d = z;
                this.f1154e = z2;
                notifyDataSetChanged();
            }
        }

        public boolean m2239e() {
            return this.f1153d;
        }
    }

    /* renamed from: android.support.v7.internal.widget.ActivityChooserView.b */
    private class ProGuard implements OnClickListener, OnLongClickListener, OnItemClickListener, OnDismissListener {
        final /* synthetic */ ActivityChooserView f1156a;

        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            switch (((ProGuard) adapterView.getAdapter()).getItemViewType(i)) {
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_theme /*0*/:
                    this.f1156a.m2252b();
                    if (!this.f1156a.f1169m) {
                        if (!this.f1156a.f1158b.m2239e()) {
                            i++;
                        }
                        Intent b = this.f1156a.f1158b.m2238d().m2445b(i);
                        if (b != null) {
                            b.addFlags(524288);
                            this.f1156a.getContext().startActivity(b);
                        }
                    } else if (i > 0) {
                        this.f1156a.f1158b.m2238d().m2447c(i);
                    }
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                    this.f1156a.m2242a(Integer.MAX_VALUE);
                default:
                    throw new IllegalArgumentException();
            }
        }

        public void onClick(View view) {
            if (view == this.f1156a.f1163g) {
                this.f1156a.m2252b();
                Intent b = this.f1156a.f1158b.m2238d().m2445b(this.f1156a.f1158b.m2238d().m2443a(this.f1156a.f1158b.m2236b()));
                if (b != null) {
                    b.addFlags(524288);
                    this.f1156a.getContext().startActivity(b);
                }
            } else if (view == this.f1156a.f1161e) {
                this.f1156a.f1169m = false;
                this.f1156a.m2242a(this.f1156a.f1170n);
            } else {
                throw new IllegalArgumentException();
            }
        }

        public boolean onLongClick(View view) {
            if (view == this.f1156a.f1163g) {
                if (this.f1156a.f1158b.getCount() > 0) {
                    this.f1156a.f1169m = true;
                    this.f1156a.m2242a(this.f1156a.f1170n);
                }
                return true;
            }
            throw new IllegalArgumentException();
        }

        public void onDismiss() {
            m2240a();
            if (this.f1156a.f1157a != null) {
                this.f1156a.f1157a.m1261a(false);
            }
        }

        private void m2240a() {
            if (this.f1156a.f1168l != null) {
                this.f1156a.f1168l.onDismiss();
            }
        }
    }

    public void setActivityChooserModel(ProGuard proGuard) {
        this.f1158b.m2233a(proGuard);
        if (m2253c()) {
            m2252b();
            m2251a();
        }
    }

    public void setExpandActivityOverflowButtonDrawable(Drawable drawable) {
        this.f1162f.setImageDrawable(drawable);
    }

    public void setExpandActivityOverflowButtonContentDescription(int i) {
        this.f1162f.setContentDescription(getContext().getString(i));
    }

    public void setProvider(android.support.v4.view.ProGuard proGuard) {
        this.f1157a = proGuard;
    }

    public boolean m2251a() {
        if (m2253c() || !this.f1171o) {
            return false;
        }
        this.f1169m = false;
        m2242a(this.f1170n);
        return true;
    }

    private void m2242a(int i) {
        if (this.f1158b.m2238d() == null) {
            throw new IllegalStateException("No data model. Did you call #setDataModel?");
        }
        getViewTreeObserver().addOnGlobalLayoutListener(this.f1166j);
        boolean z = this.f1163g.getVisibility() == 0;
        int c = this.f1158b.m2237c();
        int i2;
        if (z) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        if (i == Integer.MAX_VALUE || c <= r3 + i) {
            this.f1158b.m2234a(false);
            this.f1158b.m2232a(i);
        } else {
            this.f1158b.m2234a(true);
            this.f1158b.m2232a(i - 1);
        }
        android.support.v7.widget.ProGuard listPopupWindow = getListPopupWindow();
        if (!listPopupWindow.m2283b()) {
            if (this.f1169m || !z) {
                this.f1158b.m2235a(true, z);
            } else {
                this.f1158b.m2235a(false, false);
            }
            listPopupWindow.m2287d(Math.min(this.f1158b.m2231a(), this.f1164h));
            listPopupWindow.m2284c();
            if (this.f1157a != null) {
                this.f1157a.m1261a(true);
            }
            listPopupWindow.m2291g().setContentDescription(getContext().getString(android.support.v7.appcompat.ProGuard.string.abc_activitychooserview_choose_application));
        }
    }

    public boolean m2252b() {
        if (m2253c()) {
            getListPopupWindow().m2274a();
            ViewTreeObserver viewTreeObserver = getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeGlobalOnLayoutListener(this.f1166j);
            }
        }
        return true;
    }

    public boolean m2253c() {
        return getListPopupWindow().m2283b();
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ProGuard d = this.f1158b.m2238d();
        if (d != null) {
            d.registerObserver(this.f1165i);
        }
        this.f1171o = true;
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ProGuard d = this.f1158b.m2238d();
        if (d != null) {
            d.unregisterObserver(this.f1165i);
        }
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.f1166j);
        }
        if (m2253c()) {
            m2252b();
        }
        this.f1171o = false;
    }

    protected void onMeasure(int i, int i2) {
        View view = this.f1160d;
        if (this.f1163g.getVisibility() != 0) {
            i2 = MeasureSpec.makeMeasureSpec(MeasureSpec.getSize(i2), 1073741824);
        }
        measureChild(view, i, i2);
        setMeasuredDimension(view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.f1160d.layout(0, 0, i3 - i, i4 - i2);
        if (!m2253c()) {
            m2252b();
        }
    }

    public ProGuard getDataModel() {
        return this.f1158b.m2238d();
    }

    public void setOnDismissListener(OnDismissListener onDismissListener) {
        this.f1168l = onDismissListener;
    }

    public void setInitialActivityCount(int i) {
        this.f1170n = i;
    }

    public void setDefaultActionButtonContentDescription(int i) {
        this.f1172p = i;
    }

    private android.support.v7.widget.ProGuard getListPopupWindow() {
        if (this.f1167k == null) {
            this.f1167k = new android.support.v7.widget.ProGuard(getContext());
            this.f1167k.m2279a(this.f1158b);
            this.f1167k.m2277a((View) this);
            this.f1167k.m2281a(true);
            this.f1167k.m2278a(this.f1159c);
            this.f1167k.m2280a(this.f1159c);
        }
        return this.f1167k;
    }
}
