package com.yf.smart.weloopx.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import java.util.ArrayList;
import java.util.Iterator;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* compiled from: ProGuard */
public class CropImageView extends ProGuard {
    public ArrayList<ProGuard> f9062a;
    ProGuard f9063b;
    float f9064c;
    float f9065d;
    int f9066e;
    private ProGuard f9067n;

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.h.m11455b() != null) {
            Iterator it = this.f9062a.iterator();
            while (it.hasNext()) {
                ProGuard proGuard = (ProGuard) it.next();
                proGuard.f9131f.set(getImageMatrix());
                proGuard.m11449c();
                if (proGuard.f9127b) {
                    m11411b(proGuard);
                }
            }
        }
    }

    public CropImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f9062a = new ArrayList();
        this.f9063b = null;
    }

    protected void m11413a(float f, float f2, float f3) {
        super.m11403a(f, f2, f3);
        Iterator it = this.f9062a.iterator();
        while (it.hasNext()) {
            ProGuard proGuard = (ProGuard) it.next();
            proGuard.f9131f.set(getImageMatrix());
            proGuard.m11449c();
        }
    }

    protected void m11412a(float f, float f2) {
        super.m11402a(f, f2);
        for (int i = 0; i < this.f9062a.size(); i++) {
            ProGuard proGuard = (ProGuard) this.f9062a.get(i);
            proGuard.f9131f.postTranslate(f, f2);
            proGuard.m11449c();
        }
    }

    private void m11409a(MotionEvent motionEvent) {
        int i = 0;
        for (int i2 = 0; i2 < this.f9062a.size(); i2++) {
            ProGuard proGuard = (ProGuard) this.f9062a.get(i2);
            proGuard.m11444a(false);
            proGuard.m11449c();
        }
        while (i < this.f9062a.size()) {
            proGuard = (ProGuard) this.f9062a.get(i);
            if (proGuard.m11439a(motionEvent.getX(), motionEvent.getY()) != 1) {
                if (!proGuard.m11445a()) {
                    proGuard.m11444a(true);
                    proGuard.m11449c();
                }
                invalidate();
            }
            i++;
        }
        invalidate();
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        ProGuard proGuard = this.f9067n;
        if (proGuard.f9104b) {
            return false;
        }
        ProGuard proGuard2;
        switch (motionEvent.getAction()) {
            case ProGuard.styleable.View_android_theme /*0*/:
                if (!proGuard.f9103a) {
                    for (int i = 0; i < this.f9062a.size(); i++) {
                        proGuard2 = (ProGuard) this.f9062a.get(i);
                        int a = proGuard2.m11439a(motionEvent.getX(), motionEvent.getY());
                        if (a != 1) {
                            this.f9066e = a;
                            this.f9063b = proGuard2;
                            this.f9064c = motionEvent.getX();
                            this.f9065d = motionEvent.getY();
                            this.f9063b.m11443a(a == 32 ? ProGuard.ProGuard.Move : ProGuard.ProGuard.Grow);
                            break;
                        }
                    }
                    break;
                }
                m11409a(motionEvent);
                break;
            case ProGuard.styleable.View_android_focusable /*1*/:
                if (proGuard.f9103a) {
                    for (int i2 = 0; i2 < this.f9062a.size(); i2++) {
                        proGuard2 = (ProGuard) this.f9062a.get(i2);
                        if (proGuard2.m11445a()) {
                            proGuard.f9105c = proGuard2;
                            for (int i3 = 0; i3 < this.f9062a.size(); i3++) {
                                if (i3 != i2) {
                                    ((ProGuard) this.f9062a.get(i3)).m11448b(true);
                                }
                            }
                            m11411b(proGuard2);
                            this.f9067n.f9103a = false;
                            return true;
                        }
                    }
                } else if (this.f9063b != null) {
                    m11411b(this.f9063b);
                    this.f9063b.m11443a(ProGuard.ProGuard.None);
                }
                this.f9063b = null;
                break;
            case ProGuard.styleable.View_paddingStart /*2*/:
                if (!proGuard.f9103a) {
                    if (this.f9063b != null) {
                        this.f9063b.m11440a(this.f9066e, motionEvent.getX() - this.f9064c, motionEvent.getY() - this.f9065d);
                        this.f9064c = motionEvent.getX();
                        this.f9065d = motionEvent.getY();
                        m11410a(this.f9063b);
                        break;
                    }
                }
                m11409a(motionEvent);
                break;
                break;
        }
        switch (motionEvent.getAction()) {
            case ProGuard.styleable.View_android_focusable /*1*/:
                m11407a(true, true);
                break;
            case ProGuard.styleable.View_paddingStart /*2*/:
                m11407a(true, true);
                break;
        }
        return true;
    }

    private void m11410a(ProGuard proGuard) {
        Rect rect = proGuard.f9129d;
        int max = Math.max(0, getLeft() - rect.left);
        int min = Math.min(0, getRight() - rect.right);
        int max2 = Math.max(0, getTop() - rect.top);
        int min2 = Math.min(0, getBottom() - rect.bottom);
        if (max == 0) {
            max = min;
        }
        if (max2 == 0) {
            max2 = min2;
        }
        if (max != 0 || max2 != 0) {
            m11408b((float) max, (float) max2);
        }
    }

    private void m11411b(ProGuard proGuard) {
        Rect rect = proGuard.f9129d;
        float width = (float) getWidth();
        float max = Math.max(1.0f, Math.min((width / ((float) rect.width())) * 0.6f, (((float) getHeight()) / ((float) rect.height())) * 0.6f) * getScale());
        if (((double) (Math.abs(max - getScale()) / max)) > 0.1d) {
            float[] fArr = new float[]{proGuard.f9130e.centerX(), proGuard.f9130e.centerY()};
            getImageMatrix().mapPoints(fArr);
            m11404a(max, fArr[0], fArr[1], 300.0f);
        }
        m11410a(proGuard);
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        for (int i = 0; i < this.f9062a.size(); i++) {
            ((ProGuard) this.f9062a.get(i)).m11441a(canvas);
        }
    }

    public void add(ProGuard proGuard) {
        this.f9062a.add(proGuard);
        invalidate();
    }

    public void setCropImage(ProGuard proGuard) {
        this.f9067n = proGuard;
    }
}
