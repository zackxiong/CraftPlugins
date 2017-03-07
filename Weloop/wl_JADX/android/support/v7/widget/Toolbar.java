package android.support.v7.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.view.ak;
import android.support.v7.internal.widget.ab;
import android.support.v7.internal.widget.ac;
import android.support.v7.internal.widget.ad;
import android.support.v7.internal.widget.af;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ProGuard */
public class Toolbar extends ViewGroup {
    private boolean f1476A;
    private final ArrayList<View> f1477B;
    private final int[] f1478C;
    private ProGuard f1479D;
    private final android.support.v7.widget.ActionMenuView.ProGuard f1480E;
    private ad f1481F;
    private ActionMenuPresenter f1482G;
    private ProGuard f1483H;
    private android.support.v7.internal.view.menu.ProGuard.ProGuard f1484I;
    private android.support.v7.internal.view.menu.ProGuard.ProGuard f1485J;
    private boolean f1486K;
    private int f1487L;
    private final Runnable f1488M;
    private final ab f1489N;
    View f1490a;
    private ActionMenuView f1491b;
    private TextView f1492c;
    private TextView f1493d;
    private ImageButton f1494e;
    private ImageView f1495f;
    private Drawable f1496g;
    private CharSequence f1497h;
    private ImageButton f1498i;
    private Context f1499j;
    private int f1500k;
    private int f1501l;
    private int f1502m;
    private int f1503n;
    private int f1504o;
    private int f1505p;
    private int f1506q;
    private int f1507r;
    private int f1508s;
    private final android.support.v7.internal.widget.ProGuard f1509t;
    private int f1510u;
    private CharSequence f1511v;
    private CharSequence f1512w;
    private int f1513x;
    private int f1514y;
    private boolean f1515z;

