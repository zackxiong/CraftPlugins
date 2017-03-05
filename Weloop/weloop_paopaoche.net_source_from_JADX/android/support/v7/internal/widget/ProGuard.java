package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

/* renamed from: android.support.v7.internal.widget.s */
public class ProGuard extends HorizontalScrollView implements ProGuard {
    private static final Interpolator f1342j;
    Runnable f1343a;
    int f1344b;
    int f1345c;
    private ProGuard f1346d;
    private android.support.v7.widget.ProGuard f1347e;
    private SpinnerCompat f1348f;
    private boolean f1349g;
    private int f1350h;
    private int f1351i;

    /* renamed from: android.support.v7.internal.widget.s.a */
    private class ProGuard extends BaseAdapter {
        final /* synthetic */ ProGuard f1334a;

        private ProGuard(ProGuard proGuard) {
            this.f1334a = proGuard;
        }

        public int getCount() {
            return this.f1334a.f1347e.getChildCount();
        }

        public Object getItem(int i) {
            return ((ProGuard) this.f1334a.f1347e.getChildAt(i)).m2470b();
        }

        public long getItemId(int i) {
            return (long) i;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                return this.f1334a.m2471a((android.support.v7.app.ProGuard.ProGuard) getItem(i), true);
            }
            ((ProGuard) view).m2469a((android.support.v7.app.ProGuard.ProGuard) getItem(i));
            return view;
        }
    }

    /* renamed from: android.support.v7.internal.widget.s.b */
    private class ProGuard implements OnClickListener {
        final /* synthetic */ ProGuard f1335a;

        private ProGuard(ProGuard proGuard) {
            this.f1335a = proGuard;
        }

        public void onClick(View view) {
            ((ProGuard) view).m2470b().m1803d();
            int childCount = this.f1335a.f1347e.getChildCount();
            for (int i = 0; i < childCount; i++) {
                boolean z;
                View childAt = this.f1335a.f1347e.getChildAt(i);
                if (childAt == view) {
                    z = true;
                } else {
                    z = false;
                }
                childAt.setSelected(z);
            }
        }
    }

    /* renamed from: android.support.v7.internal.widget.s.c */
    private class ProGuard extends android.support.v7.widget.ProGuard implements OnLongClickListener {
        final /* synthetic */ ProGuard f1336a;
        private final int[] f1337b;
        private android.support.v7.app.ProGuard.ProGuard f1338c;
        private TextView f1339d;
        private ImageView f1340e;
        private View f1341f;

        public ProGuard(ProGuard proGuard, Context context, android.support.v7.app.ProGuard.ProGuard proGuard2, boolean z) {
            this.f1336a = proGuard;
            super(context, null, android.support.v7.appcompat.ProGuard.attr.actionBarTabStyle);
            this.f1337b = new int[]{16842964};
            this.f1338c = proGuard2;
            ac a = ac.m2328a(context, null, this.f1337b, android.support.v7.appcompat.ProGuard.attr.actionBarTabStyle, 0);
            if (a.m2343e(0)) {
                setBackgroundDrawable(a.m2332a(0));
            }
            a.m2336b();
            if (z) {
                setGravity(8388627);
            }
            m2468a();
        }

        public void m2469a(android.support.v7.app.ProGuard.ProGuard proGuard) {
            this.f1338c = proGuard;
            m2468a();
        }

        public void setSelected(boolean z) {
            Object obj = isSelected() != z ? 1 : null;
            super.setSelected(z);
            if (obj != null && z) {
                sendAccessibilityEvent(4);
            }
        }

        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName(android.support.v7.app.ProGuard.ProGuard.class.getName());
        }

        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            if (VERSION.SDK_INT >= 14) {
                accessibilityNodeInfo.setClassName(android.support.v7.app.ProGuard.ProGuard.class.getName());
            }
        }

        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            if (this.f1336a.f1344b > 0 && getMeasuredWidth() > this.f1336a.f1344b) {
                super.onMeasure(MeasureSpec.makeMeasureSpec(this.f1336a.f1344b, 1073741824), i2);
            }
        }

        public void m2468a() {
            android.support.v7.app.ProGuard.ProGuard proGuard = this.f1338c;
            View c = proGuard.m1802c();
            if (c != null) {
                ProGuard parent = c.getParent();
                if (parent != this) {
                    if (parent != null) {
                        parent.removeView(c);
                    }
                    addView(c);
                }
                this.f1341f = c;
                if (this.f1339d != null) {
                    this.f1339d.setVisibility(8);
                }
                if (this.f1340e != null) {
                    this.f1340e.setVisibility(8);
                    this.f1340e.setImageDrawable(null);
                    return;
                }
                return;
            }
            boolean z;
            if (this.f1341f != null) {
                removeView(this.f1341f);
                this.f1341f = null;
            }
            Drawable a = proGuard.m1800a();
            CharSequence b = proGuard.m1801b();
            if (a != null) {
                if (this.f1340e == null) {
                    View imageView = new ImageView(getContext());
                    LayoutParams proGuard2 = new android.support.v7.widget.ProGuard.ProGuard(-2, -2);
                    proGuard2.f1402h = 16;
                    imageView.setLayoutParams(proGuard2);
                    addView(imageView, 0);
                    this.f1340e = imageView;
                }
                this.f1340e.setImageDrawable(a);
                this.f1340e.setVisibility(0);
            } else if (this.f1340e != null) {
                this.f1340e.setVisibility(8);
                this.f1340e.setImageDrawable(null);
            }
            if (TextUtils.isEmpty(b)) {
                z = false;
            } else {
                z = true;
            }
            if (z) {
                if (this.f1339d == null) {
                    imageView = new android.support.v7.widget.ProGuard(getContext(), null, android.support.v7.appcompat.ProGuard.attr.actionBarTabTextStyle);
                    imageView.setEllipsize(TruncateAt.END);
                    proGuard2 = new android.support.v7.widget.ProGuard.ProGuard(-2, -2);
                    proGuard2.f1402h = 16;
                    imageView.setLayoutParams(proGuard2);
                    addView(imageView);
                    this.f1339d = imageView;
                }
                this.f1339d.setText(b);
                this.f1339d.setVisibility(0);
            } else if (this.f1339d != null) {
                this.f1339d.setVisibility(8);
                this.f1339d.setText(null);
            }
            if (this.f1340e != null) {
                this.f1340e.setContentDescription(proGuard.m1804e());
            }
            if (z || TextUtils.isEmpty(proGuard.m1804e())) {
                setOnLongClickListener(null);
                setLongClickable(false);
                return;
            }
            setOnLongClickListener(this);
        }

        public boolean onLongClick(View view) {
            int[] iArr = new int[2];
            getLocationOnScreen(iArr);
            Context context = getContext();
            int width = getWidth();
            int height = getHeight();
            int i = context.getResources().getDisplayMetrics().widthPixels;
            Toast makeText = Toast.makeText(context, this.f1338c.m1804e(), 0);
            makeText.setGravity(49, (iArr[0] + (width / 2)) - (i / 2), height);
            makeText.show();
            return true;
        }

        public android.support.v7.app.ProGuard.ProGuard m2470b() {
            return this.f1338c;
        }
    }

    static {
        f1342j = new DecelerateInterpolator();
    }

    public void onMeasure(int i, int i2) {
        int i3 = 1;
        int mode = MeasureSpec.getMode(i);
        boolean z = mode == 1073741824;
        setFillViewport(z);
        int childCount = this.f1347e.getChildCount();
        if (childCount <= 1 || !(mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            this.f1344b = -1;
        } else {
            if (childCount > 2) {
                this.f1344b = (int) (((float) MeasureSpec.getSize(i)) * 0.4f);
            } else {
                this.f1344b = MeasureSpec.getSize(i) / 2;
            }
            this.f1344b = Math.min(this.f1344b, this.f1345c);
        }
        mode = MeasureSpec.makeMeasureSpec(this.f1350h, 1073741824);
        if (z || !this.f1349g) {
            i3 = 0;
        }
        if (i3 != 0) {
            this.f1347e.measure(0, mode);
            if (this.f1347e.getMeasuredWidth() > MeasureSpec.getSize(i)) {
                m2475b();
            } else {
                m2476c();
            }
        } else {
            m2476c();
        }
        i3 = getMeasuredWidth();
        super.onMeasure(i, mode);
        int measuredWidth = getMeasuredWidth();
        if (z && i3 != measuredWidth) {
            setTabSelected(this.f1351i);
        }
    }

    private boolean m2474a() {
        return this.f1348f != null && this.f1348f.getParent() == this;
    }

    public void setAllowCollapse(boolean z) {
        this.f1349g = z;
    }

    private void m2475b() {
        if (!m2474a()) {
            if (this.f1348f == null) {
                this.f1348f = m2477d();
            }
            removeView(this.f1347e);
            addView(this.f1348f, new LayoutParams(-2, -1));
            if (this.f1348f.m2158c() == null) {
                this.f1348f.m2301a(new ProGuard());
            }
            if (this.f1343a != null) {
                removeCallbacks(this.f1343a);
                this.f1343a = null;
            }
            this.f1348f.setSelection(this.f1351i);
        }
    }

    private boolean m2476c() {
        if (m2474a()) {
            removeView(this.f1348f);
            addView(this.f1347e, new LayoutParams(-2, -1));
            setTabSelected(this.f1348f.getSelectedItemPosition());
        }
        return false;
    }

    public void setTabSelected(int i) {
        this.f1351i = i;
        int childCount = this.f1347e.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            boolean z;
            View childAt = this.f1347e.getChildAt(i2);
            if (i2 == i) {
                z = true;
            } else {
                z = false;
            }
            childAt.setSelected(z);
            if (z) {
                m2478a(i);
            }
        }
        if (this.f1348f != null && i >= 0) {
            this.f1348f.setSelection(i);
        }
    }

    public void setContentHeight(int i) {
        this.f1350h = i;
        requestLayout();
    }

    private SpinnerCompat m2477d() {
        SpinnerCompat spinnerCompat = new SpinnerCompat(getContext(), null, android.support.v7.appcompat.ProGuard.attr.actionDropDownStyle);
        spinnerCompat.setLayoutParams(new android.support.v7.widget.ProGuard.ProGuard(-2, -1));
        spinnerCompat.m2300a((ProGuard) this);
        return spinnerCompat;
    }

    protected void onConfigurationChanged(Configuration configuration) {
        if (VERSION.SDK_INT >= 8) {
            super.onConfigurationChanged(configuration);
        }
        android.support.v7.internal.view.ProGuard a = android.support.v7.internal.view.ProGuard.m1867a(getContext());
        setContentHeight(a.m1872e());
        this.f1345c = a.m1874g();
    }

    public void m2478a(int i) {
        View childAt = this.f1347e.getChildAt(i);
        if (this.f1343a != null) {
            removeCallbacks(this.f1343a);
        }
        this.f1343a = new ProGuard(this, childAt);
        post(this.f1343a);
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f1343a != null) {
            post(this.f1343a);
        }
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f1343a != null) {
            removeCallbacks(this.f1343a);
        }
    }

    private ProGuard m2471a(android.support.v7.app.ProGuard.ProGuard proGuard, boolean z) {
        ProGuard proGuard2 = new ProGuard(this, getContext(), proGuard, z);
        if (z) {
            proGuard2.setBackgroundDrawable(null);
            proGuard2.setLayoutParams(new AbsListView.LayoutParams(-1, this.f1350h));
        } else {
            proGuard2.setFocusable(true);
            if (this.f1346d == null) {
                this.f1346d = new ProGuard();
            }
            proGuard2.setOnClickListener(this.f1346d);
        }
        return proGuard2;
    }

    public void m2479a(ProGuard<?> proGuard, View view, int i, long j) {
        ((ProGuard) view).m2470b().m1803d();
    }
}
