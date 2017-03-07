package android.support.v7.internal.widget;

import android.content.Context;
import android.graphics.Rect;
import android.support.v7.internal.widget.ProGuard.ProGuard;
import android.util.AttributeSet;
import android.widget.LinearLayout;

/* compiled from: ProGuard */
public class FitWindowsLinearLayout extends LinearLayout implements ProGuard {
    private ProGuard f1181a;

    public FitWindowsLinearLayout(Context context) {
        super(context);
    }

    public FitWindowsLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void setOnFitSystemWindowsListener(ProGuard proGuard) {
        this.f1181a = proGuard;
    }

    protected boolean fitSystemWindows(Rect rect) {
        if (this.f1181a != null) {
            this.f1181a.m1814a(rect);
        }
        return super.fitSystemWindows(rect);
    }
}
