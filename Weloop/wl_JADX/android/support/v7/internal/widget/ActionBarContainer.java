package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v7.internal.ProGuard;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;

/* compiled from: ProGuard */
public class ActionBarContainer extends FrameLayout {
    Drawable f1068a;
    Drawable f1069b;
    Drawable f1070c;
    boolean f1071d;
    boolean f1072e;
    private boolean f1073f;
    private View f1074g;
    private View f1075h;
    private View f1076i;
    private int f1077j;

    public ActionBarContainer(Context context) {
        this(context, null);
    }

    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        Drawable proGuard;
        super(context, attributeSet);
        if (ProGuard.m1865a()) {
            proGuard = new ProGuard(this);
        } else {
            proGuard = new ProGuard(this);
        }
        setBackgroundDrawable(proGuard);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, android.support.v7.appcompat.ProGuard.styleable.ActionBar);
        this.f1068a = obtainStyledAttributes.getDrawable(android.support.v7.appcompat.ProGuard.styleable.ActionBar_background);
        this.f1069b = obtainStyledAttributes.getDrawable(android.support.v7.appcompat.ProGuard.styleable.ActionBar_backgroundStacked);
        this.f1077j = obtainStyledAttributes.getDimensionPixelSize(android.support.v7.appcompat.ProGuard.styleable.ActionBar_height, -1);
        if (getId() == android.support.v7.appcompat.ProGuard.id.split_action_bar) {
            this.f1071d = true;
            this.f1070c = obtainStyledAttributes.getDrawable(android.support.v7.appcompat.ProGuard.styleable.ActionBar_backgroundSplit);
        }
        obtainStyledAttributes.recycle();
        boolean z = this.f1071d ? this.f1070c == null : this.f1068a == null && this.f1069b == null;
        setWillNotDraw(z);
    }

    public void onFinishInflate() {
        super.onFinishInflate();
        this.f1075h = findViewById(android.support.v7.appcompat.ProGuard.id.action_bar);
        this.f1076i = findViewById(android.support.v7.appcompat.ProGuard.id.action_context_bar);
    }

    public void setPrimaryBackground(Drawable drawable) {
        boolean z = true;
        if (this.f1068a != null) {
            this.f1068a.setCallback(null);
            unscheduleDrawable(this.f1068a);
        }
        this.f1068a = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f1075h != null) {
                this.f1068a.setBounds(this.f1075h.getLeft(), this.f1075h.getTop(), this.f1075h.getRight(), this.f1075h.getBottom());
            }
        }
        if (this.f1071d) {
            if (this.f1070c != null) {
                z = false;
            }
        } else if (!(this.f1068a == null && this.f1069b == null)) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
    }

    public void setStackedBackground(Drawable drawable) {
        boolean z = true;
        if (this.f1069b != null) {
            this.f1069b.setCallback(null);
            unscheduleDrawable(this.f1069b);
        }
        this.f1069b = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f1072e && this.f1069b != null) {
                this.f1069b.setBounds(this.f1074g.getLeft(), this.f1074g.getTop(), this.f1074g.getRight(), this.f1074g.getBottom());
            }
        }
        if (this.f1071d) {
            if (this.f1070c != null) {
                z = false;
            }
        } else if (!(this.f1068a == null && this.f1069b == null)) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
    }

    public void setSplitBackground(Drawable drawable) {
        boolean z = true;
        if (this.f1070c != null) {
            this.f1070c.setCallback(null);
            unscheduleDrawable(this.f1070c);
        }
        this.f1070c = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f1071d && this.f1070c != null) {
                this.f1070c.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            }
        }
        if (this.f1071d) {
            if (this.f1070c != null) {
                z = false;
            }
        } else if (!(this.f1068a == null && this.f1069b == null)) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
    }

    public void setVisibility(int i) {
        boolean z;
        super.setVisibility(i);
        if (i == 0) {
            z = true;
        } else {
            z = false;
        }
        if (this.f1068a != null) {
            this.f1068a.setVisible(z, false);
        }
        if (this.f1069b != null) {
            this.f1069b.setVisible(z, false);
        }
        if (this.f1070c != null) {
            this.f1070c.setVisible(z, false);
        }
    }

    protected boolean verifyDrawable(Drawable drawable) {
        return (drawable == this.f1068a && !this.f1071d) || ((drawable == this.f1069b && this.f1072e) || ((drawable == this.f1070c && this.f1071d) || super.verifyDrawable(drawable)));
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.f1068a != null && this.f1068a.isStateful()) {
            this.f1068a.setState(getDrawableState());
        }
        if (this.f1069b != null && this.f1069b.isStateful()) {
            this.f1069b.setState(getDrawableState());
        }
        if (this.f1070c != null && this.f1070c.isStateful()) {
            this.f1070c.setState(getDrawableState());
        }
    }

    public void jumpDrawablesToCurrentState() {
        if (VERSION.SDK_INT >= 11) {
            super.jumpDrawablesToCurrentState();
            if (this.f1068a != null) {
                this.f1068a.jumpToCurrentState();
            }
            if (this.f1069b != null) {
                this.f1069b.jumpToCurrentState();
            }
            if (this.f1070c != null) {
                this.f1070c.jumpToCurrentState();
            }
        }
    }

    public void setTransitioning(boolean z) {
        this.f1073f = z;
        setDescendantFocusability(z ? 393216 : 262144);
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f1073f || super.onInterceptTouchEvent(motionEvent);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setTabContainer(ProGuard proGuard) {
        if (this.f1074g != null) {
            removeView(this.f1074g);
        }
        this.f1074g = proGuard;
        if (proGuard != null) {
            addView(proGuard);
            LayoutParams layoutParams = proGuard.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -2;
            proGuard.setAllowCollapse(false);
        }
    }

    public View getTabContainer() {
        return this.f1074g;
    }

    public ActionMode startActionModeForChild(View view, Callback callback) {
        return null;
    }

    private boolean m2159a(View view) {
        return view == null || view.getVisibility() == 8 || view.getMeasuredHeight() == 0;
    }

    private int m2160b(View view) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        return layoutParams.bottomMargin + (view.getMeasuredHeight() + layoutParams.topMargin);
    }

    public void onMeasure(int i, int i2) {
        if (this.f1075h == null && MeasureSpec.getMode(i2) == Integer.MIN_VALUE && this.f1077j >= 0) {
            i2 = MeasureSpec.makeMeasureSpec(Math.min(this.f1077j, MeasureSpec.getSize(i2)), Integer.MIN_VALUE);
        }
        super.onMeasure(i, i2);
        if (this.f1075h != null) {
            int mode = MeasureSpec.getMode(i2);
            if (this.f1074g != null && this.f1074g.getVisibility() != 8 && mode != 1073741824) {
                int b;
                if (!m2159a(this.f1075h)) {
                    b = m2160b(this.f1075h);
                } else if (m2159a(this.f1076i)) {
                    b = 0;
                } else {
                    b = m2160b(this.f1076i);
                }
                setMeasuredDimension(getMeasuredWidth(), Math.min(b + m2160b(this.f1074g), mode == Integer.MIN_VALUE ? MeasureSpec.getSize(i2) : Integer.MAX_VALUE));
            }
        }
    }

    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = 1;
        super.onLayout(z, i, i2, i3, i4);
        View view = this.f1074g;
        boolean z2 = (view == null || view.getVisibility() == 8) ? false : true;
        if (!(view == null || view.getVisibility() == 8)) {
            int measuredHeight = getMeasuredHeight();
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
            view.layout(i, (measuredHeight - view.getMeasuredHeight()) - layoutParams.bottomMargin, i3, measuredHeight - layoutParams.bottomMargin);
        }
        if (!this.f1071d) {
            int i6;
            if (this.f1068a != null) {
                if (this.f1075h.getVisibility() == 0) {
                    this.f1068a.setBounds(this.f1075h.getLeft(), this.f1075h.getTop(), this.f1075h.getRight(), this.f1075h.getBottom());
                } else if (this.f1076i == null || this.f1076i.getVisibility() != 0) {
                    this.f1068a.setBounds(0, 0, 0, 0);
                } else {
                    this.f1068a.setBounds(this.f1076i.getLeft(), this.f1076i.getTop(), this.f1076i.getRight(), this.f1076i.getBottom());
                }
                i6 = 1;
            } else {
                i6 = 0;
            }
            this.f1072e = z2;
            if (!z2 || this.f1069b == null) {
                i5 = i6;
            } else {
                this.f1069b.setBounds(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
        } else if (this.f1070c != null) {
            this.f1070c.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
        } else {
            i5 = 0;
        }
        if (i5 != 0) {
            invalidate();
        }
    }
}
