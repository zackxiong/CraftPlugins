package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import java.lang.ref.WeakReference;

/* compiled from: ProGuard */
public final class ViewStubCompat extends View {
    private int f1233a;
    private int f1234b;
    private WeakReference<View> f1235c;
    private LayoutInflater f1236d;
    private ProGuard f1237e;

    /* renamed from: android.support.v7.internal.widget.ViewStubCompat.a */
    public interface ProGuard {
        void m2302a(ViewStubCompat viewStubCompat, View view);
    }

    public ViewStubCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ViewStubCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1233a = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, android.support.v7.appcompat.ProGuard.styleable.ViewStubCompat, i, 0);
        this.f1234b = obtainStyledAttributes.getResourceId(android.support.v7.appcompat.ProGuard.styleable.ViewStubCompat_android_inflatedId, -1);
        this.f1233a = obtainStyledAttributes.getResourceId(android.support.v7.appcompat.ProGuard.styleable.ViewStubCompat_android_layout, 0);
        setId(obtainStyledAttributes.getResourceId(android.support.v7.appcompat.ProGuard.styleable.ViewStubCompat_android_id, -1));
        obtainStyledAttributes.recycle();
        setVisibility(8);
        setWillNotDraw(true);
    }

    public int getInflatedId() {
        return this.f1234b;
    }

    public void setInflatedId(int i) {
        this.f1234b = i;
    }

    public int getLayoutResource() {
        return this.f1233a;
    }

    public void setLayoutResource(int i) {
        this.f1233a = i;
    }

    public void setLayoutInflater(LayoutInflater layoutInflater) {
        this.f1236d = layoutInflater;
    }

    public LayoutInflater getLayoutInflater() {
        return this.f1236d;
    }

    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    public void draw(Canvas canvas) {
    }

    protected void dispatchDraw(Canvas canvas) {
    }

    public void setVisibility(int i) {
        if (this.f1235c != null) {
            View view = (View) this.f1235c.get();
            if (view != null) {
                view.setVisibility(i);
                return;
            }
            throw new IllegalStateException("setVisibility called on un-referenced view");
        }
        super.setVisibility(i);
        if (i == 0 || i == 4) {
            m2303a();
        }
    }

    public View m2303a() {
        ViewParent parent = getParent();
        if (parent == null || !(parent instanceof ViewGroup)) {
            throw new IllegalStateException("ViewStub must have a non-null ViewGroup viewParent");
        } else if (this.f1233a != 0) {
            LayoutInflater layoutInflater;
            ViewGroup viewGroup = (ViewGroup) parent;
            if (this.f1236d != null) {
                layoutInflater = this.f1236d;
            } else {
                layoutInflater = LayoutInflater.from(getContext());
            }
            View inflate = layoutInflater.inflate(this.f1233a, viewGroup, false);
            if (this.f1234b != -1) {
                inflate.setId(this.f1234b);
            }
            int indexOfChild = viewGroup.indexOfChild(this);
            viewGroup.removeViewInLayout(this);
            LayoutParams layoutParams = getLayoutParams();
            if (layoutParams != null) {
                viewGroup.addView(inflate, indexOfChild, layoutParams);
            } else {
                viewGroup.addView(inflate, indexOfChild);
            }
            this.f1235c = new WeakReference(inflate);
            if (this.f1237e != null) {
                this.f1237e.m2302a(this, inflate);
            }
            return inflate;
        } else {
            throw new IllegalArgumentException("ViewStub must have a valid layoutResource");
        }
    }

    public void setOnInflateListener(ProGuard proGuard) {
        this.f1237e = proGuard;
    }
}
