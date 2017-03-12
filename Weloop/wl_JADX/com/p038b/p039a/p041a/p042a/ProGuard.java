package com.p038b.p039a.p041a.p042a;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.animation.Animation;
import java.lang.reflect.Method;

/* renamed from: com.b.a.a.a.d */
public class ProGuard<T extends View> extends ProGuard<T> {
    public void m3776a(T t, String str, Bitmap bitmap, com.p038b.p039a.p041a.ProGuard proGuard, ProGuard proGuard2) {
        m3765a((View) t, bitmap);
        Animation b = proGuard.m3842b();
        if (b != null) {
            m3775a(t, b);
        }
    }

    public void m3777a(T t, String str, Drawable drawable) {
        m3766a((View) t, drawable);
    }

    private void m3775a(T t, Animation animation) {
        try {
            Method declaredMethod = Animation.class.getDeclaredMethod("clone", new Class[0]);
            declaredMethod.setAccessible(true);
            t.startAnimation((Animation) declaredMethod.invoke(animation, new Object[0]));
        } catch (Throwable th) {
            t.startAnimation(animation);
        }
    }
}
