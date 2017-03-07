package com.yf.lib.ui.views.birthday;

import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;

/* renamed from: com.yf.lib.ui.views.birthday.e */
class ProGuard extends SimpleOnGestureListener {
    final /* synthetic */ WheelView f6832a;

    ProGuard(WheelView wheelView) {
        this.f6832a = wheelView;
    }

    public boolean onDown(MotionEvent motionEvent) {
        if (!this.f6832a.f6795A) {
            return false;
        }
        this.f6832a.f6798D.forceFinished(true);
        this.f6832a.m8671f();
        return true;
    }

    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        this.f6832a.m8675h();
        this.f6832a.m8658b((int) (-f2));
        return true;
    }

    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        int i;
        this.f6832a.f6799E = (this.f6832a.f6817m * this.f6832a.getItemHeight()) + this.f6832a.f6796B;
        int a = this.f6832a.f6809b ? Integer.MAX_VALUE : this.f6832a.f6816l.m8689a() * this.f6832a.getItemHeight();
        if (this.f6832a.f6809b) {
            i = -a;
        } else {
            i = 0;
        }
        this.f6832a.f6798D.fling(0, this.f6832a.f6799E, 0, ((int) (-f2)) / 2, 0, 0, i, a);
        this.f6832a.setNextMessage(0);
        return true;
    }
}
