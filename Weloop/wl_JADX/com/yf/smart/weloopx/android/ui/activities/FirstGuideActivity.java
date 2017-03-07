package com.yf.smart.weloopx.android.ui.activities;

import android.os.Bundle;
import android.support.v4.view.ViewPager;
import com.yf.smart.weloopx.android.ui.p139c.bi.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
public class FirstGuideActivity extends ProGuard implements ProGuard {
    private ViewPager f7465a;
    private com.yf.smart.weloopx.android.ui.p144a.ProGuard f7466b;

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.first_guide_layout);
        this.f7465a = (ViewPager) findViewById(R.id.vp_guide);
        this.f7466b = new com.yf.smart.weloopx.android.ui.p144a.ProGuard(getFragmentManager());
        this.f7465a.setAdapter(this.f7466b);
    }

    public void m9419a(int i) {
        if (i == this.f7466b.m9173b()) {
            finish();
        }
        this.f7465a.setCurrentItem(this.f7465a.getCurrentItem() + 1);
    }

    public void m9418a() {
        finish();
    }
}
