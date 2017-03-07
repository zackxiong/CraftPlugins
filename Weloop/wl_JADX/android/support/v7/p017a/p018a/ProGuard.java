package android.support.v7.p017a.p018a;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;

/* renamed from: android.support.v7.a.a.a */
public class ProGuard extends Drawable implements Callback {
    private Drawable f712a;

    public ProGuard(Drawable drawable) {
        m1732a(drawable);
    }

    public void draw(Canvas canvas) {
        this.f712a.draw(canvas);
    }

    protected void onBoundsChange(Rect rect) {
        this.f712a.setBounds(rect);
    }

    public void setChangingConfigurations(int i) {
        this.f712a.setChangingConfigurations(i);
    }

    public int getChangingConfigurations() {
        return this.f712a.getChangingConfigurations();
    }

    public void setDither(boolean z) {
        this.f712a.setDither(z);
    }

    public void setFilterBitmap(boolean z) {
        this.f712a.setFilterBitmap(z);
    }

    public void setAlpha(int i) {
        this.f712a.setAlpha(i);
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.f712a.setColorFilter(colorFilter);
    }

    public boolean isStateful() {
        return this.f712a.isStateful();
    }

    public boolean setState(int[] iArr) {
        return this.f712a.setState(iArr);
    }

    public int[] getState() {
        return this.f712a.getState();
    }

    public void jumpToCurrentState() {
        android.support.v4.p009b.p010a.ProGuard.m400a(this.f712a);
    }

    public Drawable getCurrent() {
        return this.f712a.getCurrent();
    }

    public boolean setVisible(boolean z, boolean z2) {
        return super.setVisible(z, z2) || this.f712a.setVisible(z, z2);
    }

    public int getOpacity() {
        return this.f712a.getOpacity();
    }

    public Region getTransparentRegion() {
        return this.f712a.getTransparentRegion();
    }

    public int getIntrinsicWidth() {
        return this.f712a.getIntrinsicWidth();
    }

    public int getIntrinsicHeight() {
        return this.f712a.getIntrinsicHeight();
    }

    public int getMinimumWidth() {
        return this.f712a.getMinimumWidth();
    }

    public int getMinimumHeight() {
        return this.f712a.getMinimumHeight();
    }

    public boolean getPadding(Rect rect) {
        return this.f712a.getPadding(rect);
    }

    public void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        scheduleSelf(runnable, j);
    }

    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }

    protected boolean onLevelChange(int i) {
        return this.f712a.setLevel(i);
    }

    public void setAutoMirrored(boolean z) {
        android.support.v4.p009b.p010a.ProGuard.m406a(this.f712a, z);
    }

    public boolean isAutoMirrored() {
        return android.support.v4.p009b.p010a.ProGuard.m407b(this.f712a);
    }

    public void setTint(int i) {
        android.support.v4.p009b.p010a.ProGuard.m402a(this.f712a, i);
    }

    public void setTintList(ColorStateList colorStateList) {
        android.support.v4.p009b.p010a.ProGuard.m404a(this.f712a, colorStateList);
    }

    public void setTintMode(Mode mode) {
        android.support.v4.p009b.p010a.ProGuard.m405a(this.f712a, mode);
    }

    public void setHotspot(float f, float f2) {
        android.support.v4.p009b.p010a.ProGuard.m401a(this.f712a, f, f2);
    }

    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        android.support.v4.p009b.p010a.ProGuard.m403a(this.f712a, i, i2, i3, i4);
    }

    public void m1732a(Drawable drawable) {
        if (this.f712a != null) {
            this.f712a.setCallback(null);
        }
        this.f712a = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
    }
}
