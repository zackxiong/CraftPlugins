package android.support.v7.internal.view;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.SubMenu;
import android.view.View;
import cn.sharesdk.framework.Platform;
import java.lang.reflect.Method;

/* renamed from: android.support.v7.internal.view.c */
public class ProGuard extends MenuInflater {
    private static final Class<?>[] f849a;
    private static final Class<?>[] f850b;
    private final Object[] f851c;
    private final Object[] f852d;
    private Context f853e;
    private Object f854f;

    /* renamed from: android.support.v7.internal.view.c.a */
    private static class ProGuard implements OnMenuItemClickListener {
        private static final Class<?>[] f820a;
        private Object f821b;
        private Method f822c;

        static {
            f820a = new Class[]{MenuItem.class};
        }

        public ProGuard(Object obj, String str) {
            this.f821b = obj;
            Class cls = obj.getClass();
            try {
                this.f822c = cls.getMethod(str, f820a);
            } catch (Throwable e) {
                InflateException inflateException = new InflateException("Couldn't resolve menu item onClick handler " + str + " in class " + cls.getName());
                inflateException.initCause(e);
                throw inflateException;
            }
        }

        public boolean onMenuItemClick(MenuItem menuItem) {
            try {
                if (this.f822c.getReturnType() == Boolean.TYPE) {
                    return ((Boolean) this.f822c.invoke(this.f821b, new Object[]{menuItem})).booleanValue();
                }
                this.f822c.invoke(this.f821b, new Object[]{menuItem});
                return true;
            } catch (Throwable e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* renamed from: android.support.v7.internal.view.c.b */
    private class ProGuard {
        final /* synthetic */ ProGuard f823a;
        private Menu f824b;
        private int f825c;
        private int f826d;
        private int f827e;
        private int f828f;
        private boolean f829g;
        private boolean f830h;
        private boolean f831i;
        private int f832j;
        private int f833k;
        private CharSequence f834l;
        private CharSequence f835m;
        private int f836n;
        private char f837o;
        private char f838p;
        private int f839q;
        private boolean f840r;
        private boolean f841s;
        private boolean f842t;
        private int f843u;
        private int f844v;
        private String f845w;
        private String f846x;
        private String f847y;
        private android.support.v4.view.ProGuard f848z;

        public ProGuard(ProGuard proGuard, Menu menu) {
            this.f823a = proGuard;
            this.f824b = menu;
            m1882a();
        }

        public void m1882a() {
            this.f825c = 0;
            this.f826d = 0;
            this.f827e = 0;
            this.f828f = 0;
            this.f829g = true;
            this.f830h = true;
        }

        public void m1883a(AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = this.f823a.f853e.obtainStyledAttributes(attributeSet, android.support.v7.appcompat.ProGuard.styleable.MenuGroup);
            this.f825c = obtainStyledAttributes.getResourceId(android.support.v7.appcompat.ProGuard.styleable.MenuGroup_android_id, 0);
            this.f826d = obtainStyledAttributes.getInt(android.support.v7.appcompat.ProGuard.styleable.MenuGroup_android_menuCategory, 0);
            this.f827e = obtainStyledAttributes.getInt(android.support.v7.appcompat.ProGuard.styleable.MenuGroup_android_orderInCategory, 0);
            this.f828f = obtainStyledAttributes.getInt(android.support.v7.appcompat.ProGuard.styleable.MenuGroup_android_checkableBehavior, 0);
            this.f829g = obtainStyledAttributes.getBoolean(android.support.v7.appcompat.ProGuard.styleable.MenuGroup_android_visible, true);
            this.f830h = obtainStyledAttributes.getBoolean(android.support.v7.appcompat.ProGuard.styleable.MenuGroup_android_enabled, true);
            obtainStyledAttributes.recycle();
        }

        public void m1885b(AttributeSet attributeSet) {
            boolean z = true;
            TypedArray obtainStyledAttributes = this.f823a.f853e.obtainStyledAttributes(attributeSet, android.support.v7.appcompat.ProGuard.styleable.MenuItem);
            this.f832j = obtainStyledAttributes.getResourceId(android.support.v7.appcompat.ProGuard.styleable.MenuItem_android_id, 0);
            this.f833k = (obtainStyledAttributes.getInt(android.support.v7.appcompat.ProGuard.styleable.MenuItem_android_menuCategory, this.f826d) & -65536) | (obtainStyledAttributes.getInt(android.support.v7.appcompat.ProGuard.styleable.MenuItem_android_orderInCategory, this.f827e) & Platform.CUSTOMER_ACTION_MASK);
            this.f834l = obtainStyledAttributes.getText(android.support.v7.appcompat.ProGuard.styleable.MenuItem_android_title);
            this.f835m = obtainStyledAttributes.getText(android.support.v7.appcompat.ProGuard.styleable.MenuItem_android_titleCondensed);
            this.f836n = obtainStyledAttributes.getResourceId(android.support.v7.appcompat.ProGuard.styleable.MenuItem_android_icon, 0);
            this.f837o = m1878a(obtainStyledAttributes.getString(android.support.v7.appcompat.ProGuard.styleable.MenuItem_android_alphabeticShortcut));
            this.f838p = m1878a(obtainStyledAttributes.getString(android.support.v7.appcompat.ProGuard.styleable.MenuItem_android_numericShortcut));
            if (obtainStyledAttributes.hasValue(android.support.v7.appcompat.ProGuard.styleable.MenuItem_android_checkable)) {
                this.f839q = obtainStyledAttributes.getBoolean(android.support.v7.appcompat.ProGuard.styleable.MenuItem_android_checkable, false) ? 1 : 0;
            } else {
                this.f839q = this.f828f;
            }
            this.f840r = obtainStyledAttributes.getBoolean(android.support.v7.appcompat.ProGuard.styleable.MenuItem_android_checked, false);
            this.f841s = obtainStyledAttributes.getBoolean(android.support.v7.appcompat.ProGuard.styleable.MenuItem_android_visible, this.f829g);
            this.f842t = obtainStyledAttributes.getBoolean(android.support.v7.appcompat.ProGuard.styleable.MenuItem_android_enabled, this.f830h);
            this.f843u = obtainStyledAttributes.getInt(android.support.v7.appcompat.ProGuard.styleable.MenuItem_showAsAction, -1);
            this.f847y = obtainStyledAttributes.getString(android.support.v7.appcompat.ProGuard.styleable.MenuItem_android_onClick);
            this.f844v = obtainStyledAttributes.getResourceId(android.support.v7.appcompat.ProGuard.styleable.MenuItem_actionLayout, 0);
            this.f845w = obtainStyledAttributes.getString(android.support.v7.appcompat.ProGuard.styleable.MenuItem_actionViewClass);
            this.f846x = obtainStyledAttributes.getString(android.support.v7.appcompat.ProGuard.styleable.MenuItem_actionProviderClass);
            if (this.f846x == null) {
                z = false;
            }
            if (z && this.f844v == 0 && this.f845w == null) {
                this.f848z = (android.support.v4.view.ProGuard) m1880a(this.f846x, ProGuard.f850b, this.f823a.f852d);
            } else {
                if (z) {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                }
                this.f848z = null;
            }
            obtainStyledAttributes.recycle();
            this.f831i = false;
        }

        private char m1878a(String str) {
            if (str == null) {
                return '\u0000';
            }
            return str.charAt(0);
        }

        private void m1881a(MenuItem menuItem) {
            boolean z = true;
            menuItem.setChecked(this.f840r).setVisible(this.f841s).setEnabled(this.f842t).setCheckable(this.f839q >= 1).setTitleCondensed(this.f835m).setIcon(this.f836n).setAlphabeticShortcut(this.f837o).setNumericShortcut(this.f838p);
            if (this.f843u >= 0) {
                android.support.v4.view.ProGuard.m1334a(menuItem, this.f843u);
            }
            if (this.f847y != null) {
                if (this.f823a.f853e.isRestricted()) {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
                menuItem.setOnMenuItemClickListener(new ProGuard(this.f823a.m1894c(), this.f847y));
            }
            if (menuItem instanceof android.support.v7.internal.view.menu.ProGuard) {
                android.support.v7.internal.view.menu.ProGuard proGuard = (android.support.v7.internal.view.menu.ProGuard) menuItem;
            }
            if (this.f839q >= 2) {
                if (menuItem instanceof android.support.v7.internal.view.menu.ProGuard) {
                    ((android.support.v7.internal.view.menu.ProGuard) menuItem).m2061a(true);
                } else if (menuItem instanceof android.support.v7.internal.view.menu.ProGuard) {
                    ((android.support.v7.internal.view.menu.ProGuard) menuItem).m2091a(true);
                }
            }
            if (this.f845w != null) {
                android.support.v4.view.ProGuard.m1332a(menuItem, (View) m1880a(this.f845w, ProGuard.f849a, this.f823a.f851c));
            } else {
                z = false;
            }
            if (this.f844v > 0) {
                if (z) {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
                } else {
                    android.support.v4.view.ProGuard.m1335b(menuItem, this.f844v);
                }
            }
            if (this.f848z != null) {
                android.support.v4.view.ProGuard.m1331a(menuItem, this.f848z);
            }
        }

        public void m1884b() {
            this.f831i = true;
            m1881a(this.f824b.add(this.f825c, this.f832j, this.f833k, this.f834l));
        }

        public SubMenu m1886c() {
            this.f831i = true;
            SubMenu addSubMenu = this.f824b.addSubMenu(this.f825c, this.f832j, this.f833k, this.f834l);
            m1881a(addSubMenu.getItem());
            return addSubMenu;
        }

        public boolean m1887d() {
            return this.f831i;
        }

        private <T> T m1880a(String str, Class<?>[] clsArr, Object[] objArr) {
            try {
                return this.f823a.f853e.getClassLoader().loadClass(str).getConstructor(clsArr).newInstance(objArr);
            } catch (Throwable e) {
                Log.w("SupportMenuInflater", "Cannot instantiate class: " + str, e);
                return null;
            }
        }
    }

    static {
        f849a = new Class[]{Context.class};
        f850b = f849a;
    }

    public ProGuard(Context context) {
        super(context);
        this.f853e = context;
        this.f851c = new Object[]{context};
        this.f852d = this.f851c;
    }

    public void inflate(int i, Menu menu) {
        if (menu instanceof android.support.v4.p011c.p012a.ProGuard) {
            XmlResourceParser xmlResourceParser = null;
            try {
                xmlResourceParser = this.f853e.getResources().getLayout(i);
                m1890a(xmlResourceParser, Xml.asAttributeSet(xmlResourceParser), menu);
                if (xmlResourceParser != null) {
                    xmlResourceParser.close();
                }
            } catch (Throwable e) {
                throw new InflateException("Error inflating menu XML", e);
            } catch (Throwable e2) {
                throw new InflateException("Error inflating menu XML", e2);
            } catch (Throwable th) {
                if (xmlResourceParser != null) {
                    xmlResourceParser.close();
                }
            }
        } else {
            super.inflate(i, menu);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void m1890a(org.xmlpull.v1.XmlPullParser r11, android.util.AttributeSet r12, android.view.Menu r13) {
        /*
        r10 = this;
        r4 = 0;
        r1 = 1;
        r6 = 0;
        r7 = new android.support.v7.internal.view.c$b;
        r7.<init>(r10, r13);
        r0 = r11.getEventType();
    L_0x000c:
        r2 = 2;
        if (r0 != r2) goto L_0x004a;
    L_0x000f:
        r0 = r11.getName();
        r2 = "menu";
        r2 = r0.equals(r2);
        if (r2 == 0) goto L_0x0031;
    L_0x001b:
        r0 = r11.next();
    L_0x001f:
        r2 = r4;
        r5 = r6;
        r3 = r0;
        r0 = r6;
    L_0x0023:
        if (r0 != 0) goto L_0x00e1;
    L_0x0025:
        switch(r3) {
            case 1: goto L_0x00d9;
            case 2: goto L_0x0051;
            case 3: goto L_0x0087;
            default: goto L_0x0028;
        };
    L_0x0028:
        r3 = r5;
    L_0x0029:
        r5 = r11.next();
        r9 = r3;
        r3 = r5;
        r5 = r9;
        goto L_0x0023;
    L_0x0031:
        r1 = new java.lang.RuntimeException;
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "Expecting menu, got ";
        r2 = r2.append(r3);
        r0 = r2.append(r0);
        r0 = r0.toString();
        r1.<init>(r0);
        throw r1;
    L_0x004a:
        r0 = r11.next();
        if (r0 != r1) goto L_0x000c;
    L_0x0050:
        goto L_0x001f;
    L_0x0051:
        if (r5 == 0) goto L_0x0055;
    L_0x0053:
        r3 = r5;
        goto L_0x0029;
    L_0x0055:
        r3 = r11.getName();
        r8 = "group";
        r8 = r3.equals(r8);
        if (r8 == 0) goto L_0x0066;
    L_0x0061:
        r7.m1883a(r12);
        r3 = r5;
        goto L_0x0029;
    L_0x0066:
        r8 = "item";
        r8 = r3.equals(r8);
        if (r8 == 0) goto L_0x0073;
    L_0x006e:
        r7.m1885b(r12);
        r3 = r5;
        goto L_0x0029;
    L_0x0073:
        r8 = "menu";
        r8 = r3.equals(r8);
        if (r8 == 0) goto L_0x0084;
    L_0x007b:
        r3 = r7.m1886c();
        r10.m1890a(r11, r12, r3);
        r3 = r5;
        goto L_0x0029;
    L_0x0084:
        r2 = r3;
        r3 = r1;
        goto L_0x0029;
    L_0x0087:
        r3 = r11.getName();
        if (r5 == 0) goto L_0x0096;
    L_0x008d:
        r8 = r3.equals(r2);
        if (r8 == 0) goto L_0x0096;
    L_0x0093:
        r2 = r4;
        r3 = r6;
        goto L_0x0029;
    L_0x0096:
        r8 = "group";
        r8 = r3.equals(r8);
        if (r8 == 0) goto L_0x00a3;
    L_0x009e:
        r7.m1882a();
        r3 = r5;
        goto L_0x0029;
    L_0x00a3:
        r8 = "item";
        r8 = r3.equals(r8);
        if (r8 == 0) goto L_0x00cd;
    L_0x00ab:
        r3 = r7.m1887d();
        if (r3 != 0) goto L_0x0028;
    L_0x00b1:
        r3 = r7.f848z;
        if (r3 == 0) goto L_0x00c7;
    L_0x00b7:
        r3 = r7.f848z;
        r3 = r3.m1265e();
        if (r3 == 0) goto L_0x00c7;
    L_0x00c1:
        r7.m1886c();
        r3 = r5;
        goto L_0x0029;
    L_0x00c7:
        r7.m1884b();
        r3 = r5;
        goto L_0x0029;
    L_0x00cd:
        r8 = "menu";
        r3 = r3.equals(r8);
        if (r3 == 0) goto L_0x0028;
    L_0x00d5:
        r0 = r1;
        r3 = r5;
        goto L_0x0029;
    L_0x00d9:
        r0 = new java.lang.RuntimeException;
        r1 = "Unexpected end of document";
        r0.<init>(r1);
        throw r0;
    L_0x00e1:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.internal.view.c.a(org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.view.Menu):void");
    }

    private Object m1894c() {
        if (this.f854f == null) {
            this.f854f = m1889a(this.f853e);
        }
        return this.f854f;
    }

    private Object m1889a(Object obj) {
        if (!(obj instanceof Activity) && (obj instanceof ContextWrapper)) {
            return m1889a(((ContextWrapper) obj).getBaseContext());
        }
        return obj;
    }
}