    /* compiled from: ProGuard */
    static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR;
        public int f1470a;
        public boolean f1471b;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.f1470a = parcel.readInt();
            this.f1471b = parcel.readInt() != 0;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f1470a);
            parcel.writeInt(this.f1471b ? 1 : 0);
        }

        static {
            CREATOR = new ProGuard();
        }
    }

    /* renamed from: android.support.v7.widget.Toolbar.a */
    private class ProGuard implements android.support.v7.internal.view.menu.ProGuard {
        android.support.v7.internal.view.menu.ProGuard f1472a;
        android.support.v7.internal.view.menu.ProGuard f1473b;
        final /* synthetic */ Toolbar f1474c;

        private ProGuard(Toolbar toolbar) {
            this.f1474c = toolbar;
        }

        public void m2590a(Context context, android.support.v7.internal.view.menu.ProGuard proGuard) {
            if (!(this.f1472a == null || this.f1473b == null)) {
                this.f1472a.m2033d(this.f1473b);
            }
            this.f1472a = proGuard;
        }

        public void m2594b(boolean z) {
            Object obj = null;
            if (this.f1473b != null) {
                if (this.f1472a != null) {
                    int size = this.f1472a.size();
                    for (int i = 0; i < size; i++) {
                        if (this.f1472a.getItem(i) == this.f1473b) {
                            obj = 1;
                            break;
                        }
                    }
                }
                if (obj == null) {
                    m2596b(this.f1472a, this.f1473b);
                }
            }
        }

        public boolean m2593a(android.support.v7.internal.view.menu.ProGuard proGuard) {
            return false;
        }

        public void m2591a(android.support.v7.internal.view.menu.ProGuard proGuard, boolean z) {
        }

        public boolean m2595b() {
            return false;
        }

        public boolean m2592a(android.support.v7.internal.view.menu.ProGuard proGuard, android.support.v7.internal.view.menu.ProGuard proGuard2) {
            this.f1474c.m2622n();
            if (this.f1474c.f1498i.getParent() != this.f1474c) {
                this.f1474c.addView(this.f1474c.f1498i);
            }
            this.f1474c.f1490a = proGuard2.getActionView();
            this.f1473b = proGuard2;
            if (this.f1474c.f1490a.getParent() != this.f1474c) {
                LayoutParams i = this.f1474c.m2639i();
                i.a = 8388611 | (this.f1474c.f1503n & 112);
                i.f1475b = 2;
                this.f1474c.f1490a.setLayoutParams(i);
                this.f1474c.addView(this.f1474c.f1490a);
            }
            this.f1474c.setChildVisibilityForExpandedActionView(true);
            this.f1474c.requestLayout();
            proGuard2.m2070e(true);
            if (this.f1474c.f1490a instanceof android.support.v7.p019b.ProGuard) {
                ((android.support.v7.p019b.ProGuard) this.f1474c.f1490a).m1820a();
            }
            return true;
        }

        public boolean m2596b(android.support.v7.internal.view.menu.ProGuard proGuard, android.support.v7.internal.view.menu.ProGuard proGuard2) {
            if (this.f1474c.f1490a instanceof android.support.v7.p019b.ProGuard) {
                ((android.support.v7.p019b.ProGuard) this.f1474c.f1490a).m1821b();
            }
            this.f1474c.removeView(this.f1474c.f1490a);
            this.f1474c.removeView(this.f1474c.f1498i);
            this.f1474c.f1490a = null;
            this.f1474c.setChildVisibilityForExpandedActionView(false);
            this.f1473b = null;
            this.f1474c.requestLayout();
            proGuard2.m2070e(false);
            return true;
        }
    }

    /* renamed from: android.support.v7.widget.Toolbar.b */
    public static class ProGuard extends android.support.v7.app.ProGuard.ProGuard {
        int f1475b;

        public ProGuard(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1475b = 0;
        }

        public ProGuard(int i, int i2) {
            super(i, i2);
            this.f1475b = 0;
            this.a = 8388627;
        }

        public ProGuard(ProGuard proGuard) {
            super((android.support.v7.app.ProGuard.ProGuard) proGuard);
            this.f1475b = 0;
            this.f1475b = proGuard.f1475b;
        }

        public ProGuard(android.support.v7.app.ProGuard.ProGuard proGuard) {
            super(proGuard);
            this.f1475b = 0;
        }

        public ProGuard(MarginLayoutParams marginLayoutParams) {
            super((LayoutParams) marginLayoutParams);
            this.f1475b = 0;
            m2597a(marginLayoutParams);
        }

        public ProGuard(LayoutParams layoutParams) {
            super(layoutParams);
            this.f1475b = 0;
        }

        void m2597a(MarginLayoutParams marginLayoutParams) {
            this.leftMargin = marginLayoutParams.leftMargin;
            this.topMargin = marginLayoutParams.topMargin;
            this.rightMargin = marginLayoutParams.rightMargin;
            this.bottomMargin = marginLayoutParams.bottomMargin;
        }
    }

    /* renamed from: android.support.v7.widget.Toolbar.c */
    public interface ProGuard {
        boolean m2598a(MenuItem menuItem);
    }

    protected /* synthetic */ LayoutParams generateDefaultLayoutParams() {
        return m2639i();
    }

    public /* synthetic */ LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return m2625a(attributeSet);
    }

    protected /* synthetic */ LayoutParams generateLayoutParams(LayoutParams layoutParams) {
        return m2626a(layoutParams);
    }

    public Toolbar(Context context) {
        this(context, null);
    }

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, android.support.v7.appcompat.ProGuard.attr.toolbarStyle);
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i) {
        super(af.m2416a(context, attributeSet, false, true), attributeSet, i);
        this.f1509t = new android.support.v7.internal.widget.ProGuard();
        this.f1510u = 8388627;
        this.f1477B = new ArrayList();
        this.f1478C = new int[2];
        this.f1480E = new ProGuard(this);
        this.f1488M = new ProGuard(this);
        ac a = ac.m2328a(getContext(), attributeSet, android.support.v7.appcompat.ProGuard.styleable.Toolbar, i, 0);
        this.f1501l = a.m2344f(android.support.v7.appcompat.ProGuard.styleable.Toolbar_titleTextAppearance, 0);
        this.f1502m = a.m2344f(android.support.v7.appcompat.ProGuard.styleable.Toolbar_subtitleTextAppearance, 0);
        this.f1510u = a.m2334b(android.support.v7.appcompat.ProGuard.styleable.Toolbar_android_gravity, this.f1510u);
        this.f1503n = 48;
        int c = a.m2337c(android.support.v7.appcompat.ProGuard.styleable.Toolbar_titleMargins, 0);
        this.f1508s = c;
        this.f1507r = c;
        this.f1506q = c;
        this.f1505p = c;
        c = a.m2337c(android.support.v7.appcompat.ProGuard.styleable.Toolbar_titleMarginStart, -1);
        if (c >= 0) {
            this.f1505p = c;
        }
        c = a.m2337c(android.support.v7.appcompat.ProGuard.styleable.Toolbar_titleMarginEnd, -1);
        if (c >= 0) {
            this.f1506q = c;
        }
        c = a.m2337c(android.support.v7.appcompat.ProGuard.styleable.Toolbar_titleMarginTop, -1);
        if (c >= 0) {
            this.f1507r = c;
        }
        c = a.m2337c(android.support.v7.appcompat.ProGuard.styleable.Toolbar_titleMarginBottom, -1);
        if (c >= 0) {
            this.f1508s = c;
        }
        this.f1504o = a.m2340d(android.support.v7.appcompat.ProGuard.styleable.Toolbar_maxButtonHeight, -1);
        c = a.m2337c(android.support.v7.appcompat.ProGuard.styleable.Toolbar_contentInsetStart, Integer.MIN_VALUE);
        int c2 = a.m2337c(android.support.v7.appcompat.ProGuard.styleable.Toolbar_contentInsetEnd, Integer.MIN_VALUE);
        this.f1509t.m2465b(a.m2340d(android.support.v7.appcompat.ProGuard.styleable.Toolbar_contentInsetLeft, 0), a.m2340d(android.support.v7.appcompat.ProGuard.styleable.Toolbar_contentInsetRight, 0));
        if (!(c == Integer.MIN_VALUE && c2 == Integer.MIN_VALUE)) {
            this.f1509t.m2462a(c, c2);
        }
        this.f1496g = a.m2332a(android.support.v7.appcompat.ProGuard.styleable.Toolbar_collapseIcon);
        this.f1497h = a.m2339c(android.support.v7.appcompat.ProGuard.styleable.Toolbar_collapseContentDescription);
        CharSequence c3 = a.m2339c(android.support.v7.appcompat.ProGuard.styleable.Toolbar_title);
        if (!TextUtils.isEmpty(c3)) {
            setTitle(c3);
        }
        c3 = a.m2339c(android.support.v7.appcompat.ProGuard.styleable.Toolbar_subtitle);
        if (!TextUtils.isEmpty(c3)) {
            setSubtitle(c3);
        }
        this.f1499j = getContext();
        setPopupTheme(a.m2344f(android.support.v7.appcompat.ProGuard.styleable.Toolbar_popupTheme, 0));
        Drawable a2 = a.m2332a(android.support.v7.appcompat.ProGuard.styleable.Toolbar_navigationIcon);
        if (a2 != null) {
            setNavigationIcon(a2);
        }
        c3 = a.m2339c(android.support.v7.appcompat.ProGuard.styleable.Toolbar_navigationContentDescription);
        if (!TextUtils.isEmpty(c3)) {
            setNavigationContentDescription(c3);
        }
        this.f1487L = a.m2340d(android.support.v7.appcompat.ProGuard.styleable.Toolbar_android_minHeight, 0);
        a.m2336b();
        this.f1489N = a.m2338c();
    }

    public void setPopupTheme(int i) {
        if (this.f1500k != i) {
            this.f1500k = i;
            if (i == 0) {
                this.f1499j = getContext();
            } else {
                this.f1499j = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public int getPopupTheme() {
        return this.f1500k;
    }

    public void onRtlPropertiesChanged(int i) {
        boolean z = true;
        if (VERSION.SDK_INT >= 17) {
            super.onRtlPropertiesChanged(i);
        }
        android.support.v7.internal.widget.ProGuard proGuard = this.f1509t;
        if (i != 1) {
            z = false;
        }
        proGuard.m2463a(z);
    }

    public void setLogo(int i) {
        setLogo(this.f1489N.m2322a(i));
    }

    public boolean m2630a() {
        return getVisibility() == 0 && this.f1491b != null && this.f1491b.m2544a();
    }

    public boolean m2632b() {
        return this.f1491b != null && this.f1491b.m2554g();
    }

    public boolean m2633c() {
        return this.f1491b != null && this.f1491b.m2555h();
    }

    public boolean m2634d() {
        return this.f1491b != null && this.f1491b.m2552e();
    }

    public boolean m2635e() {
        return this.f1491b != null && this.f1491b.m2553f();
    }

    public void m2629a(android.support.v7.internal.view.menu.ProGuard proGuard, ActionMenuPresenter actionMenuPresenter) {
        if (proGuard != null || this.f1491b != null) {
            m2620l();
            android.support.v7.internal.view.menu.ProGuard d = this.f1491b.m2551d();
            if (d != proGuard) {
                if (d != null) {
                    d.m2027b(this.f1482G);
                    d.m2027b(this.f1483H);
                }
                if (this.f1483H == null) {
                    this.f1483H = new ProGuard();
                }
                actionMenuPresenter.m2525d(true);
                if (proGuard != null) {
                    proGuard.m2017a((android.support.v7.internal.view.menu.ProGuard) actionMenuPresenter, this.f1499j);
                    proGuard.m2017a(this.f1483H, this.f1499j);
                } else {
                    actionMenuPresenter.m2511a(this.f1499j, null);
                    this.f1483H.m2590a(this.f1499j, null);
                    actionMenuPresenter.m2521b(true);
                    this.f1483H.m2594b(true);
                }
                this.f1491b.setPopupTheme(this.f1500k);
                this.f1491b.setPresenter(actionMenuPresenter);
                this.f1482G = actionMenuPresenter;
            }
        }
    }

    public void m2636f() {
        if (this.f1491b != null) {
            this.f1491b.m2556i();
        }
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            m2618j();
            if (this.f1495f.getParent() == null) {
                m2606a(this.f1495f);
                m2617e(this.f1495f);
            }
        } else if (!(this.f1495f == null || this.f1495f.getParent() == null)) {
            removeView(this.f1495f);
        }
        if (this.f1495f != null) {
            this.f1495f.setImageDrawable(drawable);
        }
    }

    public Drawable getLogo() {
        return this.f1495f != null ? this.f1495f.getDrawable() : null;
    }

    public void setLogoDescription(int i) {
        setLogoDescription(getContext().getText(i));
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m2618j();
        }
        if (this.f1495f != null) {
            this.f1495f.setContentDescription(charSequence);
        }
    }

    public CharSequence getLogoDescription() {
        return this.f1495f != null ? this.f1495f.getContentDescription() : null;
    }

    private void m2618j() {
        if (this.f1495f == null) {
            this.f1495f = new ImageView(getContext());
        }
    }

    public boolean m2637g() {
        return (this.f1483H == null || this.f1483H.f1473b == null) ? false : true;
    }

    public void m2638h() {
        android.support.v7.internal.view.menu.ProGuard proGuard = this.f1483H == null ? null : this.f1483H.f1473b;
        if (proGuard != null) {
            proGuard.collapseActionView();
        }
    }

    public CharSequence getTitle() {
        return this.f1511v;
    }

    public void setTitle(int i) {
        setTitle(getContext().getText(i));
    }

    public void setTitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.f1492c == null) {
                Context context = getContext();
                this.f1492c = new TextView(context);
                this.f1492c.setSingleLine();
                this.f1492c.setEllipsize(TruncateAt.END);
                if (this.f1501l != 0) {
                    this.f1492c.setTextAppearance(context, this.f1501l);
                }
                if (this.f1513x != 0) {
                    this.f1492c.setTextColor(this.f1513x);
                }
            }
            if (this.f1492c.getParent() == null) {
                m2606a(this.f1492c);
                m2617e(this.f1492c);
            }
        } else if (!(this.f1492c == null || this.f1492c.getParent() == null)) {
            removeView(this.f1492c);
        }
        if (this.f1492c != null) {
            this.f1492c.setText(charSequence);
        }
        this.f1511v = charSequence;
    }

    public CharSequence getSubtitle() {
        return this.f1512w;
    }

    public void setSubtitle(int i) {
        setSubtitle(getContext().getText(i));
    }

    public void setSubtitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.f1493d == null) {
                Context context = getContext();
                this.f1493d = new TextView(context);
                this.f1493d.setSingleLine();
                this.f1493d.setEllipsize(TruncateAt.END);
                if (this.f1502m != 0) {
                    this.f1493d.setTextAppearance(context, this.f1502m);
                }
                if (this.f1514y != 0) {
                    this.f1493d.setTextColor(this.f1514y);
                }
            }
            if (this.f1493d.getParent() == null) {
                m2606a(this.f1493d);
                m2617e(this.f1493d);
            }
        } else if (!(this.f1493d == null || this.f1493d.getParent() == null)) {
            removeView(this.f1493d);
        }
        if (this.f1493d != null) {
            this.f1493d.setText(charSequence);
        }
        this.f1512w = charSequence;
    }

    public void m2628a(Context context, int i) {
        this.f1501l = i;
        if (this.f1492c != null) {
            this.f1492c.setTextAppearance(context, i);
        }
    }

    public void m2631b(Context context, int i) {
        this.f1502m = i;
        if (this.f1493d != null) {
            this.f1493d.setTextAppearance(context, i);
        }
    }

    public void setTitleTextColor(int i) {
        this.f1513x = i;
        if (this.f1492c != null) {
            this.f1492c.setTextColor(i);
        }
    }

    public void setSubtitleTextColor(int i) {
        this.f1514y = i;
        if (this.f1493d != null) {
            this.f1493d.setTextColor(i);
        }
    }

    public CharSequence getNavigationContentDescription() {
        return this.f1494e != null ? this.f1494e.getContentDescription() : null;
    }

    public void setNavigationContentDescription(int i) {
        setNavigationContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m2621m();
        }
        if (this.f1494e != null) {
            this.f1494e.setContentDescription(charSequence);
        }
    }

    public void setNavigationIcon(int i) {
        setNavigationIcon(this.f1489N.m2322a(i));
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            m2621m();
            if (this.f1494e.getParent() == null) {
                m2606a(this.f1494e);
                m2617e(this.f1494e);
            }
        } else if (!(this.f1494e == null || this.f1494e.getParent() == null)) {
            removeView(this.f1494e);
        }
        if (this.f1494e != null) {
            this.f1494e.setImageDrawable(drawable);
        }
    }

    public Drawable getNavigationIcon() {
        return this.f1494e != null ? this.f1494e.getDrawable() : null;
    }

    public void setNavigationOnClickListener(OnClickListener onClickListener) {
        m2621m();
        this.f1494e.setOnClickListener(onClickListener);
    }

    public Menu getMenu() {
        m2619k();
        return this.f1491b.getMenu();
    }

    private void m2619k() {
        m2620l();
        if (this.f1491b.m2551d() == null) {
            android.support.v7.internal.view.menu.ProGuard proGuard = (android.support.v7.internal.view.menu.ProGuard) this.f1491b.getMenu();
            if (this.f1483H == null) {
                this.f1483H = new ProGuard();
            }
            this.f1491b.setExpandedActionViewsExclusive(true);
            proGuard.m2017a(this.f1483H, this.f1499j);
        }
    }

    private void m2620l() {
        if (this.f1491b == null) {
            this.f1491b = new ActionMenuView(getContext());
            this.f1491b.setPopupTheme(this.f1500k);
            this.f1491b.setOnMenuItemClickListener(this.f1480E);
            this.f1491b.m2543a(this.f1484I, this.f1485J);
            LayoutParams i = m2639i();
            i.a = 8388613 | (this.f1503n & 112);
            this.f1491b.setLayoutParams(i);
            m2606a(this.f1491b);
        }
    }

    private MenuInflater getMenuInflater() {
        return new android.support.v7.internal.view.ProGuard(getContext());
    }

    public void setOnMenuItemClickListener(ProGuard proGuard) {
        this.f1479D = proGuard;
    }

    public void m2627a(int i, int i2) {
        this.f1509t.m2462a(i, i2);
    }

    public int getContentInsetStart() {
        return this.f1509t.m2466c();
    }

    public int getContentInsetEnd() {
        return this.f1509t.m2467d();
    }

    public int getContentInsetLeft() {
        return this.f1509t.m2461a();
    }

    public int getContentInsetRight() {
        return this.f1509t.m2464b();
    }

    private void m2621m() {
        if (this.f1494e == null) {
            this.f1494e = new ImageButton(getContext(), null, android.support.v7.appcompat.ProGuard.attr.toolbarNavigationButtonStyle);
            LayoutParams i = m2639i();
            i.a = 8388611 | (this.f1503n & 112);
            this.f1494e.setLayoutParams(i);
        }
    }

    private void m2622n() {
        if (this.f1498i == null) {
            this.f1498i = new ImageButton(getContext(), null, android.support.v7.appcompat.ProGuard.attr.toolbarNavigationButtonStyle);
            this.f1498i.setImageDrawable(this.f1496g);
            this.f1498i.setContentDescription(this.f1497h);
            LayoutParams i = m2639i();
            i.a = 8388611 | (this.f1503n & 112);
            i.f1475b = 2;
            this.f1498i.setLayoutParams(i);
            this.f1498i.setOnClickListener(new ProGuard(this));
        }
    }

    private void m2606a(View view) {
        LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = m2639i();
        } else if (checkLayoutParams(layoutParams)) {
            ProGuard proGuard = (ProGuard) layoutParams;
        } else {
            layoutParams = m2626a(layoutParams);
        }
        layoutParams.f1475b = 1;
        addView(view, layoutParams);
    }

    protected Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        if (!(this.f1483H == null || this.f1483H.f1473b == null)) {
            savedState.f1470a = this.f1483H.f1473b.getItemId();
        }
        savedState.f1471b = m2632b();
        return savedState;
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        Menu d = this.f1491b != null ? this.f1491b.m2551d() : null;
        if (!(savedState.f1470a == 0 || this.f1483H == null || d == null)) {
            MenuItem findItem = d.findItem(savedState.f1470a);
            if (findItem != null) {
                android.support.v4.view.ProGuard.m1336b(findItem);
            }
        }
        if (savedState.f1471b) {
            m2623o();
        }
    }

    private void m2623o() {
        removeCallbacks(this.f1488M);
        post(this.f1488M);
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.f1488M);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        int a = android.support.v4.view.ProGuard.m1365a(motionEvent);
        if (a == 0) {
            this.f1515z = false;
        }
        if (!this.f1515z) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (a == 0 && !onTouchEvent) {
                this.f1515z = true;
            }
        }
        if (a == 1 || a == 3) {
            this.f1515z = false;
        }
        return true;
    }

    public boolean onHoverEvent(MotionEvent motionEvent) {
        int a = android.support.v4.view.ProGuard.m1365a(motionEvent);
        if (a == 9) {
            this.f1476A = false;
        }
        if (!this.f1476A) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (a == 9 && !onHoverEvent) {
                this.f1476A = true;
            }
        }
        if (a == 10 || a == 3) {
            this.f1476A = false;
        }
        return true;
    }

    private void m2607a(View view, int i, int i2, int i3, int i4, int i5) {
        MarginLayoutParams marginLayoutParams = (MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = getChildMeasureSpec(i, (((getPaddingLeft() + getPaddingRight()) + marginLayoutParams.leftMargin) + marginLayoutParams.rightMargin) + i2, marginLayoutParams.width);
        int childMeasureSpec2 = getChildMeasureSpec(i3, (((getPaddingTop() + getPaddingBottom()) + marginLayoutParams.topMargin) + marginLayoutParams.bottomMargin) + i4, marginLayoutParams.height);
        int mode = MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i5 >= 0) {
            if (mode != 0) {
                i5 = Math.min(MeasureSpec.getSize(childMeasureSpec2), i5);
            }
            childMeasureSpec2 = MeasureSpec.makeMeasureSpec(i5, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    private int m2601a(View view, int i, int i2, int i3, int i4, int[] iArr) {
        MarginLayoutParams marginLayoutParams = (MarginLayoutParams) view.getLayoutParams();
        int i5 = marginLayoutParams.leftMargin - iArr[0];
        int i6 = marginLayoutParams.rightMargin - iArr[1];
        int max = Math.max(0, i5) + Math.max(0, i6);
        iArr[0] = Math.max(0, -i5);
        iArr[1] = Math.max(0, -i6);
        view.measure(getChildMeasureSpec(i, ((getPaddingLeft() + getPaddingRight()) + max) + i2, marginLayoutParams.width), getChildMeasureSpec(i3, (((getPaddingTop() + getPaddingBottom()) + marginLayoutParams.topMargin) + marginLayoutParams.bottomMargin) + i4, marginLayoutParams.height));
        return view.getMeasuredWidth() + max;
    }

    private boolean m2624p() {
        if (!this.f1486K) {
            return false;
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (m2612b(childAt) && childAt.getMeasuredWidth() > 0 && childAt.getMeasuredHeight() > 0) {
                return false;
            }
        }
        return true;
    }

    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int max;
        int i5 = 0;
        int i6 = 0;
        int[] iArr = this.f1478C;
        if (af.m2418a(this)) {
            i3 = 0;
            i4 = 1;
        } else {
            i3 = 1;
            i4 = 0;
        }
        int i7 = 0;
        if (m2612b(this.f1494e)) {
            m2607a(this.f1494e, i, 0, i2, 0, this.f1504o);
            i7 = this.f1494e.getMeasuredWidth() + m2613c(this.f1494e);
            max = Math.max(0, this.f1494e.getMeasuredHeight() + m2616d(this.f1494e));
            i6 = af.m2415a(0, ak.m1036g(this.f1494e));
            i5 = max;
        }
        if (m2612b(this.f1498i)) {
            m2607a(this.f1498i, i, 0, i2, 0, this.f1504o);
            i7 = this.f1498i.getMeasuredWidth() + m2613c(this.f1498i);
            i5 = Math.max(i5, this.f1498i.getMeasuredHeight() + m2616d(this.f1498i));
            i6 = af.m2415a(i6, ak.m1036g(this.f1498i));
        }
        int contentInsetStart = getContentInsetStart();
        int max2 = 0 + Math.max(contentInsetStart, i7);
        iArr[i4] = Math.max(0, contentInsetStart - i7);
        i7 = 0;
        if (m2612b(this.f1491b)) {
            m2607a(this.f1491b, i, max2, i2, 0, this.f1504o);
            i7 = this.f1491b.getMeasuredWidth() + m2613c(this.f1491b);
            i5 = Math.max(i5, this.f1491b.getMeasuredHeight() + m2616d(this.f1491b));
            i6 = af.m2415a(i6, ak.m1036g(this.f1491b));
        }
        contentInsetStart = getContentInsetEnd();
        max2 += Math.max(contentInsetStart, i7);
        iArr[i3] = Math.max(0, contentInsetStart - i7);
        if (m2612b(this.f1490a)) {
            max2 += m2601a(this.f1490a, i, max2, i2, 0, iArr);
            i5 = Math.max(i5, this.f1490a.getMeasuredHeight() + m2616d(this.f1490a));
            i6 = af.m2415a(i6, ak.m1036g(this.f1490a));
        }
        if (m2612b(this.f1495f)) {
            max2 += m2601a(this.f1495f, i, max2, i2, 0, iArr);
            i5 = Math.max(i5, this.f1495f.getMeasuredHeight() + m2616d(this.f1495f));
            i6 = af.m2415a(i6, ak.m1036g(this.f1495f));
        }
        i4 = getChildCount();
        i3 = 0;
        int i8 = i5;
        i5 = i6;
        while (i3 < i4) {
            View childAt = getChildAt(i3);
            if (((ProGuard) childAt.getLayoutParams()).f1475b != 0) {
                i7 = i5;
                contentInsetStart = i8;
            } else if (m2612b(childAt)) {
                max2 += m2601a(childAt, i, max2, i2, 0, iArr);
                max = Math.max(i8, childAt.getMeasuredHeight() + m2616d(childAt));
                i7 = af.m2415a(i5, ak.m1036g(childAt));
                contentInsetStart = max;
            } else {
                i7 = i5;
                contentInsetStart = i8;
            }
            i3++;
            i5 = i7;
            i8 = contentInsetStart;
        }
        contentInsetStart = 0;
        i7 = 0;
        i6 = this.f1507r + this.f1508s;
        max = this.f1505p + this.f1506q;
        if (m2612b(this.f1492c)) {
            m2601a(this.f1492c, i, max2 + max, i2, i6, iArr);
            contentInsetStart = m2613c(this.f1492c) + this.f1492c.getMeasuredWidth();
            i7 = this.f1492c.getMeasuredHeight() + m2616d(this.f1492c);
            i5 = af.m2415a(i5, ak.m1036g(this.f1492c));
        }
        if (m2612b(this.f1493d)) {
            contentInsetStart = Math.max(contentInsetStart, m2601a(this.f1493d, i, max2 + max, i2, i6 + i7, iArr));
            i7 += this.f1493d.getMeasuredHeight() + m2616d(this.f1493d);
            i5 = af.m2415a(i5, ak.m1036g(this.f1493d));
        }
        contentInsetStart += max2;
        i7 = Math.max(i8, i7) + (getPaddingTop() + getPaddingBottom());
        contentInsetStart = ak.m1011a(Math.max(contentInsetStart + (getPaddingLeft() + getPaddingRight()), getSuggestedMinimumWidth()), i, -16777216 & i5);
        i7 = ak.m1011a(Math.max(i7, getSuggestedMinimumHeight()), i2, i5 << 16);
        if (m2624p()) {
            i7 = 0;
        }
        setMeasuredDimension(contentInsetStart, i7);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Object obj;
        int i5;
        int i6;
        int i7;
        int measuredHeight;
        int measuredWidth;
        if (ak.m1033e(this) == 1) {
            obj = 1;
        } else {
            obj = null;
        }
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i8 = width - paddingRight;
        int[] iArr = this.f1478C;
        iArr[1] = 0;
        iArr[0] = 0;
        int minimumHeightCompat = getMinimumHeightCompat();
        if (!m2612b(this.f1494e)) {
            i5 = paddingLeft;
        } else if (obj != null) {
            i8 = m2610b(this.f1494e, i8, iArr, minimumHeightCompat);
            i5 = paddingLeft;
        } else {
            i5 = m2602a(this.f1494e, paddingLeft, iArr, minimumHeightCompat);
        }
        if (m2612b(this.f1498i)) {
            if (obj != null) {
                i8 = m2610b(this.f1498i, i8, iArr, minimumHeightCompat);
            } else {
                i5 = m2602a(this.f1498i, i5, iArr, minimumHeightCompat);
            }
        }
        if (m2612b(this.f1491b)) {
            if (obj != null) {
                i5 = m2602a(this.f1491b, i5, iArr, minimumHeightCompat);
            } else {
                i8 = m2610b(this.f1491b, i8, iArr, minimumHeightCompat);
            }
        }
        iArr[0] = Math.max(0, getContentInsetLeft() - i5);
        iArr[1] = Math.max(0, getContentInsetRight() - ((width - paddingRight) - i8));
        i5 = Math.max(i5, getContentInsetLeft());
        i8 = Math.min(i8, (width - paddingRight) - getContentInsetRight());
        if (m2612b(this.f1490a)) {
            if (obj != null) {
                i8 = m2610b(this.f1490a, i8, iArr, minimumHeightCompat);
            } else {
                i5 = m2602a(this.f1490a, i5, iArr, minimumHeightCompat);
            }
        }
        if (!m2612b(this.f1495f)) {
            i6 = i8;
            i7 = i5;
        } else if (obj != null) {
            i6 = m2610b(this.f1495f, i8, iArr, minimumHeightCompat);
            i7 = i5;
        } else {
            i6 = i8;
            i7 = m2602a(this.f1495f, i5, iArr, minimumHeightCompat);
        }
        boolean b = m2612b(this.f1492c);
        boolean b2 = m2612b(this.f1493d);
        i5 = 0;
        if (b) {
            ProGuard proGuard = (ProGuard) this.f1492c.getLayoutParams();
            i5 = 0 + (proGuard.bottomMargin + (proGuard.topMargin + this.f1492c.getMeasuredHeight()));
        }
        if (b2) {
            proGuard = (ProGuard) this.f1493d.getLayoutParams();
            measuredHeight = (proGuard.bottomMargin + (proGuard.topMargin + this.f1493d.getMeasuredHeight())) + i5;
        } else {
            measuredHeight = i5;
        }
        if (b || b2) {
            int paddingTop2;
            proGuard = (ProGuard) (b ? this.f1492c : this.f1493d).getLayoutParams();
            ProGuard proGuard2 = (ProGuard) (b2 ? this.f1493d : this.f1492c).getLayoutParams();
            Object obj2 = ((!b || this.f1492c.getMeasuredWidth() <= 0) && (!b2 || this.f1493d.getMeasuredWidth() <= 0)) ? null : 1;
            switch (this.f1510u & 112) {
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Theme_homeAsUpIndicator /*48*/:
                    paddingTop2 = (proGuard.topMargin + getPaddingTop()) + this.f1507r;
                    break;
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Theme_colorPrimary /*80*/:
                    paddingTop2 = (((height - paddingBottom) - proGuard2.bottomMargin) - this.f1508s) - measuredHeight;
                    break;
                default:
                    paddingTop2 = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
                    if (paddingTop2 < proGuard.topMargin + this.f1507r) {
                        i8 = proGuard.topMargin + this.f1507r;
                    } else {
                        measuredHeight = (((height - paddingBottom) - measuredHeight) - paddingTop2) - paddingTop;
                        if (measuredHeight < proGuard.bottomMargin + this.f1508s) {
                            i8 = Math.max(0, paddingTop2 - ((proGuard2.bottomMargin + this.f1508s) - measuredHeight));
                        } else {
                            i8 = paddingTop2;
                        }
                    }
                    paddingTop2 = paddingTop + i8;
                    break;
            }
            if (obj != null) {
                i8 = (obj2 != null ? this.f1505p : 0) - iArr[1];
                i5 = i6 - Math.max(0, i8);
                iArr[1] = Math.max(0, -i8);
                if (b) {
                    proGuard = (ProGuard) this.f1492c.getLayoutParams();
                    measuredWidth = i5 - this.f1492c.getMeasuredWidth();
                    i6 = this.f1492c.getMeasuredHeight() + paddingTop2;
                    this.f1492c.layout(measuredWidth, paddingTop2, i5, i6);
                    paddingTop2 = i6 + proGuard.bottomMargin;
                    i6 = measuredWidth - this.f1506q;
                } else {
                    i6 = i5;
                }
                if (b2) {
                    proGuard = (ProGuard) this.f1493d.getLayoutParams();
                    measuredWidth = proGuard.topMargin + paddingTop2;
                    measuredHeight = this.f1493d.getMeasuredHeight() + measuredWidth;
                    this.f1493d.layout(i5 - this.f1493d.getMeasuredWidth(), measuredWidth, i5, measuredHeight);
                    i8 = proGuard.bottomMargin + measuredHeight;
                    i8 = i5 - this.f1506q;
                } else {
                    i8 = i5;
                }
                if (obj2 != null) {
                    i8 = Math.min(i6, i8);
                } else {
                    i8 = i5;
                }
                i6 = i8;
            } else {
                i8 = (obj2 != null ? this.f1505p : 0) - iArr[0];
                i7 += Math.max(0, i8);
                iArr[0] = Math.max(0, -i8);
                if (b) {
                    proGuard = (ProGuard) this.f1492c.getLayoutParams();
                    i5 = this.f1492c.getMeasuredWidth() + i7;
                    measuredWidth = this.f1492c.getMeasuredHeight() + paddingTop2;
                    this.f1492c.layout(i7, paddingTop2, i5, measuredWidth);
                    i8 = proGuard.bottomMargin + measuredWidth;
                    measuredWidth = i5 + this.f1506q;
                    i5 = i8;
                } else {
                    measuredWidth = i7;
                    i5 = paddingTop2;
                }
                if (b2) {
                    proGuard = (ProGuard) this.f1493d.getLayoutParams();
                    i5 += proGuard.topMargin;
                    paddingTop2 = this.f1493d.getMeasuredWidth() + i7;
                    measuredHeight = this.f1493d.getMeasuredHeight() + i5;
                    this.f1493d.layout(i7, i5, paddingTop2, measuredHeight);
                    i8 = proGuard.bottomMargin + measuredHeight;
                    i8 = this.f1506q + paddingTop2;
                } else {
                    i8 = i7;
                }
                if (obj2 != null) {
                    i7 = Math.max(measuredWidth, i8);
                }
            }
        }
        m2608a(this.f1477B, 3);
        int size = this.f1477B.size();
        i5 = i7;
        for (measuredWidth = 0; measuredWidth < size; measuredWidth++) {
            i5 = m2602a((View) this.f1477B.get(measuredWidth), i5, iArr, minimumHeightCompat);
        }
        m2608a(this.f1477B, 5);
        i7 = this.f1477B.size();
        for (measuredWidth = 0; measuredWidth < i7; measuredWidth++) {
            i6 = m2610b((View) this.f1477B.get(measuredWidth), i6, iArr, minimumHeightCompat);
        }
        m2608a(this.f1477B, 1);
        measuredWidth = m2603a(this.f1477B, iArr);
        i8 = ((((width - paddingLeft) - paddingRight) / 2) + paddingLeft) - (measuredWidth / 2);
        measuredWidth += i8;
        if (i8 < i5) {
            i8 = i5;
        } else if (measuredWidth > i6) {
            i8 -= measuredWidth - i6;
        }
        paddingLeft = this.f1477B.size();
        measuredWidth = i8;
        for (i5 = 0; i5 < paddingLeft; i5++) {
            measuredWidth = m2602a((View) this.f1477B.get(i5), measuredWidth, iArr, minimumHeightCompat);
        }
        this.f1477B.clear();
    }

    private int m2603a(List<View> list, int[] iArr) {
        int i = iArr[0];
        int i2 = iArr[1];
        int size = list.size();
        int i3 = 0;
        int i4 = 0;
        int i5 = i2;
        int i6 = i;
        while (i3 < size) {
            View view = (View) list.get(i3);
            ProGuard proGuard = (ProGuard) view.getLayoutParams();
            i6 = proGuard.leftMargin - i6;
            i = proGuard.rightMargin - i5;
            int max = Math.max(0, i6);
            int max2 = Math.max(0, i);
            i6 = Math.max(0, -i6);
            i5 = Math.max(0, -i);
            i3++;
            i4 += (view.getMeasuredWidth() + max) + max2;
        }
        return i4;
    }

    private int m2602a(View view, int i, int[] iArr, int i2) {
        ProGuard proGuard = (ProGuard) view.getLayoutParams();
        int i3 = proGuard.leftMargin - iArr[0];
        int max = Math.max(0, i3) + i;
        iArr[0] = Math.max(0, -i3);
        i3 = m2600a(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max, i3, max + measuredWidth, view.getMeasuredHeight() + i3);
        return (proGuard.rightMargin + measuredWidth) + max;
    }

    private int m2610b(View view, int i, int[] iArr, int i2) {
        ProGuard proGuard = (ProGuard) view.getLayoutParams();
        int i3 = proGuard.rightMargin - iArr[1];
        int max = i - Math.max(0, i3);
        iArr[1] = Math.max(0, -i3);
        i3 = m2600a(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max - measuredWidth, i3, max, view.getMeasuredHeight() + i3);
        return max - (proGuard.leftMargin + measuredWidth);
    }

    private int m2600a(View view, int i) {
        ProGuard proGuard = (ProGuard) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i2 = i > 0 ? (measuredHeight - i) / 2 : 0;
        switch (m2599a(proGuard.a)) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Theme_homeAsUpIndicator /*48*/:
                return getPaddingTop() - i2;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Theme_colorPrimary /*80*/:
                return (((getHeight() - getPaddingBottom()) - measuredHeight) - proGuard.bottomMargin) - i2;
            default:
                int i3;
                int paddingTop = getPaddingTop();
                int paddingBottom = getPaddingBottom();
                int height = getHeight();
                i2 = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
                if (i2 < proGuard.topMargin) {
                    i3 = proGuard.topMargin;
                } else {
                    measuredHeight = (((height - paddingBottom) - measuredHeight) - i2) - paddingTop;
                    i3 = measuredHeight < proGuard.bottomMargin ? Math.max(0, i2 - (proGuard.bottomMargin - measuredHeight)) : i2;
                }
                return i3 + paddingTop;
        }
    }

    private int m2599a(int i) {
        int i2 = i & 112;
        switch (i2) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_maxButtonHeight /*16*/:
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Theme_homeAsUpIndicator /*48*/:
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Theme_colorPrimary /*80*/:
                return i2;
            default:
                return this.f1510u & 112;
        }
    }

    private void m2608a(List<View> list, int i) {
        int i2 = 1;
        int i3 = 0;
        if (ak.m1033e(this) != 1) {
            i2 = 0;
        }
        int childCount = getChildCount();
        int a = android.support.v4.view.ProGuard.m1269a(i, ak.m1033e(this));
        list.clear();
        ProGuard proGuard;
        if (i2 != 0) {
            for (i3 = childCount - 1; i3 >= 0; i3--) {
                View childAt = getChildAt(i3);
                proGuard = (ProGuard) childAt.getLayoutParams();
                if (proGuard.f1475b == 0 && m2612b(childAt) && m2609b(proGuard.a) == a) {
                    list.add(childAt);
                }
            }
            return;
        }
        while (i3 < childCount) {
            View childAt2 = getChildAt(i3);
            proGuard = (ProGuard) childAt2.getLayoutParams();
            if (proGuard.f1475b == 0 && m2612b(childAt2) && m2609b(proGuard.a) == a) {
                list.add(childAt2);
            }
            i3++;
        }
    }

    private int m2609b(int i) {
        int e = ak.m1033e(this);
        int a = android.support.v4.view.ProGuard.m1269a(i, e) & 7;
        switch (a) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTint /*5*/:
                return a;
            default:
                return e == 1 ? 5 : 3;
        }
    }

    private boolean m2612b(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    private int m2613c(View view) {
        MarginLayoutParams marginLayoutParams = (MarginLayoutParams) view.getLayoutParams();
        return android.support.v4.view.ProGuard.m1306b(marginLayoutParams) + android.support.v4.view.ProGuard.m1305a(marginLayoutParams);
    }

    private int m2616d(View view) {
        MarginLayoutParams marginLayoutParams = (MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.bottomMargin + marginLayoutParams.topMargin;
    }

    public ProGuard m2625a(AttributeSet attributeSet) {
        return new ProGuard(getContext(), attributeSet);
    }

    protected ProGuard m2626a(LayoutParams layoutParams) {
        if (layoutParams instanceof ProGuard) {
            return new ProGuard((ProGuard) layoutParams);
        }
        if (layoutParams instanceof android.support.v7.app.ProGuard.ProGuard) {
            return new ProGuard((android.support.v7.app.ProGuard.ProGuard) layoutParams);
        }
        if (layoutParams instanceof MarginLayoutParams) {
            return new ProGuard((MarginLayoutParams) layoutParams);
        }
        return new ProGuard(layoutParams);
    }

    protected ProGuard m2639i() {
        return new ProGuard(-2, -2);
    }

    protected boolean checkLayoutParams(LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof ProGuard);
    }

    public android.support.v7.internal.widget.ProGuard getWrapper() {
        if (this.f1481F == null) {
            this.f1481F = new ad(this, true);
        }
        return this.f1481F;
    }

    private void setChildVisibilityForExpandedActionView(boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (!(((ProGuard) childAt.getLayoutParams()).f1475b == 2 || childAt == this.f1491b)) {
                int i2;
                if (z) {
                    i2 = 8;
                } else {
                    i2 = 0;
                }
                childAt.setVisibility(i2);
            }
        }
    }

    private void m2617e(View view) {
        if (((ProGuard) view.getLayoutParams()).f1475b != 2 && view != this.f1491b) {
            view.setVisibility(this.f1490a != null ? 8 : 0);
        }
    }

    public void setCollapsible(boolean z) {
        this.f1486K = z;
        requestLayout();
    }

    public void setMinimumHeight(int i) {
        this.f1487L = i;
        super.setMinimumHeight(i);
    }

    private int getMinimumHeightCompat() {
        if (VERSION.SDK_INT >= 16) {
            return ak.m1038i(this);
        }
        return this.f1487L;
    }
}
