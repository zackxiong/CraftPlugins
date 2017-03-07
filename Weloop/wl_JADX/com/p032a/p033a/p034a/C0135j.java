package com.p032a.p033a.p034a;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: com.a.a.a.j */
class C0135j {
    private static final Integer f2209a;
    private static final Integer f2210b;
    private static final Integer f2211c;
    private static final Integer f2212d;
    private static final Integer f2213e;
    private static final Integer f2214f;
    private static final Integer f2215g;
    private static final Integer f2216h;
    private static final Integer f2217i;
    private static final Integer f2218j;
    private final Vector f2219k;
    private Hashtable f2220l;

    static {
        f2209a = new Integer(1);
        f2210b = new Integer(2);
        f2211c = new Integer(3);
        f2212d = new Integer(4);
        f2213e = new Integer(5);
        f2214f = new Integer(6);
        f2215g = new Integer(7);
        f2216h = new Integer(8);
        f2217i = new Integer(9);
        f2218j = new Integer(10);
    }

    C0135j() {
        this.f2219k = new Vector();
        this.f2220l = new Hashtable();
    }

    private static Integer m3471b(C0129i c0129i) {
        return new Integer(System.identityHashCode(c0129i));
    }

    int m3472a(C0129i c0129i) {
        return ((Integer) this.f2220l.get(C0135j.m3471b(c0129i))).intValue();
    }

    Enumeration m3473a() {
        return this.f2219k.elements();
    }

    void add(C0129i c0129i, int i) {
        Object obj;
        this.f2219k.addElement(c0129i);
        switch (i) {
            case ProGuard.styleable.View_android_focusable /*1*/:
                obj = f2209a;
                break;
            case ProGuard.styleable.View_paddingStart /*2*/:
                obj = f2210b;
                break;
            case ProGuard.styleable.View_paddingEnd /*3*/:
                obj = f2211c;
                break;
            case ProGuard.styleable.View_theme /*4*/:
                obj = f2212d;
                break;
            case ProGuard.styleable.View_backgroundTint /*5*/:
                obj = f2213e;
                break;
            case ProGuard.styleable.View_backgroundTintMode /*6*/:
                obj = f2214f;
                break;
            case ProGuard.styleable.Toolbar_contentInsetRight /*7*/:
                obj = f2215g;
                break;
            case ProGuard.styleable.Toolbar_popupTheme /*8*/:
                obj = f2216h;
                break;
            case ProGuard.styleable.Toolbar_titleTextAppearance /*9*/:
                obj = f2217i;
                break;
            case ProGuard.styleable.Toolbar_subtitleTextAppearance /*10*/:
                obj = f2218j;
                break;
            default:
                obj = new Integer(i);
                break;
        }
        this.f2220l.put(C0135j.m3471b(c0129i), obj);
    }

    void add(String str) {
        this.f2219k.addElement(str);
    }

    void m3474b() {
        this.f2219k.removeAllElements();
        this.f2220l.clear();
    }

    public String toString() {
        try {
            StringBuffer stringBuffer = new StringBuffer("{ ");
            Enumeration elements = this.f2219k.elements();
            while (elements.hasMoreElements()) {
                Object nextElement = elements.nextElement();
                if (nextElement instanceof String) {
                    stringBuffer.append(new StringBuffer().append("String(").append(nextElement).append(") ").toString());
                } else {
                    C0129i c0129i = (C0129i) nextElement;
                    stringBuffer.append(new StringBuffer().append("Node(").append(c0129i.m3440k()).append(")[").append(this.f2220l.get(C0135j.m3471b(c0129i))).append("] ").toString());
                }
            }
            stringBuffer.append("}");
            return stringBuffer.toString();
        } catch (Throwable e) {
            return e.toString();
        }
    }
}
