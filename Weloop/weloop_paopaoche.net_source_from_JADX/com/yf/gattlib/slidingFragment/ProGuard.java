package com.yf.gattlib.slidingFragment;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;

/* renamed from: com.yf.gattlib.slidingFragment.c */
public class ProGuard extends ViewGroup {
    private int f6467a;
    private ProGuard f6468b;
    private View f6469c;
    private View f6470d;
    private int f6471e;
    private int f6472f;
    private com.yf.gattlib.slidingFragment.SlidingMenu.ProGuard f6473g;
    private boolean f6474h;
    private int f6475i;
    private boolean f6476j;
    private final Paint f6477k;
    private float f6478l;
    private Drawable f6479m;
    private Drawable f6480n;
    private int f6481o;
    private float f6482p;
    private boolean f6483q;
    private Bitmap f6484r;
    private View f6485s;

    public void setCustomViewAbove(ProGuard proGuard) {
        this.f6468b = proGuard;
    }

    public void setCanvasTransformer(com.yf.gattlib.slidingFragment.SlidingMenu.ProGuard proGuard) {
        this.f6473g = proGuard;
    }

    public void setWidthOffset(int i) {
        this.f6472f = i;
        requestLayout();
    }

    public void setMarginThreshold(int i) {
        this.f6471e = i;
    }

    public int getMarginThreshold() {
        return this.f6471e;
    }

    public int getBehindWidth() {
        return this.f6469c.getWidth();
    }

    public void setContent(View view) {
        if (this.f6469c != null) {
            removeView(this.f6469c);
        }
        this.f6469c = view;
        addView(this.f6469c);
    }

    public View getContent() {
        return this.f6469c;
    }

    public void setSecondaryContent(View view) {
        if (this.f6470d != null) {
            removeView(this.f6470d);
        }
        this.f6470d = view;
        addView(this.f6470d);
    }

    public View getSecondaryContent() {
        return this.f6470d;
    }

    public void setChildrenEnabled(boolean z) {
        this.f6474h = z;
    }

