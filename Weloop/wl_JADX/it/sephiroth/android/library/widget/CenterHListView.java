package it.sephiroth.android.library.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ListAdapter;

/* compiled from: ProGuard */
public class CenterHListView extends ProGuard {
    private int aA;
    private ProGuard aB;
    private Runnable aC;
    private boolean aD;
    private int aE;
    private int az;

    /* renamed from: it.sephiroth.android.library.widget.CenterHListView.a */
    public interface ProGuard {
        void m9935a(ListAdapter listAdapter, int i);
    }

    public CenterHListView(Context context) {
        super(context);
        this.aC = new ProGuard(this);
        this.aD = true;
    }

    public CenterHListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.aC = new ProGuard(this);
        this.aD = true;
    }

    public CenterHListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.aC = new ProGuard(this);
        this.aD = true;
    }

    public void setOnCenterItemListener(ProGuard proGuard) {
        this.aB = proGuard;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean onTouchEvent = super.onTouchEvent(motionEvent);
        if (onTouchEvent && motionEvent.getAction() == 1) {
            this.aD = true;
        }
        return onTouchEvent;
    }

    public void setActionUp(boolean z) {
        this.aD = z;
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!m11609l() && this.aD) {
            this.aD = false;
            int a = m11576a(getWidth() / 2, getHeight() / 2);
            if (a >= 0) {
                if (a == 0) {
                    a++;
                } else if (this.ao - 1 == a) {
                    a--;
                }
                int i = this.aE;
                View childAt = getChildAt(a - this.V);
                if (i <= 0) {
                    i = (getWidth() - childAt.getWidth()) / 2;
                }
                int left = childAt.getLeft() > i ? childAt.getLeft() - i : i - childAt.getLeft();
                m11580a(a, i, left > 100 ? 400 : left * 4);
                this.az = a;
                removeCallbacks(this.aC);
                post(this.aC);
            }
        }
    }

    public void setCenterItemLeft(int i) {
        this.aE = i;
    }
}
