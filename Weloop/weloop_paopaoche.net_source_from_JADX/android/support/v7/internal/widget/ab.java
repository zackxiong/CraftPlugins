package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build.VERSION;
import android.util.SparseArray;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

/* compiled from: ProGuard */
public final class ab {
    public static final boolean f1245a;
    private static final Mode f1246b;
    private static final WeakHashMap<Context, ab> f1247c;
    private static final ProGuard f1248d;
    private static final int[] f1249e;
    private static final int[] f1250f;
    private static final int[] f1251g;
    private static final int[] f1252h;
    private static final int[] f1253i;
    private final WeakReference<Context> f1254j;
    private SparseArray<ColorStateList> f1255k;
    private ColorStateList f1256l;

    /* renamed from: android.support.v7.internal.widget.ab.a */
    private static class ProGuard extends android.support.v4.p015f.ProGuard<Integer, PorterDuffColorFilter> {
        public ProGuard(int i) {
            super(i);
        }

        PorterDuffColorFilter m2308a(int i, Mode mode) {
            return (PorterDuffColorFilter) m515a((Object) Integer.valueOf(ProGuard.m2307b(i, mode)));
        }

        PorterDuffColorFilter m2309a(int i, Mode mode, PorterDuffColorFilter porterDuffColorFilter) {
            return (PorterDuffColorFilter) m516a(Integer.valueOf(ProGuard.m2307b(i, mode)), porterDuffColorFilter);
        }

        private static int m2307b(int i, Mode mode) {
            return ((i + 31) * 31) + mode.hashCode();
        }
    }

    static {
        f1245a = VERSION.SDK_INT < 21;
        f1246b = Mode.SRC_IN;
        f1247c = new WeakHashMap();
        f1248d = new ProGuard(6);
        f1249e = new int[]{android.support.v7.appcompat.ProGuard.drawable.abc_textfield_search_default_mtrl_alpha, android.support.v7.appcompat.ProGuard.drawable.abc_textfield_default_mtrl_alpha, android.support.v7.appcompat.ProGuard.drawable.abc_ab_share_pack_mtrl_alpha};
        f1250f = new int[]{android.support.v7.appcompat.ProGuard.drawable.abc_ic_ab_back_mtrl_am_alpha, android.support.v7.appcompat.ProGuard.drawable.abc_ic_go_search_api_mtrl_alpha, android.support.v7.appcompat.ProGuard.drawable.abc_ic_search_api_mtrl_alpha, android.support.v7.appcompat.ProGuard.drawable.abc_ic_commit_search_api_mtrl_alpha, android.support.v7.appcompat.ProGuard.drawable.abc_ic_clear_mtrl_alpha, android.support.v7.appcompat.ProGuard.drawable.abc_ic_menu_share_mtrl_alpha, android.support.v7.appcompat.ProGuard.drawable.abc_ic_menu_copy_mtrl_am_alpha, android.support.v7.appcompat.ProGuard.drawable.abc_ic_menu_cut_mtrl_alpha, android.support.v7.appcompat.ProGuard.drawable.abc_ic_menu_selectall_mtrl_alpha, android.support.v7.appcompat.ProGuard.drawable.abc_ic_menu_paste_mtrl_am_alpha, android.support.v7.appcompat.ProGuard.drawable.abc_ic_menu_moreoverflow_mtrl_alpha, android.support.v7.appcompat.ProGuard.drawable.abc_ic_voice_search_api_mtrl_alpha};
        f1251g = new int[]{android.support.v7.appcompat.ProGuard.drawable.abc_textfield_activated_mtrl_alpha, android.support.v7.appcompat.ProGuard.drawable.abc_textfield_search_activated_mtrl_alpha, android.support.v7.appcompat.ProGuard.drawable.abc_cab_background_top_mtrl_alpha, android.support.v7.appcompat.ProGuard.drawable.abc_text_cursor_mtrl_alpha};
        f1252h = new int[]{android.support.v7.appcompat.ProGuard.drawable.abc_popup_background_mtrl_mult, android.support.v7.appcompat.ProGuard.drawable.abc_cab_background_internal_bg, android.support.v7.appcompat.ProGuard.drawable.abc_menu_hardkey_panel_mtrl_mult};
        f1253i = new int[]{android.support.v7.appcompat.ProGuard.drawable.abc_edit_text_material, android.support.v7.appcompat.ProGuard.drawable.abc_tab_indicator_material, android.support.v7.appcompat.ProGuard.drawable.abc_textfield_search_material, android.support.v7.appcompat.ProGuard.drawable.abc_spinner_mtrl_am_alpha, android.support.v7.appcompat.ProGuard.drawable.abc_btn_check_material, android.support.v7.appcompat.ProGuard.drawable.abc_btn_radio_material, android.support.v7.appcompat.ProGuard.drawable.abc_spinner_textfield_background_material, android.support.v7.appcompat.ProGuard.drawable.abc_ratingbar_full_material, android.support.v7.appcompat.ProGuard.drawable.abc_switch_track_mtrl_alpha, android.support.v7.appcompat.ProGuard.drawable.abc_switch_thumb_material, android.support.v7.appcompat.ProGuard.drawable.abc_btn_default_mtrl_shape, android.support.v7.appcompat.ProGuard.drawable.abc_btn_borderless_material};
    }

