package android.support.v7.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.media.AudioManager;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.view.ak;
import android.support.v4.view.av;
import android.support.v7.internal.widget.ActionBarContextView;
import android.support.v7.internal.widget.ContentFrameLayout;
import android.support.v7.internal.widget.ab;
import android.support.v7.internal.widget.af;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.LayoutInflater.Factory;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.Window.Callback;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.TextView;

/* compiled from: ProGuard */
class AppCompatDelegateImplV7 extends ProGuard implements android.support.v4.view.ProGuard, android.support.v7.internal.view.menu.ProGuard.ProGuard {
    private boolean f749A;
    private Rect f750B;
    private Rect f751C;
    private android.support.v7.internal.p020a.ProGuard f752D;
    android.support.v7.p019b.ProGuard f753i;
    ActionBarContextView f754j;
    private android.support.v7.internal.widget.ProGuard f755k;
    private ProGuard f756l;
    private ProGuard f757m;
    private boolean f758n;
    private ViewGroup f759o;
    private ViewGroup f760p;
    private TextView f761q;
    private View f762r;
    private boolean f763s;
    private boolean f764t;
    private boolean f765u;
    private PanelFeatureState[] f766v;
    private PanelFeatureState f767w;
    private boolean f768x;
    private int f769y;
    private final Runnable f770z;

    /* compiled from: ProGuard */
    private static final class PanelFeatureState {
        int f716a;
        int f717b;
        int f718c;
        int f719d;
        int f720e;
        int f721f;
        ViewGroup f722g;
        View f723h;
        View f724i;
        android.support.v7.internal.view.menu.ProGuard f725j;
        android.support.v7.internal.view.menu.ProGuard f726k;
        Context f727l;
        boolean f728m;
        boolean f729n;
        boolean f730o;
        public boolean f731p;
        boolean f732q;
        boolean f733r;
        Bundle f734s;

        /* compiled from: ProGuard */
        private static class SavedState implements Parcelable {
            public static final Creator<SavedState> CREATOR;
            int f713a;
            boolean f714b;
            Bundle f715c;

            private SavedState() {
            }

            public int describeContents() {
                return 0;
            }

            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.f713a);
                parcel.writeInt(this.f714b ? 1 : 0);
                if (this.f714b) {
                    parcel.writeBundle(this.f715c);
                }
            }

            private static SavedState m1734b(Parcel parcel) {
                boolean z = true;
                SavedState savedState = new SavedState();
                savedState.f713a = parcel.readInt();
                if (parcel.readInt() != 1) {
                    z = false;
                }
                savedState.f714b = z;
                if (savedState.f714b) {
                    savedState.f715c = parcel.readBundle();
                }
                return savedState;
            }

