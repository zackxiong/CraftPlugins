package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.support.v4.view.ak;
import android.support.v7.appcompat.ProGuard;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import java.lang.reflect.Method;

/* compiled from: ProGuard */
public class af {
    private static Method f1280a;

    static {
        if (VERSION.SDK_INT >= 18) {
            try {
                f1280a = View.class.getDeclaredMethod("computeFitSystemWindows", new Class[]{Rect.class, Rect.class});
                if (!f1280a.isAccessible()) {
                    f1280a.setAccessible(true);
                }
            } catch (NoSuchMethodException e) {
                Log.d("ViewUtils", "Could not find method computeFitSystemWindows. Oh well.");
            }
        }
    }

    public static boolean m2418a(View view) {
        return ak.m1033e(view) == 1;
    }

    public static int m2415a(int i, int i2) {
        return i | i2;
    }

    public static void m2417a(View view, Rect rect, Rect rect2) {
        if (f1280a != null) {
            try {
                f1280a.invoke(view, new Object[]{rect, rect2});
            } catch (Throwable e) {
                Log.d("ViewUtils", "Could not invoke computeFitSystemWindows", e);
            }
        }
    }

    public static void m2419b(View view) {
        if (VERSION.SDK_INT >= 16) {
            try {
                Method method = view.getClass().getMethod("makeOptionalFitsSystemWindows", new Class[0]);
                if (!method.isAccessible()) {
                    method.setAccessible(true);
                }
                method.invoke(view, new Object[0]);
            } catch (NoSuchMethodException e) {
                Log.d("ViewUtils", "Could not find method makeOptionalFitsSystemWindows. Oh well...");
            } catch (Throwable e2) {
                Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", e2);
            } catch (Throwable e22) {
                Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", e22);
            }
        }
    }

    public static Context m2416a(Context context, AttributeSet attributeSet, boolean z, boolean z2) {
        int resourceId;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ProGuard.styleable.View, 0, 0);
        if (z) {
            resourceId = obtainStyledAttributes.getResourceId(ProGuard.styleable.View_android_theme, 0);
        } else {
            resourceId = 0;
        }
        if (z2 && r0 == 0) {
            resourceId = obtainStyledAttributes.getResourceId(ProGuard.styleable.View_theme, 0);
            if (resourceId != 0) {
                Log.i("ViewUtils", "app:theme is now deprecated. Please move to using android:theme instead.");
            }
        }
        int i = resourceId;
        obtainStyledAttributes.recycle();
        if (i == 0) {
            return context;
        }
        if ((context instanceof android.support.v7.internal.view.ProGuard) && ((android.support.v7.internal.view.ProGuard) context).m1876a() == i) {
            return context;
        }
        return new android.support.v7.internal.view.ProGuard(context, i);
    }
}
