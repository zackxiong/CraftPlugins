package android.support.v7.internal.widget;

import android.content.Context;
import android.graphics.Rect;
import android.support.v7.internal.widget.ProGuard.ProGuard;
import android.util.AttributeSet;
import android.widget.FrameLayout;

/* compiled from: ProGuard */
public class FitWindowsFrameLayout extends FrameLayout implements ProGuard {
    private ProGuard f1180a;

    public FitWindowsFrameLayout(Context context) {
        super(context);
    }

    public FitWindowsFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void setOnFitSystemWindowsListener(ProGuard proGuard) {
        this.f1180a = proGuard;
    }

    protected boolean fitSystemWindows(Rect rect) {
        if (this.f1180a != null) {
            this.f1180a.m1814a(rect);
        }
        return super.fitSystemWindows(rect);
    }
}
