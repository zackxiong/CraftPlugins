package com.yf.lib.ui.views.birthday;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.GradientDrawable.Orientation;
import android.os.Handler;
import android.text.Layout;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.FloatMath;
import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import com.yf.lib.ProGuard;
import java.util.LinkedList;
import java.util.List;

/* compiled from: ProGuard */
public class WheelView extends View {
    private static int f6792c;
    private static int f6793j;
    private static int f6794k;
    private boolean f6795A;
    private int f6796B;
    private GestureDetector f6797C;
    private Scroller f6798D;
    private int f6799E;
    private List<ProGuard> f6800F;
    private List<ProGuard> f6801G;
    private Context f6802H;
    private boolean f6803I;
    private SimpleOnGestureListener f6804J;
    private final int f6805K;
    private final int f6806L;
    private Handler f6807M;
    public int f6808a;
    boolean f6809b;
    private int f6810d;
    private int f6811e;
    private int f6812f;
    private int f6813g;
    private final int[] f6814h;
    private final int f6815i;
    private ProGuard f6816l;
    private int f6817m;
    private int f6818n;
    private int f6819o;
    private int f6820p;
    private int f6821q;
    private TextPaint f6822r;
    private TextPaint f6823s;
    private StaticLayout f6824t;
    private StaticLayout f6825u;
    private StaticLayout f6826v;
    private String f6827w;
    private Drawable f6828x;
    private GradientDrawable f6829y;
    private GradientDrawable f6830z;

    static {
        f6792c = -1;
        f6793j = 1;
        f6794k = 30;
    }