    public static Drawable m2310a(Context context, int i) {
        if (m2318d(i)) {
            return m2311a(context).m2322a(i);
        }
        return android.support.v4.p008a.ProGuard.m87a(context, i);
    }

    public static ab m2311a(Context context) {
        ab abVar = (ab) f1247c.get(context);
        if (abVar != null) {
            return abVar;
        }
        abVar = new ab(context);
        f1247c.put(context, abVar);
        return abVar;
    }

    private ab(Context context) {
        this.f1254j = new WeakReference(context);
    }

    public Drawable m2322a(int i) {
        return m2323a(i, false);
    }

    public Drawable m2323a(int i, boolean z) {
        Context context = (Context) this.f1254j.get();
        if (context == null) {
            return null;
        }
        Drawable a = android.support.v4.p008a.ProGuard.m87a(context, i);
        if (a != null) {
            if (VERSION.SDK_INT >= 8) {
                a = a.mutate();
            }
            ColorStateList c = m2326c(i);
            if (c != null) {
                a = android.support.v4.p009b.p010a.ProGuard.m408c(a);
                android.support.v4.p009b.p010a.ProGuard.m404a(a, c);
                Mode b = m2325b(i);
                if (b != null) {
                    android.support.v4.p009b.p010a.ProGuard.m405a(a, b);
                }
            } else if (i == android.support.v7.appcompat.ProGuard.drawable.abc_cab_background_top_material) {
                return new LayerDrawable(new Drawable[]{m2322a(android.support.v7.appcompat.ProGuard.drawable.abc_cab_background_internal_bg), m2322a(android.support.v7.appcompat.ProGuard.drawable.abc_cab_background_top_mtrl_alpha)});
            } else if (!m2324a(i, a) && z) {
                a = null;
            }
        }
        return a;
    }

    public final boolean m2324a(int i, Drawable drawable) {
        Context context = (Context) this.f1254j.get();
        if (context == null) {
            return false;
        }
        int i2;
        Mode mode;
        Object obj;
        int i3;
        if (m2314a(f1249e, i)) {
            i2 = android.support.v7.appcompat.ProGuard.attr.colorControlNormal;
            mode = null;
            obj = 1;
            i3 = -1;
        } else if (m2314a(f1251g, i)) {
            i2 = android.support.v7.appcompat.ProGuard.attr.colorControlActivated;
            mode = null;
            r6 = 1;
            i3 = -1;
        } else if (m2314a(f1252h, i)) {
            r6 = 1;
            mode = Mode.MULTIPLY;
            i2 = 16842801;
            i3 = -1;
        } else if (i == android.support.v7.appcompat.ProGuard.drawable.abc_list_divider_mtrl_alpha) {
            i2 = 16842800;
            i3 = Math.round(40.8f);
            mode = null;
            r6 = 1;
        } else {
            i3 = -1;
            i2 = 0;
            mode = null;
            obj = null;
        }
        if (obj == null) {
            return false;
        }
        m2312a(drawable, ProGuard.m2484a(context, i2), mode);
        if (i3 != -1) {
            drawable.setAlpha(i3);
        }
        return true;
    }

