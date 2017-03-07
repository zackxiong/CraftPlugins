package com.yf.smart.weloopx.activitys;

import android.app.Fragment;
import android.app.FragmentManager;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ag;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
public class WelcomeActivity extends com.yf.smart.weloopx.android.ui.activities.ProGuard {
    private ViewGroup f7074a;

    /* renamed from: com.yf.smart.weloopx.activitys.WelcomeActivity.a */
    private class ProGuard extends android.support.v13.app.ProGuard {
        final /* synthetic */ WelcomeActivity f7071a;
        private SparseArray<Fragment> f7072b;

        public ProGuard(WelcomeActivity welcomeActivity, FragmentManager fragmentManager) {
            this.f7071a = welcomeActivity;
            super(fragmentManager);
            this.f7072b = new SparseArray();
        }

        public Fragment m8950d(int i) {
            return (Fragment) this.f7072b.get(i);
        }

        public Object m8947a(ViewGroup viewGroup, int i) {
            Fragment fragment = (Fragment) super.m77a(viewGroup, i);
            this.f7072b.put(i, fragment);
            return fragment;
        }

        public void m8948a(ViewGroup viewGroup, int i, Object obj) {
            this.f7072b.remove(i);
            super.m80a(viewGroup, i, obj);
        }

        public Fragment m8946a(int i) {
            return ProGuard.m8951a(i);
        }

        public int m8949b() {
            return 3;
        }
    }

    /* renamed from: com.yf.smart.weloopx.activitys.WelcomeActivity.b */
    public static class ProGuard extends Fragment {
        public View f7073a;

        public static ProGuard m8951a(int i) {
            Bundle bundle = new Bundle();
            bundle.putInt("1", i);
            ProGuard proGuard = new ProGuard();
            proGuard.setArguments(bundle);
            return proGuard;
        }

        public void m8952a() {
            if (this.f7073a != null) {
                ((ViewGroup) this.f7073a).startLayoutAnimation();
            }
        }

        public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            View inflate;
            switch (getArguments().getInt("1")) {
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                    inflate = layoutInflater.inflate(R.layout.welcome2, null);
                    this.f7073a = inflate;
                    return inflate;
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                    inflate = layoutInflater.inflate(R.layout.welcome3, null);
                    this.f7073a = inflate;
                    return inflate;
                default:
                    inflate = layoutInflater.inflate(R.layout.welcome1, null);
                    this.f7073a = inflate;
                    return inflate;
            }
        }
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.activity_welcome);
        m8954a();
    }

    public void m8954a() {
        this.f7074a = (ViewGroup) findViewById(R.id.viewGroup);
        ViewPager viewPager = (ViewPager) findViewById(R.id.viewPager);
        ag proGuard = new ProGuard(this, getFragmentManager());
        viewPager.setAdapter(proGuard);
        viewPager.setOnPageChangeListener(new ai(this, proGuard));
        viewPager.setCurrentItem(0);
    }

    public void onEnterClicked(View view) {
        if (com.yf.smart.weloopx.p149d.ProGuard.m11006b().m11010c()) {
            startActivity(new Intent(this, com.yf.smart.weloopx.p149d.ProGuard.m11006b().m11016i()));
            finish();
            return;
        }
        startActivity(new Intent(this, RegisterStart.class));
        finish();
    }
}
