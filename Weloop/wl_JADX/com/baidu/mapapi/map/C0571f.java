package com.baidu.mapapi.map;

import android.graphics.Bitmap;
import android.view.MotionEvent;
import com.baidu.location.LocationClientOption;
import com.baidu.platform.comapi.map.C0565h;
import com.baidu.platform.comapi.map.C0639z;
import com.baidu.platform.comapi.p086a.C0596b;
import javax.microedition.khronos.opengles.GL10;

/* renamed from: com.baidu.mapapi.map.f */
class C0571f implements C0565h {
    final /* synthetic */ MapView f4500a;

    C0571f(MapView mapView) {
        this.f4500a = mapView;
    }

    public void m6327a() {
        float f = this.f4500a.f4373b.m6577p().f4882a;
        if (this.f4500a.f4384n != f) {
            CharSequence format;
            int intValue = ((Integer) MapView.f4372m.get((int) f)).intValue();
            int i = (int) (((double) intValue) / this.f4500a.f4373b.m6577p().f4894m);
            this.f4500a.f4383l.setPadding(i / 2, 0, i / 2, 0);
            if (intValue >= LocationClientOption.MIN_SCAN_SPAN) {
                format = String.format(" %d\u516c\u91cc ", new Object[]{Integer.valueOf(intValue / LocationClientOption.MIN_SCAN_SPAN)});
            } else {
                format = String.format(" %d\u7c73 ", new Object[]{Integer.valueOf(intValue)});
            }
            this.f4500a.f4381j.setText(format);
            this.f4500a.f4382k.setText(format);
            this.f4500a.f4384n = f;
        }
        this.f4500a.m6257b();
        this.f4500a.requestLayout();
    }

    public void m6328a(Bitmap bitmap) {
    }

    public void m6329a(MotionEvent motionEvent) {
    }

    public void m6330a(C0596b c0596b) {
    }

    public void m6331a(C0639z c0639z) {
    }

    public void m6332a(String str) {
    }

    public void m6333a(GL10 gl10, C0639z c0639z) {
    }

    public void m6334b() {
    }

    public void m6335b(C0596b c0596b) {
    }

    public void m6336b(C0639z c0639z) {
    }

    public boolean m6337b(String str) {
        return false;
    }

    public void m6338c() {
    }

    public void m6339c(C0596b c0596b) {
    }

    public void m6340c(C0639z c0639z) {
    }

    public void m6341d() {
    }

    public void m6342d(C0596b c0596b) {
    }

    public void m6343e() {
    }

    public void m6344e(C0596b c0596b) {
    }
}