    public void scrollTo(int i, int i2) {
        super.scrollTo(i, i2);
        if (this.f6473g != null) {
            invalidate();
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return !this.f6474h;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return !this.f6474h;
    }

    protected void dispatchDraw(Canvas canvas) {
        if (this.f6473g != null) {
            canvas.save();
            this.f6473g.m8451a(canvas, this.f6468b.getPercentOpen());
            super.dispatchDraw(canvas);
            canvas.restore();
            return;
        }
        super.dispatchDraw(canvas);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        int i6 = i4 - i2;
        this.f6469c.layout(0, 0, i5 - this.f6472f, i6);
        if (this.f6470d != null) {
            this.f6470d.layout(0, 0, i5 - this.f6472f, i6);
        }
    }

    protected void onMeasure(int i, int i2) {
        int defaultSize = ProGuard.getDefaultSize(0, i);
        int defaultSize2 = ProGuard.getDefaultSize(0, i2);
        setMeasuredDimension(defaultSize, defaultSize2);
        defaultSize = ProGuard.getChildMeasureSpec(i, 0, defaultSize - this.f6472f);
        defaultSize2 = ProGuard.getChildMeasureSpec(i2, 0, defaultSize2);
        this.f6469c.measure(defaultSize, defaultSize2);
        if (this.f6470d != null) {
            this.f6470d.measure(defaultSize, defaultSize2);
        }
    }

    public void setMode(int i) {
        if (i == 0 || i == 1) {
            if (this.f6469c != null) {
                this.f6469c.setVisibility(0);
            }
            if (this.f6470d != null) {
                this.f6470d.setVisibility(4);
            }
        }
        this.f6475i = i;
    }

    public int getMode() {
        return this.f6475i;
    }

    public void setScrollScale(float f) {
        this.f6478l = f;
    }

    public float getScrollScale() {
        return this.f6478l;
    }

    public void setShadowDrawable(Drawable drawable) {
        this.f6479m = drawable;
        invalidate();
    }

    public void setSecondaryShadowDrawable(Drawable drawable) {
        this.f6480n = drawable;
        invalidate();
    }

    public void setShadowWidth(int i) {
        this.f6481o = i;
        invalidate();
    }

    public void setFadeEnabled(boolean z) {
        this.f6476j = z;
    }

    public void setFadeDegree(float f) {
        if (f > 1.0f || f < 0.0f) {
            throw new IllegalStateException("The BehindFadeDegree must be between 0.0f and 1.0f");
        }
        this.f6482p = f;
    }

    public int m8485a(int i) {
        if (i > 1) {
            i = 2;
        } else if (i < 1) {
            i = 0;
        }
        if (this.f6475i == 0 && i > 1) {
            return 0;
        }
        if (this.f6475i != 1 || i >= 1) {
            return i;
        }
        return 2;
    }

    public void m8488a(View view, int i, int i2) {
        int i3 = 0;
        if (this.f6475i == 0) {
            if (i >= view.getLeft()) {
                i3 = 4;
            }
            scrollTo((int) (((float) (getBehindWidth() + i)) * this.f6478l), i2);
        } else if (this.f6475i == 1) {
            if (i <= view.getLeft()) {
                i3 = 4;
            }
            scrollTo((int) (((float) (getBehindWidth() - getWidth())) + (((float) (i - getBehindWidth())) * this.f6478l)), i2);
        } else if (this.f6475i == 2) {
            int i4;
            this.f6469c.setVisibility(i >= view.getLeft() ? 4 : 0);
            View view2 = this.f6470d;
            if (i <= view.getLeft()) {
                i4 = 4;
            } else {
                i4 = 0;
            }
            view2.setVisibility(i4);
            if (i == 0) {
                i3 = 4;
            }
            if (i <= view.getLeft()) {
                scrollTo((int) (((float) (getBehindWidth() + i)) * this.f6478l), i2);
            } else {
                scrollTo((int) (((float) (getBehindWidth() - getWidth())) + (((float) (i - getBehindWidth())) * this.f6478l)), i2);
            }
        }
        if (i3 == 4) {
            Log.v("CustomViewBehind", "behind INVISIBLE");
        }
        setVisibility(i3);
    }

    public int m8487a(View view, int i) {
        if (this.f6475i != 0) {
            if (this.f6475i != 1) {
                if (this.f6475i == 2) {
                    switch (i) {
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_theme /*0*/:
                            return view.getLeft() - getBehindWidth();
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                            return view.getLeft() + getBehindWidth();
                        default:
                            break;
                    }
                }
            }
            switch (i) {
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_theme /*0*/:
                    return view.getLeft();
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                    return view.getLeft() + getBehindWidth();
                default:
                    break;
            }
        }
        switch (i) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_theme /*0*/:
                return view.getLeft() - getBehindWidth();
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                return view.getLeft();
        }
        return view.getLeft();
    }

    public int m8486a(View view) {
        if (this.f6475i == 0 || this.f6475i == 2) {
            return view.getLeft() - getBehindWidth();
        }
        if (this.f6475i == 1) {
            return view.getLeft();
        }
        return 0;
    }

    public int m8493b(View view) {
        if (this.f6475i == 0) {
            return view.getLeft();
        }
        if (this.f6475i == 1 || this.f6475i == 2) {
            return view.getLeft() + getBehindWidth();
        }
        return 0;
    }

    public boolean m8496b(View view, int i) {
        int left = view.getLeft();
        int right = view.getRight();
        if (this.f6475i == 0) {
            if (i < left || i > left + this.f6471e) {
                return false;
            }
            return true;
        } else if (this.f6475i == 1) {
            if (i > right || i < right - this.f6471e) {
                return false;
            }
            return true;
        } else if (this.f6475i != 2) {
            return false;
        } else {
            if (i >= left && i <= left + this.f6471e) {
                return true;
            }
            if (i > right || i < right - this.f6471e) {
                return false;
            }
            return true;
        }
    }

    public void setTouchMode(int i) {
        this.f6467a = i;
    }