            static {
                CREATOR = new ProGuard();
            }
        }

        PanelFeatureState(int i) {
            this.f716a = i;
            this.f732q = false;
        }

        public boolean m1738a() {
            if (this.f723h == null) {
                return false;
            }
            if (this.f724i != null || this.f726k.m1988a().getCount() > 0) {
                return true;
            }
            return false;
        }

        void m1736a(Context context) {
            TypedValue typedValue = new TypedValue();
            Theme newTheme = context.getResources().newTheme();
            newTheme.setTo(context.getTheme());
            newTheme.resolveAttribute(android.support.v7.appcompat.ProGuard.attr.actionBarPopupTheme, typedValue, true);
            if (typedValue.resourceId != 0) {
                newTheme.applyStyle(typedValue.resourceId, true);
            }
            newTheme.resolveAttribute(android.support.v7.appcompat.ProGuard.attr.panelMenuListTheme, typedValue, true);
            if (typedValue.resourceId != 0) {
                newTheme.applyStyle(typedValue.resourceId, true);
            } else {
                newTheme.applyStyle(android.support.v7.appcompat.ProGuard.style.Theme_AppCompat_CompactMenu, true);
            }
            Context proGuard = new android.support.v7.internal.view.ProGuard(context, 0);
            proGuard.getTheme().setTo(newTheme);
            this.f727l = proGuard;
            TypedArray obtainStyledAttributes = proGuard.obtainStyledAttributes(android.support.v7.appcompat.ProGuard.styleable.Theme);
            this.f717b = obtainStyledAttributes.getResourceId(android.support.v7.appcompat.ProGuard.styleable.Theme_panelBackground, 0);
            this.f721f = obtainStyledAttributes.getResourceId(android.support.v7.appcompat.ProGuard.styleable.Theme_android_windowAnimationStyle, 0);
            obtainStyledAttributes.recycle();
        }

        void m1737a(android.support.v7.internal.view.menu.ProGuard proGuard) {
            if (proGuard != this.f725j) {
                if (this.f725j != null) {
                    this.f725j.m2027b(this.f726k);
                }
                this.f725j = proGuard;
                if (proGuard != null && this.f726k != null) {
                    proGuard.m2016a(this.f726k);
                }
            }
        }

        android.support.v7.internal.view.menu.ProGuard m1735a(android.support.v7.internal.view.menu.ProGuard.ProGuard proGuard) {
            if (this.f725j == null) {
                return null;
            }
            if (this.f726k == null) {
                this.f726k = new android.support.v7.internal.view.menu.ProGuard(this.f727l, android.support.v7.appcompat.ProGuard.layout.abc_list_menu_item_layout);
                this.f726k.m1991a(proGuard);
                this.f725j.m2016a(this.f726k);
            }
            return this.f726k.m1987a(this.f722g);
        }
    }

    /* renamed from: android.support.v7.app.AppCompatDelegateImplV7.a */
    private final class ProGuard implements android.support.v7.internal.view.menu.ProGuard.ProGuard {
        final /* synthetic */ AppCompatDelegateImplV7 f735a;

        private ProGuard(AppCompatDelegateImplV7 appCompatDelegateImplV7) {
            this.f735a = appCompatDelegateImplV7;
        }

        public boolean m1742a(android.support.v7.internal.view.menu.ProGuard proGuard) {
            Callback e = this.f735a.m1753e();
            if (e != null) {
                e.onMenuOpened(8, proGuard);
            }
            return true;
        }

        public void m1741a(android.support.v7.internal.view.menu.ProGuard proGuard, boolean z) {
            this.f735a.m1776b(proGuard);
        }
    }

    /* renamed from: android.support.v7.app.AppCompatDelegateImplV7.b */
    private class ProGuard extends FrameLayout {
        final /* synthetic */ AppCompatDelegateImplV7 f736a;

        public ProGuard(AppCompatDelegateImplV7 appCompatDelegateImplV7, Context context) {
            this.f736a = appCompatDelegateImplV7;
            super(context);
        }

        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return this.f736a.m1794a(keyEvent);
        }

        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0 || !m1743a((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return super.onInterceptTouchEvent(motionEvent);
            }
            this.f736a.m1761a(0);
            return true;
        }

        public void setBackgroundResource(int i) {
            setBackgroundDrawable(ab.m2310a(getContext(), i));
        }

        private boolean m1743a(int i, int i2) {
            return i < -5 || i2 < -5 || i > getWidth() + 5 || i2 > getHeight() + 5;
        }
    }

    /* renamed from: android.support.v7.app.AppCompatDelegateImplV7.c */
    private final class ProGuard implements android.support.v7.internal.view.menu.ProGuard.ProGuard {
        final /* synthetic */ AppCompatDelegateImplV7 f737a;

        private ProGuard(AppCompatDelegateImplV7 appCompatDelegateImplV7) {
            this.f737a = appCompatDelegateImplV7;
        }

        public void m1744a(android.support.v7.internal.view.menu.ProGuard proGuard, boolean z) {
            Menu menu;
            Menu p = proGuard.m2045p();
            boolean z2 = p != proGuard;
            AppCompatDelegateImplV7 appCompatDelegateImplV7 = this.f737a;
            if (z2) {
                menu = p;
            }
            PanelFeatureState a = appCompatDelegateImplV7.m1760a(menu);
            if (a == null) {
                return;
            }
            if (z2) {
                this.f737a.m1762a(a.f716a, a, p);
                this.f737a.m1764a(a, true);
                return;
            }
            this.f737a.m1764a(a, z);
        }

        public boolean m1745a(android.support.v7.internal.view.menu.ProGuard proGuard) {
            if (proGuard == null && this.f737a.d) {
                Callback e = this.f737a.m1753e();
                if (!(e == null || this.f737a.m1752d())) {
                    e.onMenuOpened(8, proGuard);
                }
            }
            return true;
        }
    }

    public ProGuard m1787a() {
        m1786h();
        ProGuard proGuard = null;
        if (this.c instanceof Activity) {
            proGuard = new android.support.v7.internal.p020a.ProGuard((Activity) this.c, this.e);
        } else if (this.c instanceof Dialog) {
            proGuard = new android.support.v7.internal.p020a.ProGuard((Dialog) this.c);
        }
        if (proGuard != null) {
            proGuard.m1812c(this.f749A);
        }
        return proGuard;
    }

    private void m1786h() {
        if (!this.f758n) {
            LayoutInflater from = LayoutInflater.from(this.a);
            if (this.h) {
                if (this.f) {
                    this.f760p = (ViewGroup) from.inflate(android.support.v7.appcompat.ProGuard.layout.abc_screen_simple_overlay_action_mode, null);
                } else {
                    this.f760p = (ViewGroup) from.inflate(android.support.v7.appcompat.ProGuard.layout.abc_screen_simple, null);
                }
                if (VERSION.SDK_INT >= 21) {
                    ak.m1019a(this.f760p, new ProGuard(this));
                } else {
                    ((android.support.v7.internal.widget.ProGuard) this.f760p).setOnFitSystemWindowsListener(new ProGuard(this));
                }
            } else if (this.g) {
                this.f760p = (ViewGroup) from.inflate(android.support.v7.appcompat.ProGuard.layout.abc_dialog_title_material, null);
            } else if (this.d) {
                Context proGuard;
                TypedValue typedValue = new TypedValue();
                this.a.getTheme().resolveAttribute(android.support.v7.appcompat.ProGuard.attr.actionBarTheme, typedValue, true);
                if (typedValue.resourceId != 0) {
                    proGuard = new android.support.v7.internal.view.ProGuard(this.a, typedValue.resourceId);
                } else {
                    proGuard = this.a;
                }
                this.f760p = (ViewGroup) LayoutInflater.from(proGuard).inflate(android.support.v7.appcompat.ProGuard.layout.abc_screen_toolbar, null);
                this.f755k = (android.support.v7.internal.widget.ProGuard) this.f760p.findViewById(android.support.v7.appcompat.ProGuard.id.decor_content_parent);
                this.f755k.setWindowCallback(m1753e());
                if (this.e) {
                    this.f755k.m2171a(9);
                }
                if (this.f763s) {
                    this.f755k.m2171a(2);
                }
                if (this.f764t) {
                    this.f755k.m2171a(5);
                }
            }
            if (this.f760p == null) {
                throw new IllegalArgumentException("AppCompat does not support the current theme features");
            }
            if (this.f755k == null) {
                this.f761q = (TextView) this.f760p.findViewById(android.support.v7.appcompat.ProGuard.id.title);
            }
            af.m2419b(this.f760p);
            ViewGroup viewGroup = (ViewGroup) this.b.findViewById(16908290);
            ContentFrameLayout contentFrameLayout = (ContentFrameLayout) this.f760p.findViewById(android.support.v7.appcompat.ProGuard.id.action_bar_activity_content);
            while (viewGroup.getChildCount() > 0) {
                View childAt = viewGroup.getChildAt(0);
                viewGroup.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            this.b.setContentView(this.f760p);
            viewGroup.setId(-1);
            contentFrameLayout.setId(16908290);
            if (viewGroup instanceof FrameLayout) {
                ((FrameLayout) viewGroup).setForeground(null);
            }
            CharSequence f = m1754f();
            if (!TextUtils.isEmpty(f)) {
                m1791a(f);
            }
            m1770a(contentFrameLayout);
            m1790a(this.f760p);
            this.f758n = true;
            PanelFeatureState a = m1758a(0, false);
            if (!m1752d()) {
                if (a == null || a.f725j == null) {
                    m1775b(8);
                }
            }
        }
    }

    void m1790a(ViewGroup viewGroup) {
    }

    private void m1770a(ContentFrameLayout contentFrameLayout) {
        contentFrameLayout.m2254a(this.f759o.getPaddingLeft(), this.f759o.getPaddingTop(), this.f759o.getPaddingRight(), this.f759o.getPaddingBottom());
        TypedArray obtainStyledAttributes = this.a.obtainStyledAttributes(android.support.v7.appcompat.ProGuard.styleable.Theme);
        obtainStyledAttributes.getValue(android.support.v7.appcompat.ProGuard.styleable.Theme_windowMinWidthMajor, contentFrameLayout.getMinWidthMajor());
        obtainStyledAttributes.getValue(android.support.v7.appcompat.ProGuard.styleable.Theme_windowMinWidthMinor, contentFrameLayout.getMinWidthMinor());
        if (obtainStyledAttributes.hasValue(android.support.v7.appcompat.ProGuard.styleable.Theme_windowFixedWidthMajor)) {
            obtainStyledAttributes.getValue(android.support.v7.appcompat.ProGuard.styleable.Theme_windowFixedWidthMajor, contentFrameLayout.getFixedWidthMajor());
        }
        if (obtainStyledAttributes.hasValue(android.support.v7.appcompat.ProGuard.styleable.Theme_windowFixedWidthMinor)) {
            obtainStyledAttributes.getValue(android.support.v7.appcompat.ProGuard.styleable.Theme_windowFixedWidthMinor, contentFrameLayout.getFixedWidthMinor());
        }
        if (obtainStyledAttributes.hasValue(android.support.v7.appcompat.ProGuard.styleable.Theme_windowFixedHeightMajor)) {
            obtainStyledAttributes.getValue(android.support.v7.appcompat.ProGuard.styleable.Theme_windowFixedHeightMajor, contentFrameLayout.getFixedHeightMajor());
        }
        if (obtainStyledAttributes.hasValue(android.support.v7.appcompat.ProGuard.styleable.Theme_windowFixedHeightMinor)) {
            obtainStyledAttributes.getValue(android.support.v7.appcompat.ProGuard.styleable.Theme_windowFixedHeightMinor, contentFrameLayout.getFixedHeightMinor());
        }
        obtainStyledAttributes.recycle();
        contentFrameLayout.requestLayout();
    }

    void m1791a(CharSequence charSequence) {
        if (this.f755k != null) {
            this.f755k.setWindowTitle(charSequence);
        } else if (m1750b() != null) {
            m1750b().m1807a(charSequence);
        } else if (this.f761q != null) {
            this.f761q.setText(charSequence);
        }
    }

    public boolean m1793a(android.support.v7.internal.view.menu.ProGuard proGuard, MenuItem menuItem) {
        Callback e = m1753e();
        if (!(e == null || m1752d())) {
            PanelFeatureState a = m1760a(proGuard.m2045p());
            if (a != null) {
                return e.onMenuItemSelected(a.f716a, menuItem);
            }
        }
        return false;
    }

    public void m1789a(android.support.v7.internal.view.menu.ProGuard proGuard) {
        m1769a(proGuard, true);
    }

    boolean m1799g() {
        if (this.f753i != null) {
            this.f753i.m1819a();
            return true;
        }
        ProGuard b = m1750b();
        if (b == null || !b.m1811b()) {
            return false;
        }
        return true;
    }

    boolean m1792a(int i, KeyEvent keyEvent) {
        ProGuard b = m1750b();
        if (b != null && b.m1809a(i, keyEvent)) {
            return true;
        }
        if (this.f767w == null || !m1772a(this.f767w, keyEvent.getKeyCode(), keyEvent, 1)) {
            if (this.f767w == null) {
                PanelFeatureState a = m1758a(0, true);
                m1778b(a, keyEvent);
                boolean a2 = m1772a(a, keyEvent.getKeyCode(), keyEvent, 1);
                a.f728m = false;
                if (a2) {
                    return true;
                }
            }
            return false;
        } else if (this.f767w == null) {
            return true;
        } else {
            this.f767w.f729n = true;
            return true;
        }
    }

    boolean m1794a(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        return (keyEvent.getAction() == 0 ? 1 : null) != null ? m1798c(keyCode, keyEvent) : m1796b(keyCode, keyEvent);
    }

    boolean m1796b(int i, KeyEvent keyEvent) {
        switch (i) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_theme /*4*/:
                PanelFeatureState a = m1758a(0, false);
                if (a != null && a.f730o) {
                    m1764a(a, true);
                    return true;
                } else if (m1799g()) {
                    return true;
                }
                break;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Theme_colorAccent /*82*/:
                m1785e(0, keyEvent);
                return true;
        }
        return false;
    }

    boolean m1798c(int i, KeyEvent keyEvent) {
        switch (i) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Theme_colorAccent /*82*/:
                m1784d(0, keyEvent);
                return true;
            default:
                if (VERSION.SDK_INT < 11) {
                    return m1792a(i, keyEvent);
                }
                return false;
        }
    }

    public View m1795b(View view, String str, Context context, AttributeSet attributeSet) {
        boolean z;
        boolean z2 = VERSION.SDK_INT < 21;
        if (this.f752D == null) {
            this.f752D = new android.support.v7.internal.p020a.ProGuard(this.a);
        }
        if (!z2 || !this.f758n || view == null || view.getId() == 16908290) {
            z = false;
        } else {
            z = true;
        }
        return this.f752D.m1824a(view, str, context, attributeSet, z, z2);
    }

    public final View m1788a(View view, String str, Context context, AttributeSet attributeSet) {
        View c = m1797c(view, str, context, attributeSet);
        return c != null ? c : m1795b(view, str, context, attributeSet);
    }

    View m1797c(View view, String str, Context context, AttributeSet attributeSet) {
        if (this.c instanceof Factory) {
            View onCreateView = ((Factory) this.c).onCreateView(str, context, attributeSet);
            if (onCreateView != null) {
                return onCreateView;
            }
        }
        return null;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void m1763a(android.support.v7.app.AppCompatDelegateImplV7.PanelFeatureState r11, android.view.KeyEvent r12) {
        /*
        r10 = this;
        r1 = -1;
        r3 = 0;
        r9 = 1;
        r2 = -2;
        r0 = r11.f730o;
        if (r0 != 0) goto L_0x000e;
    L_0x0008:
        r0 = r10.m1752d();
        if (r0 == 0) goto L_0x000f;
    L_0x000e:
        return;
    L_0x000f:
        r0 = r11.f716a;
        if (r0 != 0) goto L_0x0034;
    L_0x0013:
        r4 = r10.a;
        r0 = r4.getResources();
        r0 = r0.getConfiguration();
        r0 = r0.screenLayout;
        r0 = r0 & 15;
        r5 = 4;
        if (r0 != r5) goto L_0x0048;
    L_0x0024:
        r0 = r9;
    L_0x0025:
        r4 = r4.getApplicationInfo();
        r4 = r4.targetSdkVersion;
        r5 = 11;
        if (r4 < r5) goto L_0x004a;
    L_0x002f:
        r4 = r9;
    L_0x0030:
        if (r0 == 0) goto L_0x0034;
    L_0x0032:
        if (r4 != 0) goto L_0x000e;
    L_0x0034:
        r0 = r10.m1753e();
        if (r0 == 0) goto L_0x004c;
    L_0x003a:
        r4 = r11.f716a;
        r5 = r11.f725j;
        r0 = r0.onMenuOpened(r4, r5);
        if (r0 != 0) goto L_0x004c;
    L_0x0044:
        r10.m1764a(r11, r9);
        goto L_0x000e;
    L_0x0048:
        r0 = r3;
        goto L_0x0025;
    L_0x004a:
        r4 = r3;
        goto L_0x0030;
    L_0x004c:
        r0 = r10.a;
        r4 = "window";
        r0 = r0.getSystemService(r4);
        r8 = r0;
        r8 = (android.view.WindowManager) r8;
        if (r8 == 0) goto L_0x000e;
    L_0x0059:
        r0 = r10.m1778b(r11, r12);
        if (r0 == 0) goto L_0x000e;
    L_0x005f:
        r0 = r11.f722g;
        if (r0 == 0) goto L_0x0067;
    L_0x0063:
        r0 = r11.f732q;
        if (r0 == 0) goto L_0x00f1;
    L_0x0067:
        r0 = r11.f722g;
        if (r0 != 0) goto L_0x00df;
    L_0x006b:
        r0 = r10.m1771a(r11);
        if (r0 == 0) goto L_0x000e;
    L_0x0071:
        r0 = r11.f722g;
        if (r0 == 0) goto L_0x000e;
    L_0x0075:
        r0 = r10.m1781c(r11);
        if (r0 == 0) goto L_0x000e;
    L_0x007b:
        r0 = r11.m1738a();
        if (r0 == 0) goto L_0x000e;
    L_0x0081:
        r0 = r11.f723h;
        r0 = r0.getLayoutParams();
        if (r0 != 0) goto L_0x0103;
    L_0x0089:
        r0 = new android.view.ViewGroup$LayoutParams;
        r0.<init>(r2, r2);
        r1 = r0;
    L_0x008f:
        r0 = r11.f717b;
        r4 = r11.f722g;
        r4.setBackgroundResource(r0);
        r0 = r11.f723h;
        r0 = r0.getParent();
        if (r0 == 0) goto L_0x00a9;
    L_0x009e:
        r4 = r0 instanceof android.view.ViewGroup;
        if (r4 == 0) goto L_0x00a9;
    L_0x00a2:
        r0 = (android.view.ViewGroup) r0;
        r4 = r11.f723h;
        r0.removeView(r4);
    L_0x00a9:
        r0 = r11.f722g;
        r4 = r11.f723h;
        r0.addView(r4, r1);
        r0 = r11.f723h;
        r0 = r0.hasFocus();
        if (r0 != 0) goto L_0x00bd;
    L_0x00b8:
        r0 = r11.f723h;
        r0.requestFocus();
    L_0x00bd:
        r1 = r2;
    L_0x00be:
        r11.f729n = r3;
        r0 = new android.view.WindowManager$LayoutParams;
        r3 = r11.f719d;
        r4 = r11.f720e;
        r5 = 1002; // 0x3ea float:1.404E-42 double:4.95E-321;
        r6 = 8519680; // 0x820000 float:1.1938615E-38 double:4.209281E-317;
        r7 = -3;
        r0.<init>(r1, r2, r3, r4, r5, r6, r7);
        r1 = r11.f718c;
        r0.gravity = r1;
        r1 = r11.f721f;
        r0.windowAnimations = r1;
        r1 = r11.f722g;
        r8.addView(r1, r0);
        r11.f730o = r9;
        goto L_0x000e;
    L_0x00df:
        r0 = r11.f732q;
        if (r0 == 0) goto L_0x0075;
    L_0x00e3:
        r0 = r11.f722g;
        r0 = r0.getChildCount();
        if (r0 <= 0) goto L_0x0075;
    L_0x00eb:
        r0 = r11.f722g;
        r0.removeAllViews();
        goto L_0x0075;
    L_0x00f1:
        r0 = r11.f724i;
        if (r0 == 0) goto L_0x0101;
    L_0x00f5:
        r0 = r11.f724i;
        r0 = r0.getLayoutParams();
        if (r0 == 0) goto L_0x0101;
    L_0x00fd:
        r0 = r0.width;
        if (r0 == r1) goto L_0x00be;
    L_0x0101:
        r1 = r2;
        goto L_0x00be;
    L_0x0103:
        r1 = r0;
        goto L_0x008f;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.app.AppCompatDelegateImplV7.a(android.support.v7.app.AppCompatDelegateImplV7$PanelFeatureState, android.view.KeyEvent):void");
    }

    private boolean m1771a(PanelFeatureState panelFeatureState) {
        panelFeatureState.m1736a(m1751c());
        panelFeatureState.f722g = new ProGuard(this, panelFeatureState.f727l);
        panelFeatureState.f718c = 81;
        return true;
    }

    private void m1769a(android.support.v7.internal.view.menu.ProGuard proGuard, boolean z) {
        if (this.f755k == null || !this.f755k.m2173d() || (av.m1091b(ViewConfiguration.get(this.a)) && !this.f755k.m2175f())) {
            PanelFeatureState a = m1758a(0, true);
            a.f732q = true;
            m1764a(a, false);
            m1763a(a, null);
            return;
        }
        Callback e = m1753e();
        if (this.f755k.m2174e() && z) {
            this.f755k.m2177h();
            if (!m1752d()) {
                e.onPanelClosed(8, m1758a(0, true).f725j);
            }
        } else if (e != null && !m1752d()) {
            if (this.f768x && (this.f769y & 1) != 0) {
                this.f759o.removeCallbacks(this.f770z);
                this.f770z.run();
            }
            PanelFeatureState a2 = m1758a(0, true);
            if (a2.f725j != null && !a2.f733r && e.onPreparePanel(0, a2.f724i, a2.f725j)) {
                e.onMenuOpened(8, a2.f725j);
                this.f755k.m2176g();
            }
        }
    }

    private boolean m1777b(PanelFeatureState panelFeatureState) {
        Context proGuard;
        android.support.v7.internal.view.menu.ProGuard proGuard2;
        Context context = this.a;
        if ((panelFeatureState.f716a == 0 || panelFeatureState.f716a == 8) && this.f755k != null) {
            TypedValue typedValue = new TypedValue();
            Theme theme = context.getTheme();
            theme.resolveAttribute(android.support.v7.appcompat.ProGuard.attr.actionBarTheme, typedValue, true);
            Theme theme2 = null;
            if (typedValue.resourceId != 0) {
                theme2 = context.getResources().newTheme();
                theme2.setTo(theme);
                theme2.applyStyle(typedValue.resourceId, true);
                theme2.resolveAttribute(android.support.v7.appcompat.ProGuard.attr.actionBarWidgetTheme, typedValue, true);
            } else {
                theme.resolveAttribute(android.support.v7.appcompat.ProGuard.attr.actionBarWidgetTheme, typedValue, true);
            }
            if (typedValue.resourceId != 0) {
                if (theme2 == null) {
                    theme2 = context.getResources().newTheme();
                    theme2.setTo(theme);
                }
                theme2.applyStyle(typedValue.resourceId, true);
            }
            Theme theme3 = theme2;
            if (theme3 != null) {
                proGuard = new android.support.v7.internal.view.ProGuard(context, 0);
                proGuard.getTheme().setTo(theme3);
                proGuard2 = new android.support.v7.internal.view.menu.ProGuard(proGuard);
                proGuard2.m2014a((android.support.v7.internal.view.menu.ProGuard.ProGuard) this);
                panelFeatureState.m1737a(proGuard2);
                return true;
            }
        }
        proGuard = context;
        proGuard2 = new android.support.v7.internal.view.menu.ProGuard(proGuard);
        proGuard2.m2014a((android.support.v7.internal.view.menu.ProGuard.ProGuard) this);
        panelFeatureState.m1737a(proGuard2);
        return true;
    }

    private boolean m1781c(PanelFeatureState panelFeatureState) {
        if (panelFeatureState.f724i != null) {
            panelFeatureState.f723h = panelFeatureState.f724i;
            return true;
        } else if (panelFeatureState.f725j == null) {
            return false;
        } else {
            if (this.f757m == null) {
                this.f757m = new ProGuard();
            }
            panelFeatureState.f723h = (View) panelFeatureState.m1735a(this.f757m);
            return panelFeatureState.f723h != null;
        }
    }

    private boolean m1778b(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        if (m1752d()) {
            return false;
        }
        if (panelFeatureState.f728m) {
            return true;
        }
        if (!(this.f767w == null || this.f767w == panelFeatureState)) {
            m1764a(this.f767w, false);
        }
        Callback e = m1753e();
        if (e != null) {
            panelFeatureState.f724i = e.onCreatePanelView(panelFeatureState.f716a);
        }
        boolean z = panelFeatureState.f716a == 0 || panelFeatureState.f716a == 8;
        if (z && this.f755k != null) {
            this.f755k.m2178i();
        }
        if (panelFeatureState.f724i == null) {
            if (panelFeatureState.f725j == null || panelFeatureState.f733r) {
                if (panelFeatureState.f725j == null && (!m1777b(panelFeatureState) || panelFeatureState.f725j == null)) {
                    return false;
                }
                if (z && this.f755k != null) {
                    if (this.f756l == null) {
                        this.f756l = new ProGuard();
                    }
                    this.f755k.m2172a(panelFeatureState.f725j, this.f756l);
                }
                panelFeatureState.f725j.m2036g();
                if (e.onCreatePanelMenu(panelFeatureState.f716a, panelFeatureState.f725j)) {
                    panelFeatureState.f733r = false;
                } else {
                    panelFeatureState.m1737a(null);
                    if (!z || this.f755k == null) {
                        return false;
                    }
                    this.f755k.m2172a(null, this.f756l);
                    return false;
                }
            }
            panelFeatureState.f725j.m2036g();
            if (panelFeatureState.f734s != null) {
                panelFeatureState.f725j.m2025b(panelFeatureState.f734s);
                panelFeatureState.f734s = null;
            }
            if (e.onPreparePanel(0, panelFeatureState.f724i, panelFeatureState.f725j)) {
                if (KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1) {
                    z = true;
                } else {
                    z = false;
                }
                panelFeatureState.f731p = z;
                panelFeatureState.f725j.setQwertyMode(panelFeatureState.f731p);
                panelFeatureState.f725j.m2037h();
            } else {
                if (z && this.f755k != null) {
                    this.f755k.m2172a(null, this.f756l);
                }
                panelFeatureState.f725j.m2037h();
                return false;
            }
        }
        panelFeatureState.f728m = true;
        panelFeatureState.f729n = false;
        this.f767w = panelFeatureState;
        return true;
    }

    private void m1776b(android.support.v7.internal.view.menu.ProGuard proGuard) {
        if (!this.f765u) {
            this.f765u = true;
            this.f755k.m2179j();
            Callback e = m1753e();
            if (!(e == null || m1752d())) {
                e.onPanelClosed(8, proGuard);
            }
            this.f765u = false;
        }
    }

    private void m1761a(int i) {
        m1764a(m1758a(i, true), true);
    }

    private void m1764a(PanelFeatureState panelFeatureState, boolean z) {
        if (z && panelFeatureState.f716a == 0 && this.f755k != null && this.f755k.m2174e()) {
            m1776b(panelFeatureState.f725j);
            return;
        }
        boolean z2 = panelFeatureState.f730o;
        WindowManager windowManager = (WindowManager) this.a.getSystemService("window");
        if (!(windowManager == null || !z2 || panelFeatureState.f722g == null)) {
            windowManager.removeView(panelFeatureState.f722g);
        }
        panelFeatureState.f728m = false;
        panelFeatureState.f729n = false;
        panelFeatureState.f730o = false;
        if (z2 && z) {
            m1762a(panelFeatureState.f716a, panelFeatureState, null);
        }
        panelFeatureState.f723h = null;
        panelFeatureState.f732q = true;
        if (this.f767w == panelFeatureState) {
            this.f767w = null;
        }
    }

    private boolean m1784d(int i, KeyEvent keyEvent) {
        if (keyEvent.getRepeatCount() == 0) {
            PanelFeatureState a = m1758a(i, true);
            if (!a.f730o) {
                return m1778b(a, keyEvent);
            }
        }
        return false;
    }

    private void m1785e(int i, KeyEvent keyEvent) {
        boolean z = true;
        if (this.f753i == null) {
            PanelFeatureState a = m1758a(i, true);
            if (i != 0 || this.f755k == null || !this.f755k.m2173d() || av.m1091b(ViewConfiguration.get(this.a))) {
                boolean z2;
                if (a.f730o || a.f729n) {
                    z2 = a.f730o;
                    m1764a(a, true);
                    z = z2;
                } else {
                    if (a.f728m) {
                        if (a.f733r) {
                            a.f728m = false;
                            z2 = m1778b(a, keyEvent);
                        } else {
                            z2 = true;
                        }
                        if (z2) {
                            m1763a(a, keyEvent);
                        }
                    }
                    z = false;
                }
            } else if (this.f755k.m2174e()) {
                z = this.f755k.m2177h();
            } else {
                if (!m1752d() && m1778b(a, keyEvent)) {
                    z = this.f755k.m2176g();
                }
                z = false;
            }
            if (z) {
                AudioManager audioManager = (AudioManager) this.a.getSystemService("audio");
                if (audioManager != null) {
                    audioManager.playSoundEffect(0);
                } else {
                    Log.w("AppCompatDelegate", "Couldn't get audio manager");
                }
            }
        }
    }

    private void m1762a(int i, PanelFeatureState panelFeatureState, Menu menu) {
        if (menu == null) {
            if (panelFeatureState == null && i >= 0 && i < this.f766v.length) {
                panelFeatureState = this.f766v[i];
            }
            if (panelFeatureState != null) {
                menu = panelFeatureState.f725j;
            }
        }
        if (panelFeatureState == null || panelFeatureState.f730o) {
            Callback e = m1753e();
            if (e != null) {
                e.onPanelClosed(i, menu);
            }
        }
    }

    private PanelFeatureState m1760a(Menu menu) {
        PanelFeatureState[] panelFeatureStateArr = this.f766v;
        int length = panelFeatureStateArr != null ? panelFeatureStateArr.length : 0;
        for (int i = 0; i < length; i++) {
            PanelFeatureState panelFeatureState = panelFeatureStateArr[i];
            if (panelFeatureState != null && panelFeatureState.f725j == menu) {
                return panelFeatureState;
            }
        }
        return null;
    }

    private PanelFeatureState m1758a(int i, boolean z) {
        Object obj = this.f766v;
        if (obj == null || obj.length <= i) {
            Object obj2 = new PanelFeatureState[(i + 1)];
            if (obj != null) {
                System.arraycopy(obj, 0, obj2, 0, obj.length);
            }
            this.f766v = obj2;
            obj = obj2;
        }
        PanelFeatureState panelFeatureState = obj[i];
        if (panelFeatureState != null) {
            return panelFeatureState;
        }
        panelFeatureState = new PanelFeatureState(i);
        obj[i] = panelFeatureState;
        return panelFeatureState;
    }

    private boolean m1772a(PanelFeatureState panelFeatureState, int i, KeyEvent keyEvent, int i2) {
        boolean z = false;
        if (!keyEvent.isSystem()) {
            if ((panelFeatureState.f728m || m1778b(panelFeatureState, keyEvent)) && panelFeatureState.f725j != null) {
                z = panelFeatureState.f725j.performShortcut(i, keyEvent, i2);
            }
            if (z && (i2 & 1) == 0 && this.f755k == null) {
                m1764a(panelFeatureState, true);
            }
        }
        return z;
    }

    private void m1775b(int i) {
        this.f769y |= 1 << i;
        if (!this.f768x && this.f759o != null) {
            ak.m1020a(this.f759o, this.f770z);
            this.f768x = true;
        }
    }

    private void m1780c(int i) {
        PanelFeatureState a = m1758a(i, true);
        if (a.f725j != null) {
            Bundle bundle = new Bundle();
            a.f725j.m2013a(bundle);
            if (bundle.size() > 0) {
                a.f734s = bundle;
            }
            a.f725j.m2036g();
            a.f725j.clear();
        }
        a.f733r = true;
        a.f732q = true;
        if ((i == 8 || i == 0) && this.f755k != null) {
            a = m1758a(0, false);
            if (a != null) {
                a.f728m = false;
                m1778b(a, null);
            }
        }
    }

    private int m1782d(int i) {
        int i2;
        int i3 = 1;
        int i4 = 0;
        if (this.f754j == null || !(this.f754j.getLayoutParams() instanceof MarginLayoutParams)) {
            i2 = 0;
        } else {
            int i5;
            MarginLayoutParams marginLayoutParams = (MarginLayoutParams) this.f754j.getLayoutParams();
            if (this.f754j.isShown()) {
                if (this.f750B == null) {
                    this.f750B = new Rect();
                    this.f751C = new Rect();
                }
                Rect rect = this.f750B;
                Rect rect2 = this.f751C;
                rect.set(0, i, 0, 0);
                af.m2417a(this.f760p, rect, rect2);
                if (marginLayoutParams.topMargin != (rect2.top == 0 ? i : 0)) {
                    marginLayoutParams.topMargin = i;
                    if (this.f762r == null) {
                        this.f762r = new View(this.a);
                        this.f762r.setBackgroundColor(this.a.getResources().getColor(android.support.v7.appcompat.ProGuard.color.abc_input_method_navigation_guard));
                        this.f760p.addView(this.f762r, -1, new LayoutParams(-1, i));
                        i5 = 1;
                    } else {
                        LayoutParams layoutParams = this.f762r.getLayoutParams();
                        if (layoutParams.height != i) {
                            layoutParams.height = i;
                            this.f762r.setLayoutParams(layoutParams);
                        }
                        i5 = 1;
                    }
                } else {
                    i5 = 0;
                }
                if (this.f762r == null) {
                    i3 = 0;
                }
                if (!(this.f || i3 == 0)) {
                    i = 0;
                }
                int i6 = i5;
                i5 = i3;
                i3 = i6;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                i5 = 0;
            } else {
                i3 = 0;
                i5 = 0;
            }
            if (i3 != 0) {
                this.f754j.setLayoutParams(marginLayoutParams);
            }
            i2 = i5;
        }
        if (this.f762r != null) {
            View view = this.f762r;
            if (i2 == 0) {
                i4 = 8;
            }
            view.setVisibility(i4);
        }
        return i;
    }
}