    public WheelView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f6810d = Color.argb(230, 0, 0, 0);
        this.f6811e = Color.argb(180, 0, 0, 0);
        this.f6812f = Color.argb(130, 0, 0, 0);
        this.f6813g = Color.argb(80, 0, 0, 0);
        this.f6814h = new int[]{this.f6810d, this.f6811e, this.f6812f, this.f6813g};
        this.f6815i = this.f6808a / 5;
        this.f6816l = null;
        this.f6817m = 0;
        this.f6818n = 0;
        this.f6819o = 0;
        this.f6820p = 5;
        this.f6821q = 0;
        this.f6809b = false;
        this.f6800F = new LinkedList();
        this.f6801G = new LinkedList();
        this.f6803I = false;
        this.f6804J = new ProGuard(this);
        this.f6805K = 0;
        this.f6806L = 1;
        this.f6807M = new ProGuard(this);
        m8652a(context);
    }

    public WheelView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6810d = Color.argb(230, 0, 0, 0);
        this.f6811e = Color.argb(180, 0, 0, 0);
        this.f6812f = Color.argb(130, 0, 0, 0);
        this.f6813g = Color.argb(80, 0, 0, 0);
        this.f6814h = new int[]{this.f6810d, this.f6811e, this.f6812f, this.f6813g};
        this.f6815i = this.f6808a / 5;
        this.f6816l = null;
        this.f6817m = 0;
        this.f6818n = 0;
        this.f6819o = 0;
        this.f6820p = 5;
        this.f6821q = 0;
        this.f6809b = false;
        this.f6800F = new LinkedList();
        this.f6801G = new LinkedList();
        this.f6803I = false;
        this.f6804J = new ProGuard(this);
        this.f6805K = 0;
        this.f6806L = 1;
        this.f6807M = new ProGuard(this);
        m8652a(context);
    }

    public WheelView(Context context) {
        super(context);
        this.f6810d = Color.argb(230, 0, 0, 0);
        this.f6811e = Color.argb(180, 0, 0, 0);
        this.f6812f = Color.argb(130, 0, 0, 0);
        this.f6813g = Color.argb(80, 0, 0, 0);
        this.f6814h = new int[]{this.f6810d, this.f6811e, this.f6812f, this.f6813g};
        this.f6815i = this.f6808a / 5;
        this.f6816l = null;
        this.f6817m = 0;
        this.f6818n = 0;
        this.f6819o = 0;
        this.f6820p = 5;
        this.f6821q = 0;
        this.f6809b = false;
        this.f6800F = new LinkedList();
        this.f6801G = new LinkedList();
        this.f6803I = false;
        this.f6804J = new ProGuard(this);
        this.f6805K = 0;
        this.f6806L = 1;
        this.f6807M = new ProGuard(this);
        m8652a(context);
    }

    private void m8652a(Context context) {
        this.f6797C = new GestureDetector(context, this.f6804J);
        this.f6797C.setIsLongpressEnabled(false);
        f6794k = ProGuard.m8685a(context, (float) f6793j);
        this.f6798D = new Scroller(context);
        this.f6802H = context;
    }

    public ProGuard getAdapter() {
        return this.f6816l;
    }

    public void setAdapter(ProGuard proGuard) {
        this.f6816l = proGuard;
        m8664d();
        invalidate();
    }

    public void setInterpolator(Interpolator interpolator) {
        this.f6798D.forceFinished(true);
        this.f6798D = new Scroller(getContext(), interpolator);
    }

    public int getVisibleItems() {
        return this.f6820p;
    }

    public void setVisibleItems(int i) {
        this.f6820p = i;
        invalidate();
    }

    public String getLabel() {
        return this.f6827w;
    }

    public void setLabel(String str) {
        if (this.f6827w == null || !this.f6827w.equals(str)) {
            this.f6827w = str;
            this.f6825u = null;
            invalidate();
        }
    }

    protected void m8680a(int i, int i2) {
        for (ProGuard a : this.f6800F) {
            a.m8686a(this, i, i2);
        }
    }

    protected void m8679a() {
        for (ProGuard a : this.f6801G) {
            a.m8687a(this);
        }
    }

    protected void m8682b() {
        for (ProGuard b : this.f6801G) {
            b.m8688b(this);
        }
    }

    public int getCurrentItem() {
        return this.f6817m;
    }

    public void m8681a(int i, boolean z) {
        if (this.f6816l != null && this.f6816l.m8689a() != 0) {
            if (i < 0 || i >= this.f6816l.m8689a()) {
                if (this.f6809b) {
                    while (i < 0) {
                        i += this.f6816l.m8689a();
                    }
                    i %= this.f6816l.m8689a();
                } else {
                    return;
                }
            }
            if (i == this.f6817m) {
                return;
            }
            if (z) {
                m8683b(i - this.f6817m, 400);
                return;
            }
            m8664d();
            int i2 = this.f6817m;
            this.f6817m = i;
            m8680a(i2, this.f6817m);
            invalidate();
        }
    }

    public void setCurrentItem(int i) {
        m8681a(i, false);
    }

    public void setCyclic(boolean z) {
        this.f6809b = z;
        invalidate();
        m8664d();
    }

    private void m8664d() {
        this.f6824t = null;
        this.f6826v = null;
        this.f6796B = 0;
    }

    private void m8669e() {
        this.f6808a = ProGuard.m8685a(this.f6802H, 19.0f);
        if (this.f6822r == null) {
            this.f6822r = new TextPaint(1);
            this.f6822r.setTextSize((float) this.f6808a);
        }
        if (this.f6823s == null) {
            this.f6823s = new TextPaint(5);
            this.f6823s.setTextSize((float) this.f6808a);
        }
        if (this.f6828x == null) {
            this.f6828x = getContext().getResources().getDrawable(ProGuard.drawable.wheel_val);
        }
        if (this.f6829y == null) {
            this.f6829y = new GradientDrawable(Orientation.TOP_BOTTOM, this.f6814h);
        }
        if (this.f6830z == null) {
            this.f6830z = new GradientDrawable(Orientation.BOTTOM_TOP, this.f6814h);
        }
    }

    private int m8649a(Layout layout) {
        if (layout == null) {
            return 0;
        }
        return Math.max(((getItemHeight() * this.f6820p) - (this.f6815i * 2)) - 15, getSuggestedMinimumHeight());
    }

    private String m8650a(int i) {
        if (this.f6816l == null || this.f6816l.m8689a() == 0) {
            return null;
        }
        int a = this.f6816l.m8689a();
        if ((i < 0 || i >= a) && !this.f6809b) {
            return null;
        }
        while (i < 0) {
            i += a;
        }
        return this.f6816l.m8690a(i % a);
    }

    private String m8651a(boolean z) {
        StringBuilder stringBuilder = new StringBuilder();
        int i = (this.f6820p / 2) + 1;
        int i2 = this.f6817m - i;
        while (i2 <= this.f6817m + i) {
            if (z || i2 != this.f6817m) {
                String a = m8650a(i2);
                if (a != null) {
                    stringBuilder.append(a);
                }
            }
            if (i2 < this.f6817m + i) {
                stringBuilder.append("\n");
            }
            i2++;
        }
        return stringBuilder.toString();
    }

    private int getMaxTextLength() {
        ProGuard adapter = getAdapter();
        if (adapter == null) {
            return 0;
        }
        int b = adapter.m8691b();
        if (b > 0) {
            return b;
        }
        String str = null;
        for (int max = Math.max(this.f6817m - (this.f6820p / 2), 0); max < Math.min(this.f6817m + this.f6820p, adapter.m8689a()); max++) {
            String a = adapter.m8690a(max);
            if (a != null && (str == null || str.length() < a.length())) {
                str = a;
            }
        }
        return str != null ? str.length() : 0;
    }

    private int getItemHeight() {
        if (this.f6821q != 0) {
            return this.f6821q;
        }
        if (this.f6824t == null || this.f6824t.getLineCount() <= 2) {
            return getHeight() / this.f6820p;
        }
        this.f6821q = this.f6824t.getLineTop(2) - this.f6824t.getLineTop(1);
        return this.f6821q;
    }

    private int m8660c(int i, int i2) {
        m8669e();
        int maxTextLength = getMaxTextLength();
        if (maxTextLength > 0) {
            this.f6818n = (int) (((float) maxTextLength) * FloatMath.ceil(Layout.getDesiredWidth("0", this.f6822r)));
        } else {
            this.f6818n = 0;
        }
        this.f6818n += 2;
        this.f6819o = 0;
        if (this.f6827w != null && this.f6827w.length() > 0) {
            this.f6819o = (int) FloatMath.ceil(Layout.getDesiredWidth(this.f6827w, this.f6823s));
        }
        if (i2 == 1073741824) {
            maxTextLength = 1;
        } else {
            maxTextLength = (this.f6818n + this.f6819o) + 400;
            if (this.f6819o > 0) {
                maxTextLength += f6794k;
            }
            maxTextLength = Math.max(maxTextLength, getSuggestedMinimumWidth());
            if (i2 != Integer.MIN_VALUE || i >= maxTextLength) {
                i = maxTextLength;
                maxTextLength = 0;
            } else {
                maxTextLength = 1;
            }
        }
        if (maxTextLength != 0) {
            maxTextLength = (i - f6794k) - 400;
            if (maxTextLength <= 0) {
                this.f6819o = 0;
                this.f6818n = 0;
            }
            if (this.f6803I) {
                this.f6818n = maxTextLength;
            } else if (this.f6819o > 0) {
                this.f6818n = (int) ((((double) this.f6818n) * ((double) maxTextLength)) / ((double) (this.f6818n + this.f6819o)));
                this.f6819o = maxTextLength - this.f6818n;
            } else {
                this.f6818n = maxTextLength + f6794k;
            }
        }
        if (this.f6818n > 0) {
            m8665d(this.f6818n, this.f6819o);
        }
        return i;
    }

    public void setCenter(boolean z) {
        this.f6803I = z;
    }

    private void m8665d(int i, int i2) {
        if (this.f6824t == null || this.f6824t.getWidth() > i) {
            this.f6824t = new StaticLayout(m8651a(this.f6795A), this.f6822r, i, i2 > 0 ? Alignment.ALIGN_CENTER : Alignment.ALIGN_CENTER, 1.0f, 15.0f, false);
        } else {
            this.f6824t.increaseWidthTo(i);
        }
        if (!this.f6795A && (this.f6826v == null || this.f6826v.getWidth() > i)) {
            CharSequence a;
            if (getAdapter() != null) {
                a = getAdapter().m8690a(this.f6817m);
            } else {
                a = null;
            }
            if (a == null) {
                a = "";
            }
            this.f6826v = new StaticLayout(a, this.f6823s, i, i2 > 0 ? Alignment.ALIGN_CENTER : Alignment.ALIGN_CENTER, 1.0f, 15.0f, false);
        } else if (this.f6795A) {
            this.f6826v = null;
        } else {
            this.f6826v.increaseWidthTo(i);
        }
        if (i2 <= 0) {
            return;
        }
        if (this.f6825u == null || this.f6825u.getWidth() > i2) {
            this.f6825u = new StaticLayout(this.f6827w, this.f6823s, i2, Alignment.ALIGN_NORMAL, 1.0f, 15.0f, false);
        } else {
            this.f6825u.increaseWidthTo(i2);
        }
    }

    protected void onMeasure(int i, int i2) {
        int mode = MeasureSpec.getMode(i);
        int mode2 = MeasureSpec.getMode(i2);
        int size = MeasureSpec.getSize(i);
        int size2 = MeasureSpec.getSize(i2);
        size = m8660c(size, mode);
        if (mode2 != 1073741824) {
            mode = m8649a(this.f6824t);
            size2 = mode2 == Integer.MIN_VALUE ? Math.min(mode, size2) : mode;
        }
        setMeasuredDimension(size, size2);
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        m8666d(canvas);
        if (this.f6824t == null) {
            if (this.f6818n == 0) {
                m8660c(getWidth(), 1073741824);
            } else {
                m8665d(this.f6818n, this.f6819o);
            }
        }
        if (this.f6818n > 0) {
            canvas.save();
            canvas.translate(200.0f, (float) (-this.f6815i));
            m8661c(canvas);
            m8659b(canvas);
            canvas.restore();
        }
        m8653a(canvas);
    }

    private void m8653a(Canvas canvas) {
        this.f6829y.setBounds(0, 0, getWidth(), (getHeight() * 2) / 5);
        this.f6829y.draw(canvas);
        this.f6830z.setBounds(0, (getHeight() * 3) / 5, getWidth(), getHeight());
        this.f6830z.draw(canvas);
    }

    private void m8659b(Canvas canvas) {
        this.f6823s.setColor(f6792c);
        this.f6823s.setTextSize((float) ProGuard.m8685a(this.f6802H, 19.0f));
        this.f6823s.drawableState = getDrawableState();
        Rect rect = new Rect();
        this.f6824t.getLineBounds(this.f6820p / 2, rect);
        if (this.f6825u != null) {
            canvas.save();
            if (this.f6803I) {
                canvas.translate((float) (this.f6824t.getWidth() - ProGuard.m8685a(this.f6802H, 130.0f)), (float) rect.top);
            } else {
                canvas.translate((float) (this.f6824t.getWidth() + f6794k), (float) rect.top);
            }
            this.f6825u.draw(canvas);
            canvas.restore();
        }
        if (this.f6826v != null) {
            canvas.save();
            canvas.translate(0.0f, (float) (rect.top + this.f6796B));
            this.f6826v.draw(canvas);
            canvas.restore();
        }
    }

    private void m8661c(Canvas canvas) {
        canvas.save();
        canvas.translate(0.0f, (float) ((-this.f6824t.getLineTop(1)) + this.f6796B));
        this.f6822r.setColor(-1);
        this.f6822r.drawableState = getDrawableState();
        this.f6824t.draw(canvas);
        canvas.restore();
    }

    private void m8666d(Canvas canvas) {
        int height = getHeight() / 2;
        int itemHeight = getItemHeight() / 2;
        this.f6828x.setBounds(0, height - itemHeight, getWidth(), height + itemHeight);
        this.f6828x.draw(canvas);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!(getAdapter() == null || this.f6797C.onTouchEvent(motionEvent) || motionEvent.getAction() != 1)) {
            m8673g();
        }
        return true;
    }

    private void m8658b(int i) {
        this.f6796B += i;
        int itemHeight = this.f6796B / getItemHeight();
        int i2 = this.f6817m - itemHeight;
        if (this.f6809b && this.f6816l.m8689a() > 0) {
            while (i2 < 0) {
                i2 += this.f6816l.m8689a();
            }
            i2 %= this.f6816l.m8689a();
        } else if (!this.f6795A) {
            i2 = Math.min(Math.max(i2, 0), this.f6816l.m8689a() - 1);
        } else if (i2 < 0) {
            itemHeight = this.f6817m;
            i2 = 0;
        } else if (i2 >= this.f6816l.m8689a()) {
            itemHeight = (this.f6817m - this.f6816l.m8689a()) + 1;
            i2 = this.f6816l.m8689a() - 1;
        }
        int i3 = this.f6796B;
        if (i2 != this.f6817m) {
            m8681a(i2, false);
        } else {
            invalidate();
        }
        this.f6796B = i3 - (getItemHeight() * itemHeight);
        if (this.f6796B > getHeight()) {
            this.f6796B = (this.f6796B % getHeight()) + getHeight();
        }
    }

    private void setNextMessage(int i) {
        m8671f();
        this.f6807M.sendEmptyMessage(i);
    }

    private void m8671f() {
        this.f6807M.removeMessages(0);
        this.f6807M.removeMessages(1);
    }

    private void m8673g() {
        if (this.f6816l != null) {
            this.f6799E = 0;
            int i = this.f6796B;
            int itemHeight = getItemHeight();
            int i2 = i > 0 ? this.f6817m < this.f6816l.m8689a() ? 1 : 0 : this.f6817m > 0 ? 1 : 0;
            if ((this.f6809b || r0 != 0) && Math.abs((float) i) > ((float) itemHeight) / 2.0f) {
                i = i < 0 ? i + (itemHeight + 1) : i - (itemHeight + 1);
            }
            if (Math.abs(i) > 1) {
                this.f6798D.startScroll(0, 0, 0, i, 400);
                setNextMessage(1);
                return;
            }
            m8684c();
        }
    }

    private void m8675h() {
        if (!this.f6795A) {
            this.f6795A = true;
            m8679a();
        }
    }

    void m8684c() {
        if (this.f6795A) {
            m8682b();
            this.f6795A = false;
        }
        m8664d();
        invalidate();
    }

    public void m8683b(int i, int i2) {
        this.f6798D.forceFinished(true);
        this.f6799E = this.f6796B;
        int itemHeight = i * getItemHeight();
        this.f6798D.startScroll(0, this.f6799E, 0, itemHeight - this.f6799E, i2);
        setNextMessage(0);
        m8675h();
    }

    public void setLabelColor(int i) {
        f6792c = i;
    }
}