    private static boolean m2314a(int[] iArr, int i) {
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    private static boolean m2318d(int i) {
        return m2314a(f1250f, i) || m2314a(f1249e, i) || m2314a(f1251g, i) || m2314a(f1253i, i) || m2314a(f1252h, i) || i == android.support.v7.appcompat.ProGuard.drawable.abc_cab_background_top_material;
    }

    final Mode m2325b(int i) {
        if (i == android.support.v7.appcompat.ProGuard.drawable.abc_switch_thumb_material) {
            return Mode.MULTIPLY;
        }
        return null;
    }

    public final ColorStateList m2326c(int i) {
        ColorStateList colorStateList = null;
        Context context = (Context) this.f1254j.get();
        if (context == null) {
            return null;
        }
        if (this.f1255k != null) {
            colorStateList = (ColorStateList) this.f1255k.get(i);
        }
        if (colorStateList != null) {
            return colorStateList;
        }
        ColorStateList e = i == android.support.v7.appcompat.ProGuard.drawable.abc_edit_text_material ? m2319e(context) : i == android.support.v7.appcompat.ProGuard.drawable.abc_switch_track_mtrl_alpha ? m2316c(context) : i == android.support.v7.appcompat.ProGuard.drawable.abc_switch_thumb_material ? m2317d(context) : (i == android.support.v7.appcompat.ProGuard.drawable.abc_btn_default_mtrl_shape || i == android.support.v7.appcompat.ProGuard.drawable.abc_btn_borderless_material) ? m2320f(context) : (i == android.support.v7.appcompat.ProGuard.drawable.abc_spinner_mtrl_am_alpha || i == android.support.v7.appcompat.ProGuard.drawable.abc_spinner_textfield_background_material) ? m2321g(context) : m2314a(f1250f, i) ? ProGuard.m2488b(context, android.support.v7.appcompat.ProGuard.attr.colorControlNormal) : m2314a(f1253i, i) ? m2315b(context) : colorStateList;
        if (e == null) {
            return e;
        }
        if (this.f1255k == null) {
            this.f1255k = new SparseArray();
        }
        this.f1255k.append(i, e);
        return e;
    }

    private ColorStateList m2315b(Context context) {
        if (this.f1256l == null) {
            int a = ProGuard.m2484a(context, android.support.v7.appcompat.ProGuard.attr.colorControlNormal);
            int a2 = ProGuard.m2484a(context, android.support.v7.appcompat.ProGuard.attr.colorControlActivated);
            r2 = new int[7][];
            int[] iArr = new int[]{ProGuard.f1359a, ProGuard.m2489c(context, android.support.v7.appcompat.ProGuard.attr.colorControlNormal), ProGuard.f1360b, a2, ProGuard.f1361c, a2, ProGuard.f1362d};
            iArr[3] = a2;
            r2[4] = ProGuard.f1363e;
            iArr[4] = a2;
            r2[5] = ProGuard.f1364f;
            iArr[5] = a2;
            r2[6] = ProGuard.f1366h;
            iArr[6] = a;
            this.f1256l = new ColorStateList(r2, iArr);
        }
        return this.f1256l;
    }

    private ColorStateList m2316c(Context context) {
        r0 = new int[3][];
        int[] iArr = new int[]{ProGuard.f1359a, ProGuard.m2485a(context, 16842800, 0.1f), ProGuard.f1363e};
        iArr[1] = ProGuard.m2485a(context, android.support.v7.appcompat.ProGuard.attr.colorControlActivated, 0.3f);
        r0[2] = ProGuard.f1366h;
        iArr[2] = ProGuard.m2485a(context, 16842800, 0.3f);
        return new ColorStateList(r0, iArr);
    }

    private ColorStateList m2317d(Context context) {
        int[][] iArr = new int[3][];
        int[] iArr2 = new int[3];
        ColorStateList b = ProGuard.m2488b(context, android.support.v7.appcompat.ProGuard.attr.colorSwitchThumbNormal);
        if (b == null || !b.isStateful()) {
            iArr[0] = ProGuard.f1359a;
            iArr2[0] = ProGuard.m2489c(context, android.support.v7.appcompat.ProGuard.attr.colorSwitchThumbNormal);
            iArr[1] = ProGuard.f1363e;
            iArr2[1] = ProGuard.m2484a(context, android.support.v7.appcompat.ProGuard.attr.colorControlActivated);
            iArr[2] = ProGuard.f1366h;
            iArr2[2] = ProGuard.m2484a(context, android.support.v7.appcompat.ProGuard.attr.colorSwitchThumbNormal);
        } else {
            iArr[0] = ProGuard.f1359a;
            iArr2[0] = b.getColorForState(iArr[0], 0);
            iArr[1] = ProGuard.f1363e;
            iArr2[1] = ProGuard.m2484a(context, android.support.v7.appcompat.ProGuard.attr.colorControlActivated);
            iArr[2] = ProGuard.f1366h;
            iArr2[2] = b.getDefaultColor();
        }
        return new ColorStateList(iArr, iArr2);
    }

    private ColorStateList m2319e(Context context) {
        r0 = new int[3][];
        int[] iArr = new int[]{ProGuard.f1359a, ProGuard.m2489c(context, android.support.v7.appcompat.ProGuard.attr.colorControlNormal), ProGuard.f1365g};
        iArr[1] = ProGuard.m2484a(context, android.support.v7.appcompat.ProGuard.attr.colorControlNormal);
        r0[2] = ProGuard.f1366h;
        iArr[2] = ProGuard.m2484a(context, android.support.v7.appcompat.ProGuard.attr.colorControlActivated);
        return new ColorStateList(r0, iArr);
    }

    private ColorStateList m2320f(Context context) {
        r0 = new int[4][];
        r1 = new int[4];
        int a = ProGuard.m2484a(context, android.support.v7.appcompat.ProGuard.attr.colorButtonNormal);
        int a2 = ProGuard.m2484a(context, android.support.v7.appcompat.ProGuard.attr.colorControlHighlight);
        r0[0] = ProGuard.f1359a;
        r1[0] = ProGuard.m2489c(context, android.support.v7.appcompat.ProGuard.attr.colorButtonNormal);
        r0[1] = ProGuard.f1362d;
        r1[1] = android.support.v4.p009b.ProGuard.m430a(a2, a);
        r0[2] = ProGuard.f1360b;
        r1[2] = android.support.v4.p009b.ProGuard.m430a(a2, a);
        r0[3] = ProGuard.f1366h;
        r1[3] = a;
        return new ColorStateList(r0, r1);
    }

    private ColorStateList m2321g(Context context) {
        r0 = new int[3][];
        int[] iArr = new int[]{ProGuard.f1359a, ProGuard.m2489c(context, android.support.v7.appcompat.ProGuard.attr.colorControlNormal), ProGuard.f1365g};
        iArr[1] = ProGuard.m2484a(context, android.support.v7.appcompat.ProGuard.attr.colorControlNormal);
        r0[2] = ProGuard.f1366h;
        iArr[2] = ProGuard.m2484a(context, android.support.v7.appcompat.ProGuard.attr.colorControlActivated);
        return new ColorStateList(r0, iArr);
    }

    public static void m2313a(View view, aa aaVar) {
        Drawable background = view.getBackground();
        if (aaVar.f1244d) {
            m2312a(background, aaVar.f1241a.getColorForState(view.getDrawableState(), aaVar.f1241a.getDefaultColor()), aaVar.f1243c ? aaVar.f1242b : null);
        } else {
            background.clearColorFilter();
        }
        if (VERSION.SDK_INT <= 10) {
            view.invalidate();
        }
    }

    private static void m2312a(Drawable drawable, int i, Mode mode) {
        if (mode == null) {
            mode = f1246b;
        }
        ColorFilter a = f1248d.m2308a(i, mode);
        if (a == null) {
            a = new PorterDuffColorFilter(i, mode);
            f1248d.m2309a(i, mode, a);
        }
        drawable.setColorFilter(a);
    }
}
