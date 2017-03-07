package android.support.v4.p009b.p010a;

import android.content.res.Resources.Theme;
import android.graphics.Outline;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

/* renamed from: android.support.v4.b.a.k */
class ProGuard extends ProGuard {
    ProGuard(Drawable drawable) {
        super(drawable);
    }

    public void setHotspot(float f, float f2) {
        this.b.setHotspot(f, f2);
    }

    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        this.b.setHotspotBounds(i, i2, i3, i4);
    }

    public void getOutline(Outline outline) {
        this.b.getOutline(outline);
    }

    public void applyTheme(Theme theme) {
        this.b.applyTheme(theme);
    }

    public boolean canApplyTheme() {
        return this.b.canApplyTheme();
    }

    public Rect getDirtyBounds() {
        return this.b.getDirtyBounds();
    }
}
android.support.v4.b.a.a.a */
    static class ProGuard implements ProGuard {
        ProGuard() {
        }

        public void m379a(Drawable drawable) {
        }

        public void m385a(Drawable drawable, boolean z) {
        }

        public boolean m386b(Drawable drawable) {
            return false;
        }

        public void m380a(Drawable drawable, float f, float f2) {
        }

        public void m382a(Drawable drawable, int i, int i2, int i3, int i4) {
        }

        public void m381a(Drawable drawable, int i) {
            ProGuard.m411a(drawable, i);
        }

        public void m383a(Drawable drawable, ColorStateList colorStateList) {
            ProGuard.m412a(drawable, colorStateList);
        }

        public void m384a(Drawable drawable, Mode mode) {
            ProGuard.m413a(drawable, mode);
        }

        public Drawable m387c(Drawable drawable) {
            return ProGuard.m410a(drawable);
        }
    }

    /* renamed from: android.support.v4.b.a.a.c */
    static class ProGuard extends ProGuard {
        ProGuard() {
        }

        public void m388a(Drawable drawable) {
            ProGuard.m414a(drawable);
        }

        public Drawable m389c(Drawable drawable) {
            return ProGuard.m415b(drawable);
        }
    }

    /* renamed from: android.support.v4.b.a.a.d */
    static class ProGuard extends ProGuard {
        ProGuard() {
        }

        public void m390a(Drawable drawable, boolean z) {
            ProGuard.m416a(drawable, z);
        }

        public boolean m391b(Drawable drawable) {
            return ProGuard.m417a(drawable);
        }

        public Drawable m392c(Drawable drawable) {
            return ProGuard.m418b(drawable);
        }
    }

    /* renamed from: android.support.v4.b.a.a.e */
    static class ProGuard extends ProGuard {
        ProGuard() {
        }

        public void m393a(Drawable drawable, float f, float f2) {
            ProGuard.m420a(drawable, f, f2);
        }

        public void m395a(Drawable drawable, int i, int i2, int i3, int i4) {
            ProGuard.m422a(drawable, i, i2, i3, i4);
        }

        public void m394a(Drawable drawable, int i) {
            ProGuard.m421a(drawable, i);
        }

        public void m396a(Drawable drawable, ColorStateList colorStateList) {
            ProGuard.m423a(drawable, colorStateList);
        }

        public void m397a(Drawable drawable, Mode mode) {
            ProGuard.m424a(drawable, mode);
        }

        public Drawable m398c(Drawable drawable) {
            return ProGuard.m419a(drawable);
        }
    }

    /* renamed from: android.support.v4.b.a.a.f */
    static class ProGuard extends ProGuard {
        ProGuard() {
        }

        public Drawable m399c(Drawable drawable) {
            return ProGuard.m409a(drawable);
        }
    }

    static {
        int i = VERSION.SDK_INT;
        if (i >= 22) {
            f307a = new ProGuard();
        } else if (i >= 21) {
            f307a = new ProGuard();
        } else if (i >= 19) {
            f307a = new ProGuard();
        } else if (i >= 11) {
            f307a = new ProGuard();
        } else {
            f307a = new ProGuard();
        }
    }

    public static void m400a(Drawable drawable) {
        f307a.m370a(drawable);
    }

    public static void m406a(Drawable drawable, boolean z) {
        f307a.m376a(drawable, z);
    }

    public static boolean m407b(Drawable drawable) {
        return f307a.m377b(drawable);
    }

    public static void m401a(Drawable drawable, float f, float f2) {
        f307a.m371a(drawable, f, f2);
    }

    public static void m403a(Drawable drawable, int i, int i2, int i3, int i4) {
        f307a.m373a(drawable, i, i2, i3, i4);
    }

    public static void m402a(Drawable drawable, int i) {
        f307a.m372a(drawable, i);
    }

    public static void m404a(Drawable drawable, ColorStateList colorStateList) {
        f307a.m374a(drawable, colorStateList);
    }

    public static void m405a(Drawable drawable, Mode mode) {
        f307a.m375a(drawable, mode);
    }

    public static Drawable m408c(Drawable drawable) {
        return f307a.m378c(drawable);
    }
}
