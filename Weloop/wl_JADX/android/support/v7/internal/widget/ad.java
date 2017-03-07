package android.support.v7.internal.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v7.appcompat.ProGuard;
import android.support.v7.widget.ActionMenuPresenter;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.Window.Callback;

/* compiled from: ProGuard */
public class ad implements ProGuard {
    private Toolbar f1260a;
    private int f1261b;
    private View f1262c;
    private View f1263d;
    private Drawable f1264e;
    private Drawable f1265f;
    private Drawable f1266g;
    private boolean f1267h;
    private CharSequence f1268i;
    private CharSequence f1269j;
    private CharSequence f1270k;
    private Callback f1271l;
    private boolean f1272m;
    private ActionMenuPresenter f1273n;
    private int f1274o;
    private final ab f1275p;
    private int f1276q;
    private Drawable f1277r;

    public ad(Toolbar toolbar, boolean z) {
        this(toolbar, z, ProGuard.string.abc_action_bar_up_description, ProGuard.drawable.abc_ic_ab_back_mtrl_am_alpha);
    }

    public ad(Toolbar toolbar, boolean z, int i, int i2) {
        this.f1274o = 0;
        this.f1276q = 0;
        this.f1260a = toolbar;
        this.f1268i = toolbar.getTitle();
        this.f1269j = toolbar.getSubtitle();
        this.f1267h = this.f1268i != null;
        this.f1266g = toolbar.getNavigationIcon();
        if (z) {
            ac a = ac.m2328a(toolbar.getContext(), null, ProGuard.styleable.ActionBar, ProGuard.attr.actionBarStyle, 0);
            CharSequence c = a.m2339c(ProGuard.styleable.ActionBar_title);
            if (!TextUtils.isEmpty(c)) {
                m2391b(c);
            }
            c = a.m2339c(ProGuard.styleable.ActionBar_subtitle);
            if (!TextUtils.isEmpty(c)) {
                m2396c(c);
            }
            Drawable a2 = a.m2332a(ProGuard.styleable.ActionBar_logo);
            if (a2 != null) {
                m2395c(a2);
            }
            a2 = a.m2332a(ProGuard.styleable.ActionBar_icon);
            if (this.f1266g == null && a2 != null) {
                m2382a(a2);
            }
            a2 = a.m2332a(ProGuard.styleable.ActionBar_homeAsUpIndicator);
            if (a2 != null) {
                m2400d(a2);
            }
            m2394c(a.m2331a(ProGuard.styleable.ActionBar_displayOptions, 0));
            int f = a.m2344f(ProGuard.styleable.ActionBar_customNavigationLayout, 0);
            if (f != 0) {
                m2385a(LayoutInflater.from(this.f1260a.getContext()).inflate(f, this.f1260a, false));
                m2394c(this.f1261b | 16);
            }
            f = a.m2342e(ProGuard.styleable.ActionBar_height, 0);
            if (f > 0) {
                LayoutParams layoutParams = this.f1260a.getLayoutParams();
                layoutParams.height = f;
                this.f1260a.setLayoutParams(layoutParams);
            }
            f = a.m2337c(ProGuard.styleable.ActionBar_contentInsetStart, -1);
            int c2 = a.m2337c(ProGuard.styleable.ActionBar_contentInsetEnd, -1);
            if (f >= 0 || c2 >= 0) {
                this.f1260a.m2627a(Math.max(f, 0), Math.max(c2, 0));
            }
            f = a.m2344f(ProGuard.styleable.ActionBar_titleTextStyle, 0);
            if (f != 0) {
                this.f1260a.m2628a(this.f1260a.getContext(), f);
            }
            f = a.m2344f(ProGuard.styleable.ActionBar_subtitleTextStyle, 0);
            if (f != 0) {
                this.f1260a.m2631b(this.f1260a.getContext(), f);
            }
            int f2 = a.m2344f(ProGuard.styleable.ActionBar_popupTheme, 0);
            if (f2 != 0) {
                this.f1260a.setPopupTheme(f2);
            }
            a.m2336b();
            this.f1275p = a.m2338c();
        } else {
            this.f1261b = m2376q();
            this.f1275p = ab.m2311a(toolbar.getContext());
        }
        m2399d(i);
        this.f1270k = this.f1260a.getNavigationContentDescription();
        m2390b(this.f1275p.m2322a(i2));
        this.f1260a.setNavigationOnClickListener(new ae(this));
    }

    public void m2399d(int i) {
        if (i != this.f1276q) {
            this.f1276q = i;
            if (TextUtils.isEmpty(this.f1260a.getNavigationContentDescription())) {
                m2403e(this.f1276q);
            }
        }
    }

    public void m2390b(Drawable drawable) {
        if (this.f1277r != drawable) {
            this.f1277r = drawable;
            m2379t();
        }
    }

    private int m2376q() {
        if (this.f1260a.getNavigationIcon() != null) {
            return 15;
        }
        return 11;
    }

    public Context m2380a() {
        return this.f1260a.getContext();
    }

    public boolean m2393b() {
        return false;
    }

    public boolean m2397c() {
        return this.f1260a.m2637g();
    }

    public void m2398d() {
        this.f1260a.m2638h();
    }

    public void m2386a(Callback callback) {
        this.f1271l = callback;
    }

    public void m2387a(CharSequence charSequence) {
        if (!this.f1267h) {
            m2375e(charSequence);
        }
    }