    public boolean m8492a(View view, int i, float f) {
        switch (this.f6467a) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_theme /*0*/:
                return m8497b(view, i, f);
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                return true;
            default:
                return false;
        }
    }

    public boolean m8497b(View view, int i, float f) {
        if (this.f6475i == 0 || (this.f6475i == 2 && i == 0)) {
            if (f >= ((float) view.getLeft())) {
                return true;
            }
            return false;
        } else if (this.f6475i != 1 && (this.f6475i != 2 || i != 2)) {
            return false;
        } else {
            if (f > ((float) view.getRight())) {
                return false;
            }
            return true;
        }
    }

    public boolean m8491a(float f) {
        if (this.f6475i == 0) {
            if (f > 0.0f) {
                return true;
            }
            return false;
        } else if (this.f6475i == 1) {
            if (f >= 0.0f) {
                return false;
            }
            return true;
        } else if (this.f6475i != 2) {
            return false;
        } else {
            return true;
        }
    }

    public boolean m8495b(float f) {
        if (this.f6475i == 0) {
            if (f < 0.0f) {
                return true;
            }
            return false;
        } else if (this.f6475i == 1) {
            if (f <= 0.0f) {
                return false;
            }
            return true;
        } else if (this.f6475i != 2) {
            return false;
        } else {
            return true;
        }
    }

    public void m8489a(View view, Canvas canvas) {
        if (this.f6479m != null && this.f6481o > 0) {
            int left;
            if (this.f6475i == 0) {
                left = view.getLeft() - this.f6481o;
            } else if (this.f6475i == 1) {
                left = view.getRight();
            } else if (this.f6475i == 2) {
                if (this.f6480n != null) {
                    left = view.getRight();
                    this.f6480n.setBounds(left, 0, this.f6481o + left, getHeight());
                    this.f6480n.draw(canvas);
                }
                left = view.getLeft() - this.f6481o;
            } else {
                left = 0;
            }
            this.f6479m.setBounds(left, 0, this.f6481o + left, getHeight());
            this.f6479m.draw(canvas);
        }
    }

    public void m8490a(View view, Canvas canvas, float f) {
        int i = 0;
        if (this.f6476j) {
            int left;
            this.f6477k.setColor(Color.argb((int) ((this.f6482p * 255.0f) * Math.abs(1.0f - f)), 0, 0, 0));
            if (this.f6475i == 0) {
                left = view.getLeft() - getBehindWidth();
                i = view.getLeft();
            } else if (this.f6475i == 1) {
                left = view.getRight();
                i = view.getRight() + getBehindWidth();
            } else if (this.f6475i == 2) {
                Canvas canvas2 = canvas;
                canvas2.drawRect((float) (view.getLeft() - getBehindWidth()), 0.0f, (float) view.getLeft(), (float) getHeight(), this.f6477k);
                left = view.getRight();
                i = view.getRight() + getBehindWidth();
            } else {
                left = 0;
            }
            canvas.drawRect((float) left, 0.0f, (float) i, (float) getHeight(), this.f6477k);
        }
    }

    public void m8494b(View view, Canvas canvas, float f) {
        if (this.f6483q && this.f6484r != null && this.f6485s != null && ((String) this.f6485s.getTag(com.yf.ui.ProGuard.id.selected_view)).equals("CustomViewBehindSelectedView")) {
            canvas.save();
            int width = (int) (((float) this.f6484r.getWidth()) * f);
            int left;
            if (this.f6475i == 0) {
                left = view.getLeft();
                width = left - width;
                canvas.clipRect(width, 0, left, getHeight());
                canvas.drawBitmap(this.f6484r, (float) width, (float) getSelectorTop(), null);
            } else if (this.f6475i == 1) {
                left = view.getRight();
                width += left;
                canvas.clipRect(left, 0, width, getHeight());
                canvas.drawBitmap(this.f6484r, (float) (width - this.f6484r.getWidth()), (float) getSelectorTop(), null);
            }
            canvas.restore();
        }
    }

    public void setSelectorEnabled(boolean z) {
        this.f6483q = z;
    }

    public void setSelectedView(View view) {
        if (this.f6485s != null) {
            this.f6485s.setTag(com.yf.ui.ProGuard.id.selected_view, null);
            this.f6485s = null;
        }
        if (view != null && view.getParent() != null) {
            this.f6485s = view;
            this.f6485s.setTag(com.yf.ui.ProGuard.id.selected_view, "CustomViewBehindSelectedView");
            invalidate();
        }
    }

    private int getSelectorTop() {
        return this.f6485s.getTop() + ((this.f6485s.getHeight() - this.f6484r.getHeight()) / 2);
    }

    public void setSelectorBitmap(Bitmap bitmap) {
        this.f6484r = bitmap;
        refreshDrawableState();
    }
}
