package android.support.v13.app;

import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.os.Parcelable;
import android.support.v4.view.ag;
import android.view.View;
import android.view.ViewGroup;

/* renamed from: android.support.v13.app.d */
public abstract class ProGuard extends ag {
    private final FragmentManager f32a;
    private FragmentTransaction f33b;
    private Fragment f34c;

    public abstract Fragment m75a(int i);

    public ProGuard(FragmentManager fragmentManager) {
        this.f33b = null;
        this.f34c = null;
        this.f32a = fragmentManager;
    }

    public void m79a(ViewGroup viewGroup) {
    }

    public Object m77a(ViewGroup viewGroup, int i) {
        if (this.f33b == null) {
            this.f33b = this.f32a.beginTransaction();
        }
        long b = m82b(i);
        Fragment findFragmentByTag = this.f32a.findFragmentByTag(ProGuard.m74a(viewGroup.getId(), b));
        if (findFragmentByTag != null) {
            this.f33b.attach(findFragmentByTag);
        } else {
            findFragmentByTag = m75a(i);
            this.f33b.add(viewGroup.getId(), findFragmentByTag, ProGuard.m74a(viewGroup.getId(), b));
        }
        if (findFragmentByTag != this.f34c) {
            ProGuard.m51a(findFragmentByTag, false);
            ProGuard.m52b(findFragmentByTag, false);
        }
        return findFragmentByTag;
    }

    public void m80a(ViewGroup viewGroup, int i, Object obj) {
        if (this.f33b == null) {
            this.f33b = this.f32a.beginTransaction();
        }
        this.f33b.detach((Fragment) obj);
    }

    public void m84b(ViewGroup viewGroup, int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        if (fragment != this.f34c) {
            if (this.f34c != null) {
                ProGuard.m51a(this.f34c, false);
                ProGuard.m52b(this.f34c, false);
            }
            if (fragment != null) {
                ProGuard.m51a(fragment, true);
                ProGuard.m52b(fragment, true);
            }
            this.f34c = fragment;
        }
    }

    public void m83b(ViewGroup viewGroup) {
        if (this.f33b != null) {
            this.f33b.commitAllowingStateLoss();
            this.f33b = null;
            this.f32a.executePendingTransactions();
        }
    }

    public boolean m81a(View view, Object obj) {
        return ((Fragment) obj).getView() == view;
    }

    public Parcelable m76a() {
        return null;
    }

    public void m78a(Parcelable parcelable, ClassLoader classLoader) {
    }

    public long m82b(int i) {
        return (long) i;
    }

    private static String m74a(int i, long j) {
        return "android:switcher:" + i + ":" + j;
    }
}