    public CharSequence m2402e() {
        return this.f1260a.getTitle();
    }

    public void m2391b(CharSequence charSequence) {
        this.f1267h = true;
        m2375e(charSequence);
    }

    private void m2375e(CharSequence charSequence) {
        this.f1268i = charSequence;
        if ((this.f1261b & 8) != 0) {
            this.f1260a.setTitle(charSequence);
        }
    }

    public void m2396c(CharSequence charSequence) {
        this.f1269j = charSequence;
        if ((this.f1261b & 8) != 0) {
            this.f1260a.setSubtitle(charSequence);
        }
    }

    public void m2404f() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    public void m2405g() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    public void m2381a(int i) {
        m2382a(i != 0 ? this.f1275p.m2322a(i) : null);
    }

    public void m2382a(Drawable drawable) {
        this.f1264e = drawable;
        m2377r();
    }

    public void m2389b(int i) {
        m2395c(i != 0 ? this.f1275p.m2322a(i) : null);
    }

    public void m2395c(Drawable drawable) {
        this.f1265f = drawable;
        m2377r();
    }

    private void m2377r() {
        Drawable drawable = null;
        if ((this.f1261b & 2) != 0) {
            drawable = (this.f1261b & 1) != 0 ? this.f1265f != null ? this.f1265f : this.f1264e : this.f1264e;
        }
        this.f1260a.setLogo(drawable);
    }

    public boolean m2406h() {
        return this.f1260a.m2630a();
    }

    public boolean m2407i() {
        return this.f1260a.m2632b();
    }

    public boolean m2408j() {
        return this.f1260a.m2633c();
    }

    public boolean m2409k() {
        return this.f1260a.m2634d();
    }

    public boolean m2410l() {
        return this.f1260a.m2635e();
    }

    public void m2411m() {
        this.f1272m = true;
    }

    public void m2384a(Menu menu, android.support.v7.internal.view.menu.ProGuard.ProGuard proGuard) {
        if (this.f1273n == null) {
            this.f1273n = new ActionMenuPresenter(this.f1260a.getContext());
            this.f1273n.m1965a(ProGuard.id.action_menu_presenter);
        }
        this.f1273n.m1969a(proGuard);
        this.f1260a.m2629a((android.support.v7.internal.view.menu.ProGuard) menu, this.f1273n);
    }

    public void m2412n() {
        this.f1260a.m2636f();
    }

    public int m2413o() {
        return this.f1261b;
    }

    public void m2394c(int i) {
        int i2 = this.f1261b ^ i;
        this.f1261b = i;
        if (i2 != 0) {
            if ((i2 & 4) != 0) {
                if ((i & 4) != 0) {
                    m2379t();
                    m2378s();
                } else {
                    this.f1260a.setNavigationIcon(null);
                }
            }
            if ((i2 & 3) != 0) {
                m2377r();
            }
            if ((i2 & 8) != 0) {
                if ((i & 8) != 0) {
                    this.f1260a.setTitle(this.f1268i);
                    this.f1260a.setSubtitle(this.f1269j);
                } else {
                    this.f1260a.setTitle(null);
                    this.f1260a.setSubtitle(null);
                }
            }
            if ((i2 & 16) != 0 && this.f1263d != null) {
                if ((i & 16) != 0) {
                    this.f1260a.addView(this.f1263d);
                } else {
                    this.f1260a.removeView(this.f1263d);
                }
            }
        }
    }

    public void m2383a(ProGuard proGuard) {
        if (this.f1262c != null && this.f1262c.getParent() == this.f1260a) {
            this.f1260a.removeView(this.f1262c);
        }
        this.f1262c = proGuard;
        if (proGuard != null && this.f1274o == 2) {
            this.f1260a.addView(this.f1262c, 0);
            Toolbar.ProGuard proGuard2 = (Toolbar.ProGuard) this.f1262c.getLayoutParams();
            proGuard2.width = -2;
            proGuard2.height = -2;
            proGuard2.a = 8388691;
            proGuard.setAllowCollapse(true);
        }
    }

    public void m2388a(boolean z) {
        this.f1260a.setCollapsible(z);
    }

    public void m2392b(boolean z) {
    }

    public int m2414p() {
        return this.f1274o;
    }

    public void m2385a(View view) {
        if (!(this.f1263d == null || (this.f1261b & 16) == 0)) {
            this.f1260a.removeView(this.f1263d);
        }
        this.f1263d = view;
        if (view != null && (this.f1261b & 16) != 0) {
            this.f1260a.addView(this.f1263d);
        }
    }

    public void m2400d(Drawable drawable) {
        this.f1266g = drawable;
        m2379t();
    }

    public void m2401d(CharSequence charSequence) {
        this.f1270k = charSequence;
        m2378s();
    }

    public void m2403e(int i) {
        m2401d(i == 0 ? null : m2380a().getString(i));
    }

    private void m2378s() {
        if ((this.f1261b & 4) == 0) {
            return;
        }
        if (TextUtils.isEmpty(this.f1270k)) {
            this.f1260a.setNavigationContentDescription(this.f1276q);
        } else {
            this.f1260a.setNavigationContentDescription(this.f1270k);
        }
    }

    private void m2379t() {
        if ((this.f1261b & 4) != 0) {
            this.f1260a.setNavigationIcon(this.f1266g != null ? this.f1266g : this.f1277r);
        }
    }
}
