package android.support.v7.internal.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.View;

@TargetApi(11)
/* compiled from: ProGuard */
public class NativeActionModeAwareLayout extends ContentFrameLayout {
    private ProGuard f1182a;

    /* renamed from: android.support.v7.internal.widget.NativeActionModeAwareLayout.a */
    public interface ProGuard {
        ActionMode m2256a(View view, Callback callback);
    }

    public NativeActionModeAwareLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void setActionModeForChildListener(ProGuard proGuard) {
        this.f1182a = proGuard;
    }

    public ActionMode startActionModeForChild(View view, Callback callback) {
        if (this.f1182a != null) {
            return this.f1182a.m2256a(view, callback);
        }
        return super.startActionModeForChild(view, callback);
    }
}
