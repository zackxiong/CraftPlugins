package android.support.v4.app;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;

/* renamed from: android.support.v4.app.p */
final class ProGuard extends ProGuard implements android.support.v4.view.ProGuard {
    static final Interpolator f264A;
    static final Interpolator f265B;
    static final Interpolator f266C;
    static boolean f267a;
    static final boolean f268b;
    static final Interpolator f269z;
    ArrayList<Runnable> f270c;
    Runnable[] f271d;
    boolean f272e;
    ArrayList<Fragment> f273f;
    ArrayList<Fragment> f274g;
    ArrayList<Integer> f275h;
    ArrayList<ProGuard> f276i;
    ArrayList<Fragment> f277j;
    ArrayList<ProGuard> f278k;
    ArrayList<Integer> f279l;
    ArrayList<ProGuard> f280m;
    int f281n;
    ProGuard f282o;
    ProGuard f283p;
    Fragment f284q;
    boolean f285r;
    boolean f286s;
    boolean f287t;
    String f288u;
    boolean f289v;
    Bundle f290w;
    SparseArray<Parcelable> f291x;
    Runnable f292y;

    /* renamed from: android.support.v4.app.p.a */
    static class ProGuard {
        public static final int[] f263a;

        static {
            f263a = new int[]{16842755, 16842960, 16842961};
        }
    }

    ProGuard() {
        this.f281n = 0;
        this.f290w = null;
        this.f291x = null;
        this.f292y = new ProGuard(this);
    }

    static {
        boolean z = false;
        f267a = false;
        if (VERSION.SDK_INT >= 11) {
            z = true;
        }
        f268b = z;
        f269z = new DecelerateInterpolator(2.5f);
        f264A = new DecelerateInterpolator(1.5f);
        f265B = new AccelerateInterpolator(2.5f);
        f266C = new AccelerateInterpolator(1.5f);
    }

    private void m284a(RuntimeException runtimeException) {
        Log.e("FragmentManager", runtimeException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new android.support.v4.p015f.ProGuard("FragmentManager"));
        if (this.f282o != null) {
            try {
                this.f282o.dump("  ", null, printWriter, new String[0]);
            } catch (Throwable e) {
                Log.e("FragmentManager", "Failed dumping state", e);
            }
        } else {
            try {
                m307a("  ", null, printWriter, new String[0]);
            } catch (Throwable e2) {
                Log.e("FragmentManager", "Failed dumping state", e2);
            }
        }
        throw runtimeException;
    }

    public ProGuard m292a() {
        return new ProGuard(this);
    }

    public boolean m318b() {
        return m328e();
    }

    public boolean m322c() {
        m287u();
        m318b();
        return m308a(this.f282o.f248a, null, -1, 0);
    }

    public void m299a(Bundle bundle, String str, Fragment fragment) {
        if (fragment.mIndex < 0) {
            m284a(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        bundle.putInt(str, fragment.mIndex);
    }

    public Fragment m290a(Bundle bundle, String str) {
        int i = bundle.getInt(str, -1);
        if (i == -1) {
            return null;
        }
        if (i >= this.f273f.size()) {
            m284a(new IllegalStateException("Fragment no longer exists for key " + str + ": index " + i));
        }
        Fragment fragment = (Fragment) this.f273f.get(i);
        if (fragment != null) {
            return fragment;
        }
        m284a(new IllegalStateException("Fragment no longer exists for key " + str + ": index " + i));
        return fragment;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder(com.umeng.update.util.ProGuard.f5670c);
        stringBuilder.append("FragmentManager{");
        stringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
        stringBuilder.append(" in ");
        if (this.f284q != null) {
            android.support.v4.p015f.ProGuard.m501a(this.f284q, stringBuilder);
        } else {
            android.support.v4.p015f.ProGuard.m501a(this.f282o, stringBuilder);
        }
        stringBuilder.append("}}");
        return stringBuilder.toString();
    }

    public void m307a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int i;
        Fragment fragment;
        int i2 = 0;
        String str2 = str + "    ";
        if (this.f273f != null) {
            size = this.f273f.size();
            if (size > 0) {
                printWriter.print(str);
                printWriter.print("Active Fragments in ");
                printWriter.print(Integer.toHexString(System.identityHashCode(this)));
                printWriter.println(":");
                for (i = 0; i < size; i++) {
                    fragment = (Fragment) this.f273f.get(i);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i);
                    printWriter.print(": ");
                    printWriter.println(fragment);
                    if (fragment != null) {
                        fragment.dump(str2, fileDescriptor, printWriter, strArr);
                    }
                }
            }
        }
        if (this.f274g != null) {
            size = this.f274g.size();
            if (size > 0) {
                printWriter.print(str);
                printWriter.println("Added Fragments:");
                for (i = 0; i < size; i++) {
                    fragment = (Fragment) this.f274g.get(i);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i);
                    printWriter.print(": ");
                    printWriter.println(fragment.toString());
                }
            }
        }
        if (this.f277j != null) {
            size = this.f277j.size();
            if (size > 0) {
                printWriter.print(str);
                printWriter.println("Fragments Created Menus:");
                for (i = 0; i < size; i++) {
                    fragment = (Fragment) this.f277j.get(i);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i);
                    printWriter.print(": ");
                    printWriter.println(fragment.toString());
                }
            }
        }
        if (this.f276i != null) {
            size = this.f276i.size();
            if (size > 0) {
                printWriter.print(str);
                printWriter.println("Back Stack:");
                for (i = 0; i < size; i++) {
                    ProGuard proGuard = (ProGuard) this.f276i.get(i);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i);
                    printWriter.print(": ");
                    printWriter.println(proGuard.toString());
                    proGuard.m248a(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }
        synchronized (this) {
            if (this.f278k != null) {
                int size2 = this.f278k.size();
                if (size2 > 0) {
                    printWriter.print(str);
                    printWriter.println("Back Stack Indices:");
                    for (i = 0; i < size2; i++) {
                        proGuard = (ProGuard) this.f278k.get(i);
                        printWriter.print(str);
                        printWriter.print("  #");
                        printWriter.print(i);
                        printWriter.print(": ");
                        printWriter.println(proGuard);
                    }
                }
            }
            if (this.f279l != null && this.f279l.size() > 0) {
                printWriter.print(str);
                printWriter.print("mAvailBackStackIndices: ");
                printWriter.println(Arrays.toString(this.f279l.toArray()));
            }
        }
        if (this.f270c != null) {
            i = this.f270c.size();
            if (i > 0) {
                printWriter.print(str);
                printWriter.println("Pending Actions:");
                while (i2 < i) {
                    Runnable runnable = (Runnable) this.f270c.get(i2);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i2);
                    printWriter.print(": ");
                    printWriter.println(runnable);
                    i2++;
                }
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mActivity=");
        printWriter.println(this.f282o);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.f283p);
        if (this.f284q != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.f284q);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.f281n);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.f286s);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.f287t);
        if (this.f285r) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.f285r);
        }
        if (this.f288u != null) {
            printWriter.print(str);
            printWriter.print("  mNoTransactionsBecause=");
            printWriter.println(this.f288u);
        }
        if (this.f275h != null && this.f275h.size() > 0) {
            printWriter.print(str);
            printWriter.print("  mAvailIndices: ");
            printWriter.println(Arrays.toString(this.f275h.toArray()));
        }
    }

    static Animation m283a(Context context, float f, float f2, float f3, float f4) {
        Animation animationSet = new AnimationSet(false);
        Animation scaleAnimation = new ScaleAnimation(f, f2, f, f2, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setInterpolator(f269z);
        scaleAnimation.setDuration(220);
        animationSet.addAnimation(scaleAnimation);
        scaleAnimation = new AlphaAnimation(f3, f4);
        scaleAnimation.setInterpolator(f264A);
        scaleAnimation.setDuration(220);
        animationSet.addAnimation(scaleAnimation);
        return animationSet;
    }

    static Animation m282a(Context context, float f, float f2) {
        Animation alphaAnimation = new AlphaAnimation(f, f2);
        alphaAnimation.setInterpolator(f264A);
        alphaAnimation.setDuration(220);
        return alphaAnimation;
    }

    Animation m294a(Fragment fragment, int i, boolean z, int i2) {
        Animation onCreateAnimation = fragment.onCreateAnimation(i, z, fragment.mNextAnim);
        if (onCreateAnimation != null) {
            return onCreateAnimation;
        }
        if (fragment.mNextAnim != 0) {
            onCreateAnimation = AnimationUtils.loadAnimation(this.f282o, fragment.mNextAnim);
            if (onCreateAnimation != null) {
                return onCreateAnimation;
            }
        }
        if (i == 0) {
            return null;
        }
        int b = ProGuard.m285b(i, z);
        if (b < 0) {
            return null;
        }
        switch (b) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                return ProGuard.m283a(this.f282o, 1.125f, 1.0f, 0.0f, 1.0f);
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                return ProGuard.m283a(this.f282o, 1.0f, 0.975f, 1.0f, 0.0f);
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                return ProGuard.m283a(this.f282o, 0.975f, 1.0f, 0.0f, 1.0f);
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_theme /*4*/:
                return ProGuard.m283a(this.f282o, 1.0f, 1.075f, 1.0f, 0.0f);
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTint /*5*/:
                return ProGuard.m282a(this.f282o, 0.0f, 1.0f);
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTintMode /*6*/:
                return ProGuard.m282a(this.f282o, 1.0f, 0.0f);
            default:
                if (i2 == 0 && this.f282o.getWindow() != null) {
                    i2 = this.f282o.getWindow().getAttributes().windowAnimations;
                }
                if (i2 == 0) {
                    return null;
                }
                return null;
        }
    }

    public void m301a(Fragment fragment) {
        if (!fragment.mDeferStart) {
            return;
        }
        if (this.f272e) {
            this.f289v = true;
            return;
        }
        fragment.mDeferStart = false;
        m303a(fragment, this.f281n, 0, 0, false);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    void m303a(android.support.v4.app.Fragment r11, int r12, int r13, int r14, boolean r15) {
        /*
        r10 = this;
        r9 = 4;
        r6 = 3;
        r5 = 1;
        r3 = 0;
        r7 = 0;
        r0 = r11.mAdded;
        if (r0 == 0) goto L_0x000d;
    L_0x0009:
        r0 = r11.mDetached;
        if (r0 == 0) goto L_0x0010;
    L_0x000d:
        if (r12 <= r5) goto L_0x0010;
    L_0x000f:
        r12 = r5;
    L_0x0010:
        r0 = r11.mRemoving;
        if (r0 == 0) goto L_0x001a;
    L_0x0014:
        r0 = r11.mState;
        if (r12 <= r0) goto L_0x001a;
    L_0x0018:
        r12 = r11.mState;
    L_0x001a:
        r0 = r11.mDeferStart;
        if (r0 == 0) goto L_0x0025;
    L_0x001e:
        r0 = r11.mState;
        if (r0 >= r9) goto L_0x0025;
    L_0x0022:
        if (r12 <= r6) goto L_0x0025;
    L_0x0024:
        r12 = r6;
    L_0x0025:
        r0 = r11.mState;
        if (r0 >= r12) goto L_0x0265;
    L_0x0029:
        r0 = r11.mFromLayout;
        if (r0 == 0) goto L_0x0032;
    L_0x002d:
        r0 = r11.mInLayout;
        if (r0 != 0) goto L_0x0032;
    L_0x0031:
        return;
    L_0x0032:
        r0 = r11.mAnimatingAway;
        if (r0 == 0) goto L_0x0040;
    L_0x0036:
        r11.mAnimatingAway = r7;
        r2 = r11.mStateAfterAnimating;
        r0 = r10;
        r1 = r11;
        r4 = r3;
        r0.m303a(r1, r2, r3, r4, r5);
    L_0x0040:
        r0 = r11.mState;
        switch(r0) {
            case 0: goto L_0x0048;
            case 1: goto L_0x0134;
            case 2: goto L_0x0200;
            case 3: goto L_0x0200;
            case 4: goto L_0x0221;
            default: goto L_0x0045;
        };
    L_0x0045:
        r11.mState = r12;
        goto L_0x0031;
    L_0x0048:
        r0 = f267a;
        if (r0 == 0) goto L_0x0064;
    L_0x004c:
        r0 = "FragmentManager";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "moveto CREATED: ";
        r1 = r1.append(r2);
        r1 = r1.append(r11);
        r1 = r1.toString();
        android.util.Log.v(r0, r1);
    L_0x0064:
        r0 = r11.mSavedFragmentState;
        if (r0 == 0) goto L_0x00a8;
    L_0x0068:
        r0 = r11.mSavedFragmentState;
        r1 = r10.f282o;
        r1 = r1.getClassLoader();
        r0.setClassLoader(r1);
        r0 = r11.mSavedFragmentState;
        r1 = "android:view_state";
        r0 = r0.getSparseParcelableArray(r1);
        r11.mSavedViewState = r0;
        r0 = r11.mSavedFragmentState;
        r1 = "android:target_state";
        r0 = r10.m290a(r0, r1);
        r11.mTarget = r0;
        r0 = r11.mTarget;
        if (r0 == 0) goto L_0x0095;
    L_0x008b:
        r0 = r11.mSavedFragmentState;
        r1 = "android:target_req_state";
        r0 = r0.getInt(r1, r3);
        r11.mTargetRequestCode = r0;
    L_0x0095:
        r0 = r11.mSavedFragmentState;
        r1 = "android:user_visible_hint";
        r0 = r0.getBoolean(r1, r5);
        r11.mUserVisibleHint = r0;
        r0 = r11.mUserVisibleHint;
        if (r0 != 0) goto L_0x00a8;
    L_0x00a3:
        r11.mDeferStart = r5;
        if (r12 <= r6) goto L_0x00a8;
    L_0x00a7:
        r12 = r6;
    L_0x00a8:
        r0 = r10.f282o;
        r11.mActivity = r0;
        r0 = r10.f284q;
        r11.mParentFragment = r0;
        r0 = r10.f284q;
        if (r0 == 0) goto L_0x00e4;
    L_0x00b4:
        r0 = r10.f284q;
        r0 = r0.mChildFragmentManager;
    L_0x00b8:
        r11.mFragmentManager = r0;
        r11.mCalled = r3;
        r0 = r10.f282o;
        r11.onAttach(r0);
        r0 = r11.mCalled;
        if (r0 != 0) goto L_0x00e9;
    L_0x00c5:
        r0 = new android.support.v4.app.aw;
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "Fragment ";
        r1 = r1.append(r2);
        r1 = r1.append(r11);
        r2 = " did not call through to super.onAttach()";
        r1 = r1.append(r2);
        r1 = r1.toString();
        r0.<init>(r1);
        throw r0;
    L_0x00e4:
        r0 = r10.f282o;
        r0 = r0.f249b;
        goto L_0x00b8;
    L_0x00e9:
        r0 = r11.mParentFragment;
        if (r0 != 0) goto L_0x00f2;
    L_0x00ed:
        r0 = r10.f282o;
        r0.m266a(r11);
    L_0x00f2:
        r0 = r11.mRetaining;
        if (r0 != 0) goto L_0x00fb;
    L_0x00f6:
        r0 = r11.mSavedFragmentState;
        r11.performCreate(r0);
    L_0x00fb:
        r11.mRetaining = r3;
        r0 = r11.mFromLayout;
        if (r0 == 0) goto L_0x0134;
    L_0x0101:
        r0 = r11.mSavedFragmentState;
        r0 = r11.getLayoutInflater(r0);
        r1 = r11.mSavedFragmentState;
        r0 = r11.performCreateView(r0, r7, r1);
        r11.mView = r0;
        r0 = r11.mView;
        if (r0 == 0) goto L_0x0254;
    L_0x0113:
        r0 = r11.mView;
        r11.mInnerView = r0;
        r0 = android.os.Build.VERSION.SDK_INT;
        r1 = 11;
        if (r0 < r1) goto L_0x024a;
    L_0x011d:
        r0 = r11.mView;
        android.support.v4.view.ak.m1022a(r0, r3);
    L_0x0122:
        r0 = r11.mHidden;
        if (r0 == 0) goto L_0x012d;
    L_0x0126:
        r0 = r11.mView;
        r1 = 8;
        r0.setVisibility(r1);
    L_0x012d:
        r0 = r11.mView;
        r1 = r11.mSavedFragmentState;
        r11.onViewCreated(r0, r1);
    L_0x0134:
        if (r12 <= r5) goto L_0x0200;
    L_0x0136:
        r0 = f267a;
        if (r0 == 0) goto L_0x0152;
    L_0x013a:
        r0 = "FragmentManager";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "moveto ACTIVITY_CREATED: ";
        r1 = r1.append(r2);
        r1 = r1.append(r11);
        r1 = r1.toString();
        android.util.Log.v(r0, r1);
    L_0x0152:
        r0 = r11.mFromLayout;
        if (r0 != 0) goto L_0x01f0;
    L_0x0156:
        r0 = r11.mContainerId;
        if (r0 == 0) goto L_0x03c0;
    L_0x015a:
        r0 = r10.f283p;
        r1 = r11.mContainerId;
        r0 = r0.m256a(r1);
        r0 = (android.view.ViewGroup) r0;
        if (r0 != 0) goto L_0x01a9;
    L_0x0166:
        r1 = r11.mRestored;
        if (r1 != 0) goto L_0x01a9;
    L_0x016a:
        r1 = new java.lang.IllegalArgumentException;
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r4 = "No view found for id 0x";
        r2 = r2.append(r4);
        r4 = r11.mContainerId;
        r4 = java.lang.Integer.toHexString(r4);
        r2 = r2.append(r4);
        r4 = " (";
        r2 = r2.append(r4);
        r4 = r11.getResources();
        r8 = r11.mContainerId;
        r4 = r4.getResourceName(r8);
        r2 = r2.append(r4);
        r4 = ") for fragment ";
        r2 = r2.append(r4);
        r2 = r2.append(r11);
        r2 = r2.toString();
        r1.<init>(r2);
        r10.m284a(r1);
    L_0x01a9:
        r11.mContainer = r0;
        r1 = r11.mSavedFragmentState;
        r1 = r11.getLayoutInflater(r1);
        r2 = r11.mSavedFragmentState;
        r1 = r11.performCreateView(r1, r0, r2);
        r11.mView = r1;
        r1 = r11.mView;
        if (r1 == 0) goto L_0x0262;
    L_0x01bd:
        r1 = r11.mView;
        r11.mInnerView = r1;
        r1 = android.os.Build.VERSION.SDK_INT;
        r2 = 11;
        if (r1 < r2) goto L_0x0258;
    L_0x01c7:
        r1 = r11.mView;
        android.support.v4.view.ak.m1022a(r1, r3);
    L_0x01cc:
        if (r0 == 0) goto L_0x01de;
    L_0x01ce:
        r1 = r10.m294a(r11, r13, r5, r14);
        if (r1 == 0) goto L_0x01d9;
    L_0x01d4:
        r2 = r11.mView;
        r2.startAnimation(r1);
    L_0x01d9:
        r1 = r11.mView;
        r0.addView(r1);
    L_0x01de:
        r0 = r11.mHidden;
        if (r0 == 0) goto L_0x01e9;
    L_0x01e2:
        r0 = r11.mView;
        r1 = 8;
        r0.setVisibility(r1);
    L_0x01e9:
        r0 = r11.mView;
        r1 = r11.mSavedFragmentState;
        r11.onViewCreated(r0, r1);
    L_0x01f0:
        r0 = r11.mSavedFragmentState;
        r11.performActivityCreated(r0);
        r0 = r11.mView;
        if (r0 == 0) goto L_0x01fe;
    L_0x01f9:
        r0 = r11.mSavedFragmentState;
        r11.restoreViewState(r0);
    L_0x01fe:
        r11.mSavedFragmentState = r7;
    L_0x0200:
        if (r12 <= r6) goto L_0x0221;
    L_0x0202:
        r0 = f267a;
        if (r0 == 0) goto L_0x021e;
    L_0x0206:
        r0 = "FragmentManager";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "moveto STARTED: ";
        r1 = r1.append(r2);
        r1 = r1.append(r11);
        r1 = r1.toString();
        android.util.Log.v(r0, r1);
    L_0x021e:
        r11.performStart();
    L_0x0221:
        if (r12 <= r9) goto L_0x0045;
    L_0x0223:
        r0 = f267a;
        if (r0 == 0) goto L_0x023f;
    L_0x0227:
        r0 = "FragmentManager";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "moveto RESUMED: ";
        r1 = r1.append(r2);
        r1 = r1.append(r11);
        r1 = r1.toString();
        android.util.Log.v(r0, r1);
    L_0x023f:
        r11.mResumed = r5;
        r11.performResume();
        r11.mSavedFragmentState = r7;
        r11.mSavedViewState = r7;
        goto L_0x0045;
    L_0x024a:
        r0 = r11.mView;
        r0 = android.support.v4.app.ad.m136a(r0);
        r11.mView = r0;
        goto L_0x0122;
    L_0x0254:
        r11.mInnerView = r7;
        goto L_0x0134;
    L_0x0258:
        r1 = r11.mView;
        r1 = android.support.v4.app.ad.m136a(r1);
        r11.mView = r1;
        goto L_0x01cc;
    L_0x0262:
        r11.mInnerView = r7;
        goto L_0x01f0;
    L_0x0265:
        r0 = r11.mState;
        if (r0 <= r12) goto L_0x0045;
    L_0x0269:
        r0 = r11.mState;
        switch(r0) {
            case 1: goto L_0x0270;
            case 2: goto L_0x02f0;
            case 3: goto L_0x02cf;
            case 4: goto L_0x02ae;
            case 5: goto L_0x028a;
            default: goto L_0x026e;
        };
    L_0x026e:
        goto L_0x0045;
    L_0x0270:
        if (r12 >= r5) goto L_0x0045;
    L_0x0272:
        r0 = r10.f287t;
        if (r0 == 0) goto L_0x0281;
    L_0x0276:
        r0 = r11.mAnimatingAway;
        if (r0 == 0) goto L_0x0281;
    L_0x027a:
        r0 = r11.mAnimatingAway;
        r11.mAnimatingAway = r7;
        r0.clearAnimation();
    L_0x0281:
        r0 = r11.mAnimatingAway;
        if (r0 == 0) goto L_0x035d;
    L_0x0285:
        r11.mStateAfterAnimating = r12;
        r12 = r5;
        goto L_0x0045;
    L_0x028a:
        r0 = 5;
        if (r12 >= r0) goto L_0x02ae;
    L_0x028d:
        r0 = f267a;
        if (r0 == 0) goto L_0x02a9;
    L_0x0291:
        r0 = "FragmentManager";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "movefrom RESUMED: ";
        r1 = r1.append(r2);
        r1 = r1.append(r11);
        r1 = r1.toString();
        android.util.Log.v(r0, r1);
    L_0x02a9:
        r11.performPause();
        r11.mResumed = r3;
    L_0x02ae:
        if (r12 >= r9) goto L_0x02cf;
    L_0x02b0:
        r0 = f267a;
        if (r0 == 0) goto L_0x02cc;
    L_0x02b4:
        r0 = "FragmentManager";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "movefrom STARTED: ";
        r1 = r1.append(r2);
        r1 = r1.append(r11);
        r1 = r1.toString();
        android.util.Log.v(r0, r1);
    L_0x02cc:
        r11.performStop();
    L_0x02cf:
        if (r12 >= r6) goto L_0x02f0;
    L_0x02d1:
        r0 = f267a;
        if (r0 == 0) goto L_0x02ed;
    L_0x02d5:
        r0 = "FragmentManager";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "movefrom STOPPED: ";
        r1 = r1.append(r2);
        r1 = r1.append(r11);
        r1 = r1.toString();
        android.util.Log.v(r0, r1);
    L_0x02ed:
        r11.performReallyStop();
    L_0x02f0:
        r0 = 2;
        if (r12 >= r0) goto L_0x0270;
    L_0x02f3:
        r0 = f267a;
        if (r0 == 0) goto L_0x030f;
    L_0x02f7:
        r0 = "FragmentManager";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "movefrom ACTIVITY_CREATED: ";
        r1 = r1.append(r2);
        r1 = r1.append(r11);
        r1 = r1.toString();
        android.util.Log.v(r0, r1);
    L_0x030f:
        r0 = r11.mView;
        if (r0 == 0) goto L_0x0322;
    L_0x0313:
        r0 = r10.f282o;
        r0 = r0.isFinishing();
        if (r0 != 0) goto L_0x0322;
    L_0x031b:
        r0 = r11.mSavedViewState;
        if (r0 != 0) goto L_0x0322;
    L_0x031f:
        r10.m326e(r11);
    L_0x0322:
        r11.performDestroyView();
        r0 = r11.mView;
        if (r0 == 0) goto L_0x0355;
    L_0x0329:
        r0 = r11.mContainer;
        if (r0 == 0) goto L_0x0355;
    L_0x032d:
        r0 = r10.f281n;
        if (r0 <= 0) goto L_0x03bd;
    L_0x0331:
        r0 = r10.f287t;
        if (r0 != 0) goto L_0x03bd;
    L_0x0335:
        r0 = r10.m294a(r11, r13, r3, r14);
    L_0x0339:
        if (r0 == 0) goto L_0x034e;
    L_0x033b:
        r1 = r11.mView;
        r11.mAnimatingAway = r1;
        r11.mStateAfterAnimating = r12;
        r1 = new android.support.v4.app.r;
        r1.<init>(r10, r11);
        r0.setAnimationListener(r1);
        r1 = r11.mView;
        r1.startAnimation(r0);
    L_0x034e:
        r0 = r11.mContainer;
        r1 = r11.mView;
        r0.removeView(r1);
    L_0x0355:
        r11.mContainer = r7;
        r11.mView = r7;
        r11.mInnerView = r7;
        goto L_0x0270;
    L_0x035d:
        r0 = f267a;
        if (r0 == 0) goto L_0x0379;
    L_0x0361:
        r0 = "FragmentManager";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "movefrom CREATED: ";
        r1 = r1.append(r2);
        r1 = r1.append(r11);
        r1 = r1.toString();
        android.util.Log.v(r0, r1);
    L_0x0379:
        r0 = r11.mRetaining;
        if (r0 != 0) goto L_0x0380;
    L_0x037d:
        r11.performDestroy();
    L_0x0380:
        r11.mCalled = r3;
        r11.onDetach();
        r0 = r11.mCalled;
        if (r0 != 0) goto L_0x03a8;
    L_0x0389:
        r0 = new android.support.v4.app.aw;
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "Fragment ";
        r1 = r1.append(r2);
        r1 = r1.append(r11);
        r2 = " did not call through to super.onDetach()";
        r1 = r1.append(r2);
        r1 = r1.toString();
        r0.<init>(r1);
        throw r0;
    L_0x03a8:
        if (r15 != 0) goto L_0x0045;
    L_0x03aa:
        r0 = r11.mRetaining;
        if (r0 != 0) goto L_0x03b3;
    L_0x03ae:
        r10.m324d(r11);
        goto L_0x0045;
    L_0x03b3:
        r11.mActivity = r7;
        r11.mParentFragment = r7;
        r11.mFragmentManager = r7;
        r11.mChildFragmentManager = r7;
        goto L_0x0045;
    L_0x03bd:
        r0 = r7;
        goto L_0x0339;
    L_0x03c0:
        r0 = r7;
        goto L_0x01a9;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.p.a(android.support.v4.app.Fragment, int, int, int, boolean):void");
    }

    void m314b(Fragment fragment) {
        m303a(fragment, this.f281n, 0, 0, false);
    }

    void m297a(int i, boolean z) {
        m295a(i, 0, 0, z);
    }

    void m295a(int i, int i2, int i3, boolean z) {
        if (this.f282o == null && i != 0) {
            throw new IllegalStateException("No activity");
        } else if (z || this.f281n != i) {
            this.f281n = i;
            if (this.f273f != null) {
                int i4 = 0;
                int i5 = 0;
                while (i4 < this.f273f.size()) {
                    int a;
                    Fragment fragment = (Fragment) this.f273f.get(i4);
                    if (fragment != null) {
                        m303a(fragment, i, i2, i3, false);
                        if (fragment.mLoaderManager != null) {
                            a = i5 | fragment.mLoaderManager.m128a();
                            i4++;
                            i5 = a;
                        }
                    }
                    a = i5;
                    i4++;
                    i5 = a;
                }
                if (i5 == 0) {
                    m323d();
                }
                if (this.f285r && this.f282o != null && this.f281n == 5) {
                    this.f282o.m273d();
                    this.f285r = false;
                }
            }
        }
    }

    void m323d() {
        if (this.f273f != null) {
            for (int i = 0; i < this.f273f.size(); i++) {
                Fragment fragment = (Fragment) this.f273f.get(i);
                if (fragment != null) {
                    m301a(fragment);
                }
            }
        }
    }

    void m320c(Fragment fragment) {
        if (fragment.mIndex < 0) {
            if (this.f275h == null || this.f275h.size() <= 0) {
                if (this.f273f == null) {
                    this.f273f = new ArrayList();
                }
                fragment.setIndex(this.f273f.size(), this.f284q);
                this.f273f.add(fragment);
            } else {
                fragment.setIndex(((Integer) this.f275h.remove(this.f275h.size() - 1)).intValue(), this.f284q);
                this.f273f.set(fragment.mIndex, fragment);
            }
            if (f267a) {
                Log.v("FragmentManager", "Allocated fragment index " + fragment);
            }
        }
    }

    void m324d(Fragment fragment) {
        if (fragment.mIndex >= 0) {
            if (f267a) {
                Log.v("FragmentManager", "Freeing fragment index " + fragment);
            }
            this.f273f.set(fragment.mIndex, null);
            if (this.f275h == null) {
                this.f275h = new ArrayList();
            }
            this.f275h.add(Integer.valueOf(fragment.mIndex));
            this.f282o.m268a(fragment.mWho);
            fragment.initState();
        }
    }

    public void m304a(Fragment fragment, boolean z) {
        if (this.f274g == null) {
            this.f274g = new ArrayList();
        }
        if (f267a) {
            Log.v("FragmentManager", "add: " + fragment);
        }
        m320c(fragment);
        if (!fragment.mDetached) {
            if (this.f274g.contains(fragment)) {
                throw new IllegalStateException("Fragment already added: " + fragment);
            }
            this.f274g.add(fragment);
            fragment.mAdded = true;
            fragment.mRemoving = false;
            if (fragment.mHasMenu && fragment.mMenuVisible) {
                this.f285r = true;
            }
            if (z) {
                m314b(fragment);
            }
        }
    }

    public void m302a(Fragment fragment, int i, int i2) {
        if (f267a) {
            Log.v("FragmentManager", "remove: " + fragment + " nesting=" + fragment.mBackStackNesting);
        }
        boolean z = !fragment.isInBackStack();
        if (!fragment.mDetached || z) {
            int i3;
            if (this.f274g != null) {
                this.f274g.remove(fragment);
            }
            if (fragment.mHasMenu && fragment.mMenuVisible) {
                this.f285r = true;
            }
            fragment.mAdded = false;
            fragment.mRemoving = true;
            if (z) {
                i3 = 0;
            } else {
                i3 = 1;
            }
            m303a(fragment, i3, i, i2, false);
        }
    }

    public void m315b(Fragment fragment, int i, int i2) {
        if (f267a) {
            Log.v("FragmentManager", "hide: " + fragment);
        }
        if (!fragment.mHidden) {
            fragment.mHidden = true;
            if (fragment.mView != null) {
                Animation a = m294a(fragment, i, false, i2);
                if (a != null) {
                    fragment.mView.startAnimation(a);
                }
                fragment.mView.setVisibility(8);
            }
            if (fragment.mAdded && fragment.mHasMenu && fragment.mMenuVisible) {
                this.f285r = true;
            }
            fragment.onHiddenChanged(true);
        }
    }

    public void m321c(Fragment fragment, int i, int i2) {
        if (f267a) {
            Log.v("FragmentManager", "show: " + fragment);
        }
        if (fragment.mHidden) {
            fragment.mHidden = false;
            if (fragment.mView != null) {
                Animation a = m294a(fragment, i, true, i2);
                if (a != null) {
                    fragment.mView.startAnimation(a);
                }
                fragment.mView.setVisibility(0);
            }
            if (fragment.mAdded && fragment.mHasMenu && fragment.mMenuVisible) {
                this.f285r = true;
            }
            fragment.onHiddenChanged(false);
        }
    }

    public void m325d(Fragment fragment, int i, int i2) {
        if (f267a) {
            Log.v("FragmentManager", "detach: " + fragment);
        }
        if (!fragment.mDetached) {
            fragment.mDetached = true;
            if (fragment.mAdded) {
                if (this.f274g != null) {
                    if (f267a) {
                        Log.v("FragmentManager", "remove from detach: " + fragment);
                    }
                    this.f274g.remove(fragment);
                }
                if (fragment.mHasMenu && fragment.mMenuVisible) {
                    this.f285r = true;
                }
                fragment.mAdded = false;
                m303a(fragment, 1, i, i2, false);
            }
        }
    }

    public void m327e(Fragment fragment, int i, int i2) {
        if (f267a) {
            Log.v("FragmentManager", "attach: " + fragment);
        }
        if (fragment.mDetached) {
            fragment.mDetached = false;
            if (!fragment.mAdded) {
                if (this.f274g == null) {
                    this.f274g = new ArrayList();
                }
                if (this.f274g.contains(fragment)) {
                    throw new IllegalStateException("Fragment already added: " + fragment);
                }
                if (f267a) {
                    Log.v("FragmentManager", "add from attach: " + fragment);
                }
                this.f274g.add(fragment);
                fragment.mAdded = true;
                if (fragment.mHasMenu && fragment.mMenuVisible) {
                    this.f285r = true;
                }
                m303a(fragment, this.f281n, i, i2, false);
            }
        }
    }

    public Fragment m289a(int i) {
        int size;
        Fragment fragment;
        if (this.f274g != null) {
            for (size = this.f274g.size() - 1; size >= 0; size--) {
                fragment = (Fragment) this.f274g.get(size);
                if (fragment != null && fragment.mFragmentId == i) {
                    return fragment;
                }
            }
        }
        if (this.f273f != null) {
            for (size = this.f273f.size() - 1; size >= 0; size--) {
                fragment = (Fragment) this.f273f.get(size);
                if (fragment != null && fragment.mFragmentId == i) {
                    return fragment;
                }
            }
        }
        return null;
    }

    public Fragment m291a(String str) {
        int size;
        Fragment fragment;
        if (!(this.f274g == null || str == null)) {
            for (size = this.f274g.size() - 1; size >= 0; size--) {
                fragment = (Fragment) this.f274g.get(size);
                if (fragment != null && str.equals(fragment.mTag)) {
                    return fragment;
                }
            }
        }
        if (!(this.f273f == null || str == null)) {
            for (size = this.f273f.size() - 1; size >= 0; size--) {
                fragment = (Fragment) this.f273f.get(size);
                if (fragment != null && str.equals(fragment.mTag)) {
                    return fragment;
                }
            }
        }
        return null;
    }

    public Fragment m312b(String str) {
        if (!(this.f273f == null || str == null)) {
            for (int size = this.f273f.size() - 1; size >= 0; size--) {
                Fragment fragment = (Fragment) this.f273f.get(size);
                if (fragment != null) {
                    fragment = fragment.findFragmentByWho(str);
                    if (fragment != null) {
                        return fragment;
                    }
                }
            }
        }
        return null;
    }

    private void m287u() {
        if (this.f286s) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        } else if (this.f288u != null) {
            throw new IllegalStateException("Can not perform this action inside of " + this.f288u);
        }
    }

    public void m306a(Runnable runnable, boolean z) {
        if (!z) {
            m287u();
        }
        synchronized (this) {
            if (this.f287t || this.f282o == null) {
                throw new IllegalStateException("Activity has been destroyed");
            }
            if (this.f270c == null) {
                this.f270c = new ArrayList();
            }
            this.f270c.add(runnable);
            if (this.f270c.size() == 1) {
                this.f282o.f248a.removeCallbacks(this.f292y);
                this.f282o.f248a.post(this.f292y);
            }
        }
    }

    public int m288a(ProGuard proGuard) {
        int size;
        synchronized (this) {
            if (this.f279l == null || this.f279l.size() <= 0) {
                if (this.f278k == null) {
                    this.f278k = new ArrayList();
                }
                size = this.f278k.size();
                if (f267a) {
                    Log.v("FragmentManager", "Setting back stack index " + size + " to " + proGuard);
                }
                this.f278k.add(proGuard);
            } else {
                size = ((Integer) this.f279l.remove(this.f279l.size() - 1)).intValue();
                if (f267a) {
                    Log.v("FragmentManager", "Adding back stack index " + size + " with " + proGuard);
                }
                this.f278k.set(size, proGuard);
            }
        }
        return size;
    }

    public void m296a(int i, ProGuard proGuard) {
        synchronized (this) {
            if (this.f278k == null) {
                this.f278k = new ArrayList();
            }
            int size = this.f278k.size();
            if (i < size) {
                if (f267a) {
                    Log.v("FragmentManager", "Setting back stack index " + i + " to " + proGuard);
                }
                this.f278k.set(i, proGuard);
            } else {
                while (size < i) {
                    this.f278k.add(null);
                    if (this.f279l == null) {
                        this.f279l = new ArrayList();
                    }
                    if (f267a) {
                        Log.v("FragmentManager", "Adding available back stack index " + size);
                    }
                    this.f279l.add(Integer.valueOf(size));
                    size++;
                }
                if (f267a) {
                    Log.v("FragmentManager", "Adding back stack index " + i + " with " + proGuard);
                }
                this.f278k.add(proGuard);
            }
        }
    }

    public void m313b(int i) {
        synchronized (this) {
            this.f278k.set(i, null);
            if (this.f279l == null) {
                this.f279l = new ArrayList();
            }
            if (f267a) {
                Log.v("FragmentManager", "Freeing back stack index " + i);
            }
            this.f279l.add(Integer.valueOf(i));
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean m328e() {
        /*
        r6 = this;
        r0 = 1;
        r2 = 0;
        r1 = r6.f272e;
        if (r1 == 0) goto L_0x000e;
    L_0x0006:
        r0 = new java.lang.IllegalStateException;
        r1 = "Recursive entry to executePendingTransactions";
        r0.<init>(r1);
        throw r0;
    L_0x000e:
        r1 = android.os.Looper.myLooper();
        r3 = r6.f282o;
        r3 = r3.f248a;
        r3 = r3.getLooper();
        if (r1 == r3) goto L_0x0024;
    L_0x001c:
        r0 = new java.lang.IllegalStateException;
        r1 = "Must be called from main thread of process";
        r0.<init>(r1);
        throw r0;
    L_0x0024:
        r1 = r2;
    L_0x0025:
        monitor-enter(r6);
        r3 = r6.f270c;	 Catch:{ all -> 0x0097 }
        if (r3 == 0) goto L_0x0032;
    L_0x002a:
        r3 = r6.f270c;	 Catch:{ all -> 0x0097 }
        r3 = r3.size();	 Catch:{ all -> 0x0097 }
        if (r3 != 0) goto L_0x005a;
    L_0x0032:
        monitor-exit(r6);	 Catch:{ all -> 0x0097 }
        r0 = r6.f289v;
        if (r0 == 0) goto L_0x00a5;
    L_0x0037:
        r3 = r2;
        r4 = r2;
    L_0x0039:
        r0 = r6.f273f;
        r0 = r0.size();
        if (r3 >= r0) goto L_0x009e;
    L_0x0041:
        r0 = r6.f273f;
        r0 = r0.get(r3);
        r0 = (android.support.v4.app.Fragment) r0;
        if (r0 == 0) goto L_0x0056;
    L_0x004b:
        r5 = r0.mLoaderManager;
        if (r5 == 0) goto L_0x0056;
    L_0x004f:
        r0 = r0.mLoaderManager;
        r0 = r0.m128a();
        r4 = r4 | r0;
    L_0x0056:
        r0 = r3 + 1;
        r3 = r0;
        goto L_0x0039;
    L_0x005a:
        r1 = r6.f270c;	 Catch:{ all -> 0x0097 }
        r3 = r1.size();	 Catch:{ all -> 0x0097 }
        r1 = r6.f271d;	 Catch:{ all -> 0x0097 }
        if (r1 == 0) goto L_0x0069;
    L_0x0064:
        r1 = r6.f271d;	 Catch:{ all -> 0x0097 }
        r1 = r1.length;	 Catch:{ all -> 0x0097 }
        if (r1 >= r3) goto L_0x006d;
    L_0x0069:
        r1 = new java.lang.Runnable[r3];	 Catch:{ all -> 0x0097 }
        r6.f271d = r1;	 Catch:{ all -> 0x0097 }
    L_0x006d:
        r1 = r6.f270c;	 Catch:{ all -> 0x0097 }
        r4 = r6.f271d;	 Catch:{ all -> 0x0097 }
        r1.toArray(r4);	 Catch:{ all -> 0x0097 }
        r1 = r6.f270c;	 Catch:{ all -> 0x0097 }
        r1.clear();	 Catch:{ all -> 0x0097 }
        r1 = r6.f282o;	 Catch:{ all -> 0x0097 }
        r1 = r1.f248a;	 Catch:{ all -> 0x0097 }
        r4 = r6.f292y;	 Catch:{ all -> 0x0097 }
        r1.removeCallbacks(r4);	 Catch:{ all -> 0x0097 }
        monitor-exit(r6);	 Catch:{ all -> 0x0097 }
        r6.f272e = r0;
        r1 = r2;
    L_0x0086:
        if (r1 >= r3) goto L_0x009a;
    L_0x0088:
        r4 = r6.f271d;
        r4 = r4[r1];
        r4.run();
        r4 = r6.f271d;
        r5 = 0;
        r4[r1] = r5;
        r1 = r1 + 1;
        goto L_0x0086;
    L_0x0097:
        r0 = move-exception;
        monitor-exit(r6);	 Catch:{ all -> 0x0097 }
        throw r0;
    L_0x009a:
        r6.f272e = r2;
        r1 = r0;
        goto L_0x0025;
    L_0x009e:
        if (r4 != 0) goto L_0x00a5;
    L_0x00a0:
        r6.f289v = r2;
        r6.m323d();
    L_0x00a5:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.p.e():boolean");
    }

    void m330f() {
        if (this.f280m != null) {
            for (int i = 0; i < this.f280m.size(); i++) {
                ((ProGuard) this.f280m.get(i)).m277a();
            }
        }
    }

    void m316b(ProGuard proGuard) {
        if (this.f276i == null) {
            this.f276i = new ArrayList();
        }
        this.f276i.add(proGuard);
        m330f();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    boolean m308a(android.os.Handler r12, java.lang.String r13, int r14, int r15) {
        /*
        r11 = this;
        r4 = 0;
        r2 = 1;
        r3 = 0;
        r0 = r11.f276i;
        if (r0 != 0) goto L_0x0008;
    L_0x0007:
        return r3;
    L_0x0008:
        if (r13 != 0) goto L_0x0037;
    L_0x000a:
        if (r14 >= 0) goto L_0x0037;
    L_0x000c:
        r0 = r15 & 1;
        if (r0 != 0) goto L_0x0037;
    L_0x0010:
        r0 = r11.f276i;
        r0 = r0.size();
        r0 = r0 + -1;
        if (r0 < 0) goto L_0x0007;
    L_0x001a:
        r1 = r11.f276i;
        r0 = r1.remove(r0);
        r0 = (android.support.v4.app.ProGuard) r0;
        r1 = new android.util.SparseArray;
        r1.<init>();
        r3 = new android.util.SparseArray;
        r3.<init>();
        r0.m247a(r1, r3);
        r0.m243a(r2, r4, r1, r3);
        r11.m330f();
    L_0x0035:
        r3 = r2;
        goto L_0x0007;
    L_0x0037:
        r0 = -1;
        if (r13 != 0) goto L_0x003c;
    L_0x003a:
        if (r14 < 0) goto L_0x008b;
    L_0x003c:
        r0 = r11.f276i;
        r0 = r0.size();
        r1 = r0 + -1;
    L_0x0044:
        if (r1 < 0) goto L_0x005a;
    L_0x0046:
        r0 = r11.f276i;
        r0 = r0.get(r1);
        r0 = (android.support.v4.app.ProGuard) r0;
        if (r13 == 0) goto L_0x0081;
    L_0x0050:
        r5 = r0.m251b();
        r5 = r13.equals(r5);
        if (r5 == 0) goto L_0x0081;
    L_0x005a:
        if (r1 < 0) goto L_0x0007;
    L_0x005c:
        r0 = r15 & 1;
        if (r0 == 0) goto L_0x008a;
    L_0x0060:
        r1 = r1 + -1;
    L_0x0062:
        if (r1 < 0) goto L_0x008a;
    L_0x0064:
        r0 = r11.f276i;
        r0 = r0.get(r1);
        r0 = (android.support.v4.app.ProGuard) r0;
        if (r13 == 0) goto L_0x0078;
    L_0x006e:
        r5 = r0.m251b();
        r5 = r13.equals(r5);
        if (r5 != 0) goto L_0x007e;
    L_0x0078:
        if (r14 < 0) goto L_0x008a;
    L_0x007a:
        r0 = r0.f220p;
        if (r14 != r0) goto L_0x008a;
    L_0x007e:
        r1 = r1 + -1;
        goto L_0x0062;
    L_0x0081:
        if (r14 < 0) goto L_0x0087;
    L_0x0083:
        r0 = r0.f220p;
        if (r14 == r0) goto L_0x005a;
    L_0x0087:
        r1 = r1 + -1;
        goto L_0x0044;
    L_0x008a:
        r0 = r1;
    L_0x008b:
        r1 = r11.f276i;
        r1 = r1.size();
        r1 = r1 + -1;
        if (r0 == r1) goto L_0x0007;
    L_0x0095:
        r6 = new java.util.ArrayList;
        r6.<init>();
        r1 = r11.f276i;
        r1 = r1.size();
        r1 = r1 + -1;
    L_0x00a2:
        if (r1 <= r0) goto L_0x00b0;
    L_0x00a4:
        r5 = r11.f276i;
        r5 = r5.remove(r1);
        r6.add(r5);
        r1 = r1 + -1;
        goto L_0x00a2;
    L_0x00b0:
        r0 = r6.size();
        r7 = r0 + -1;
        r8 = new android.util.SparseArray;
        r8.<init>();
        r9 = new android.util.SparseArray;
        r9.<init>();
        r1 = r3;
    L_0x00c1:
        if (r1 > r7) goto L_0x00d0;
    L_0x00c3:
        r0 = r6.get(r1);
        r0 = (android.support.v4.app.ProGuard) r0;
        r0.m247a(r8, r9);
        r0 = r1 + 1;
        r1 = r0;
        goto L_0x00c1;
    L_0x00d0:
        r5 = r4;
        r4 = r3;
    L_0x00d2:
        if (r4 > r7) goto L_0x0108;
    L_0x00d4:
        r0 = f267a;
        if (r0 == 0) goto L_0x00f4;
    L_0x00d8:
        r0 = "FragmentManager";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r10 = "Popping back stack state: ";
        r1 = r1.append(r10);
        r10 = r6.get(r4);
        r1 = r1.append(r10);
        r1 = r1.toString();
        android.util.Log.v(r0, r1);
    L_0x00f4:
        r0 = r6.get(r4);
        r0 = (android.support.v4.app.ProGuard) r0;
        if (r4 != r7) goto L_0x0106;
    L_0x00fc:
        r1 = r2;
    L_0x00fd:
        r1 = r0.m243a(r1, r5, r8, r9);
        r0 = r4 + 1;
        r4 = r0;
        r5 = r1;
        goto L_0x00d2;
    L_0x0106:
        r1 = r3;
        goto L_0x00fd;
    L_0x0108:
        r11.m330f();
        goto L_0x0035;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.p.a(android.os.Handler, java.lang.String, int, int):boolean");
    }

    ArrayList<Fragment> m331g() {
        ArrayList<Fragment> arrayList = null;
        if (this.f273f != null) {
            for (int i = 0; i < this.f273f.size(); i++) {
                Fragment fragment = (Fragment) this.f273f.get(i);
                if (fragment != null && fragment.mRetainInstance) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(fragment);
                    fragment.mRetaining = true;
                    fragment.mTargetIndex = fragment.mTarget != null ? fragment.mTarget.mIndex : -1;
                    if (f267a) {
                        Log.v("FragmentManager", "retainNonConfig: keeping retained " + fragment);
                    }
                }
            }
        }
        return arrayList;
    }

    void m326e(Fragment fragment) {
        if (fragment.mInnerView != null) {
            if (this.f291x == null) {
                this.f291x = new SparseArray();
            } else {
                this.f291x.clear();
            }
            fragment.mInnerView.saveHierarchyState(this.f291x);
            if (this.f291x.size() > 0) {
                fragment.mSavedViewState = this.f291x;
                this.f291x = null;
            }
        }
    }

    Bundle m329f(Fragment fragment) {
        Bundle bundle;
        if (this.f290w == null) {
            this.f290w = new Bundle();
        }
        fragment.performSaveInstanceState(this.f290w);
        if (this.f290w.isEmpty()) {
            bundle = null;
        } else {
            bundle = this.f290w;
            this.f290w = null;
        }
        if (fragment.mView != null) {
            m326e(fragment);
        }
        if (fragment.mSavedViewState != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putSparseParcelableArray("android:view_state", fragment.mSavedViewState);
        }
        if (!fragment.mUserVisibleHint) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean("android:user_visible_hint", fragment.mUserVisibleHint);
        }
        return bundle;
    }

    Parcelable m332h() {
        BackStackState[] backStackStateArr = null;
        m328e();
        if (f268b) {
            this.f286s = true;
        }
        if (this.f273f == null || this.f273f.size() <= 0) {
            return null;
        }
        int size = this.f273f.size();
        FragmentState[] fragmentStateArr = new FragmentState[size];
        int i = 0;
        boolean z = false;
        while (i < size) {
            boolean z2;
            Fragment fragment = (Fragment) this.f273f.get(i);
            if (fragment != null) {
                if (fragment.mIndex < 0) {
                    m284a(new IllegalStateException("Failure saving state: active " + fragment + " has cleared index: " + fragment.mIndex));
                }
                FragmentState fragmentState = new FragmentState(fragment);
                fragmentStateArr[i] = fragmentState;
                if (fragment.mState <= 0 || fragmentState.f79j != null) {
                    fragmentState.f79j = fragment.mSavedFragmentState;
                } else {
                    fragmentState.f79j = m329f(fragment);
                    if (fragment.mTarget != null) {
                        if (fragment.mTarget.mIndex < 0) {
                            m284a(new IllegalStateException("Failure saving state: " + fragment + " has target not in fragment manager: " + fragment.mTarget));
                        }
                        if (fragmentState.f79j == null) {
                            fragmentState.f79j = new Bundle();
                        }
                        m299a(fragmentState.f79j, "android:target_state", fragment.mTarget);
                        if (fragment.mTargetRequestCode != 0) {
                            fragmentState.f79j.putInt("android:target_req_state", fragment.mTargetRequestCode);
                        }
                    }
                }
                if (f267a) {
                    Log.v("FragmentManager", "Saved state of " + fragment + ": " + fragmentState.f79j);
                }
                z2 = true;
            } else {
                z2 = z;
            }
            i++;
            z = z2;
        }
        if (z) {
            int[] iArr;
            int i2;
            FragmentManagerState fragmentManagerState;
            if (this.f274g != null) {
                i = this.f274g.size();
                if (i > 0) {
                    iArr = new int[i];
                    for (i2 = 0; i2 < i; i2++) {
                        iArr[i2] = ((Fragment) this.f274g.get(i2)).mIndex;
                        if (iArr[i2] < 0) {
                            m284a(new IllegalStateException("Failure saving state: active " + this.f274g.get(i2) + " has cleared index: " + iArr[i2]));
                        }
                        if (f267a) {
                            Log.v("FragmentManager", "saveAllState: adding fragment #" + i2 + ": " + this.f274g.get(i2));
                        }
                    }
                    if (this.f276i != null) {
                        i = this.f276i.size();
                        if (i > 0) {
                            backStackStateArr = new BackStackState[i];
                            for (i2 = 0; i2 < i; i2++) {
                                backStackStateArr[i2] = new BackStackState(this, (ProGuard) this.f276i.get(i2));
                                if (f267a) {
                                    Log.v("FragmentManager", "saveAllState: adding back stack #" + i2 + ": " + this.f276i.get(i2));
                                }
                            }
                        }
                    }
                    fragmentManagerState = new FragmentManagerState();
                    fragmentManagerState.f67a = fragmentStateArr;
                    fragmentManagerState.f68b = iArr;
                    fragmentManagerState.f69c = backStackStateArr;
                    return fragmentManagerState;
                }
            }
            iArr = null;
            if (this.f276i != null) {
                i = this.f276i.size();
                if (i > 0) {
                    backStackStateArr = new BackStackState[i];
                    for (i2 = 0; i2 < i; i2++) {
                        backStackStateArr[i2] = new BackStackState(this, (ProGuard) this.f276i.get(i2));
                        if (f267a) {
                            Log.v("FragmentManager", "saveAllState: adding back stack #" + i2 + ": " + this.f276i.get(i2));
                        }
                    }
                }
            }
            fragmentManagerState = new FragmentManagerState();
            fragmentManagerState.f67a = fragmentStateArr;
            fragmentManagerState.f68b = iArr;
            fragmentManagerState.f69c = backStackStateArr;
            return fragmentManagerState;
        } else if (!f267a) {
            return null;
        } else {
            Log.v("FragmentManager", "saveAllState: no fragments!");
            return null;
        }
    }

    void m300a(Parcelable parcelable, ArrayList<Fragment> arrayList) {
        if (parcelable != null) {
            FragmentManagerState fragmentManagerState = (FragmentManagerState) parcelable;
            if (fragmentManagerState.f67a != null) {
                int i;
                Fragment fragment;
                int i2;
                if (arrayList != null) {
                    for (i = 0; i < arrayList.size(); i++) {
                        fragment = (Fragment) arrayList.get(i);
                        if (f267a) {
                            Log.v("FragmentManager", "restoreAllState: re-attaching retained " + fragment);
                        }
                        FragmentState fragmentState = fragmentManagerState.f67a[fragment.mIndex];
                        fragmentState.f80k = fragment;
                        fragment.mSavedViewState = null;
                        fragment.mBackStackNesting = 0;
                        fragment.mInLayout = false;
                        fragment.mAdded = false;
                        fragment.mTarget = null;
                        if (fragmentState.f79j != null) {
                            fragmentState.f79j.setClassLoader(this.f282o.getClassLoader());
                            fragment.mSavedViewState = fragmentState.f79j.getSparseParcelableArray("android:view_state");
                            fragment.mSavedFragmentState = fragmentState.f79j;
                        }
                    }
                }
                this.f273f = new ArrayList(fragmentManagerState.f67a.length);
                if (this.f275h != null) {
                    this.f275h.clear();
                }
                for (i2 = 0; i2 < fragmentManagerState.f67a.length; i2++) {
                    FragmentState fragmentState2 = fragmentManagerState.f67a[i2];
                    if (fragmentState2 != null) {
                        Fragment a = fragmentState2.m106a(this.f282o, this.f284q);
                        if (f267a) {
                            Log.v("FragmentManager", "restoreAllState: active #" + i2 + ": " + a);
                        }
                        this.f273f.add(a);
                        fragmentState2.f80k = null;
                    } else {
                        this.f273f.add(null);
                        if (this.f275h == null) {
                            this.f275h = new ArrayList();
                        }
                        if (f267a) {
                            Log.v("FragmentManager", "restoreAllState: avail #" + i2);
                        }
                        this.f275h.add(Integer.valueOf(i2));
                    }
                }
                if (arrayList != null) {
                    for (int i3 = 0; i3 < arrayList.size(); i3++) {
                        fragment = (Fragment) arrayList.get(i3);
                        if (fragment.mTargetIndex >= 0) {
                            if (fragment.mTargetIndex < this.f273f.size()) {
                                fragment.mTarget = (Fragment) this.f273f.get(fragment.mTargetIndex);
                            } else {
                                Log.w("FragmentManager", "Re-attaching retained fragment " + fragment + " target no longer exists: " + fragment.mTargetIndex);
                                fragment.mTarget = null;
                            }
                        }
                    }
                }
                if (fragmentManagerState.f68b != null) {
                    this.f274g = new ArrayList(fragmentManagerState.f68b.length);
                    for (i = 0; i < fragmentManagerState.f68b.length; i++) {
                        fragment = (Fragment) this.f273f.get(fragmentManagerState.f68b[i]);
                        if (fragment == null) {
                            m284a(new IllegalStateException("No instantiated fragment for index #" + fragmentManagerState.f68b[i]));
                        }
                        fragment.mAdded = true;
                        if (f267a) {
                            Log.v("FragmentManager", "restoreAllState: added #" + i + ": " + fragment);
                        }
                        if (this.f274g.contains(fragment)) {
                            throw new IllegalStateException("Already added!");
                        }
                        this.f274g.add(fragment);
                    }
                } else {
                    this.f274g = null;
                }
                if (fragmentManagerState.f69c != null) {
                    this.f276i = new ArrayList(fragmentManagerState.f69c.length);
                    for (i2 = 0; i2 < fragmentManagerState.f69c.length; i2++) {
                        ProGuard a2 = fragmentManagerState.f69c[i2].m105a(this);
                        if (f267a) {
                            Log.v("FragmentManager", "restoreAllState: back stack #" + i2 + " (index " + a2.f220p + "): " + a2);
                            a2.m249a("  ", new PrintWriter(new android.support.v4.p015f.ProGuard("FragmentManager")), false);
                        }
                        this.f276i.add(a2);
                        if (a2.f220p >= 0) {
                            m296a(a2.f220p, a2);
                        }
                    }
                    return;
                }
                this.f276i = null;
            }
        }
    }

    public void m305a(ProGuard proGuard, ProGuard proGuard2, Fragment fragment) {
        if (this.f282o != null) {
            throw new IllegalStateException("Already attached");
        }
        this.f282o = proGuard;
        this.f283p = proGuard2;
        this.f284q = fragment;
    }

    public void m333i() {
        this.f286s = false;
    }

    public void m334j() {
        this.f286s = false;
        m297a(1, false);
    }

    public void m335k() {
        this.f286s = false;
        m297a(2, false);
    }

    public void m336l() {
        this.f286s = false;
        m297a(4, false);
    }

    public void m337m() {
        this.f286s = false;
        m297a(5, false);
    }

    public void m338n() {
        m297a(4, false);
    }

    public void m339o() {
        this.f286s = true;
        m297a(3, false);
    }

    public void m340p() {
        m297a(2, false);
    }

    public void m341q() {
        m297a(1, false);
    }

    public void m342r() {
        this.f287t = true;
        m328e();
        m297a(0, false);
        this.f282o = null;
        this.f283p = null;
        this.f284q = null;
    }

    public void m298a(Configuration configuration) {
        if (this.f274g != null) {
            for (int i = 0; i < this.f274g.size(); i++) {
                Fragment fragment = (Fragment) this.f274g.get(i);
                if (fragment != null) {
                    fragment.performConfigurationChanged(configuration);
                }
            }
        }
    }

    public void m343s() {
        if (this.f274g != null) {
            for (int i = 0; i < this.f274g.size(); i++) {
                Fragment fragment = (Fragment) this.f274g.get(i);
                if (fragment != null) {
                    fragment.performLowMemory();
                }
            }
        }
    }

    public boolean m310a(Menu menu, MenuInflater menuInflater) {
        boolean z;
        Fragment fragment;
        int i = 0;
        ArrayList arrayList = null;
        if (this.f274g != null) {
            int i2 = 0;
            z = false;
            while (i2 < this.f274g.size()) {
                fragment = (Fragment) this.f274g.get(i2);
                if (fragment != null && fragment.performCreateOptionsMenu(menu, menuInflater)) {
                    z = true;
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(fragment);
                }
                i2++;
                z = z;
            }
        } else {
            z = false;
        }
        if (this.f277j != null) {
            while (i < this.f277j.size()) {
                fragment = (Fragment) this.f277j.get(i);
                if (arrayList == null || !arrayList.contains(fragment)) {
                    fragment.onDestroyOptionsMenu();
                }
                i++;
            }
        }
        this.f277j = arrayList;
        return z;
    }

    public boolean m309a(Menu menu) {
        if (this.f274g == null) {
            return false;
        }
        boolean z = false;
        for (int i = 0; i < this.f274g.size(); i++) {
            Fragment fragment = (Fragment) this.f274g.get(i);
            if (fragment != null && fragment.performPrepareOptionsMenu(menu)) {
                z = true;
            }
        }
        return z;
    }

    public boolean m311a(MenuItem menuItem) {
        if (this.f274g == null) {
            return false;
        }
        for (int i = 0; i < this.f274g.size(); i++) {
            Fragment fragment = (Fragment) this.f274g.get(i);
            if (fragment != null && fragment.performOptionsItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public boolean m319b(MenuItem menuItem) {
        if (this.f274g == null) {
            return false;
        }
        for (int i = 0; i < this.f274g.size(); i++) {
            Fragment fragment = (Fragment) this.f274g.get(i);
            if (fragment != null && fragment.performContextItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public void m317b(Menu menu) {
        if (this.f274g != null) {
            for (int i = 0; i < this.f274g.size(); i++) {
                Fragment fragment = (Fragment) this.f274g.get(i);
                if (fragment != null) {
                    fragment.performOptionsMenuClosed(menu);
                }
            }
        }
    }

    public static int m286c(int i) {
        switch (i) {
            case 4097:
                return 8194;
            case 4099:
                return 4099;
            case 8194:
                return 4097;
            default:
                return 0;
        }
    }

    public static int m285b(int i, boolean z) {
        switch (i) {
            case 4097:
                return z ? 1 : 2;
            case 4099:
                return z ? 5 : 6;
            case 8194:
                return z ? 3 : 4;
            default:
                return -1;
        }
    }

    public View m293a(View view, String str, Context context, AttributeSet attributeSet) {
        if (!"fragment".equals(str)) {
            return null;
        }
        String string;
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ProGuard.f263a);
        if (attributeValue == null) {
            string = obtainStyledAttributes.getString(0);
        } else {
            string = attributeValue;
        }
        int resourceId = obtainStyledAttributes.getResourceId(1, -1);
        String string2 = obtainStyledAttributes.getString(2);
        obtainStyledAttributes.recycle();
        if (!Fragment.isSupportFragmentClass(this.f282o, string)) {
            return null;
        }
        int id;
        if (view != null) {
            id = view.getId();
        } else {
            id = 0;
        }
        if (id == -1 && resourceId == -1 && string2 == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + string);
        }
        Fragment fragment;
        Fragment a = resourceId != -1 ? m289a(resourceId) : null;
        if (a == null && string2 != null) {
            a = m291a(string2);
        }
        if (a == null && id != -1) {
            a = m289a(id);
        }
        if (f267a) {
            Log.v("FragmentManager", "onCreateView: id=0x" + Integer.toHexString(resourceId) + " fname=" + string + " existing=" + a);
        }
        if (a == null) {
            Fragment instantiate = Fragment.instantiate(context, string);
            instantiate.mFromLayout = true;
            instantiate.mFragmentId = resourceId != 0 ? resourceId : id;
            instantiate.mContainerId = id;
            instantiate.mTag = string2;
            instantiate.mInLayout = true;
            instantiate.mFragmentManager = this;
            instantiate.onInflate(this.f282o, attributeSet, instantiate.mSavedFragmentState);
            m304a(instantiate, true);
            fragment = instantiate;
        } else if (a.mInLayout) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string2 + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + string);
        } else {
            a.mInLayout = true;
            if (!a.mRetaining) {
                a.onInflate(this.f282o, attributeSet, a.mSavedFragmentState);
            }
            fragment = a;
        }
        if (this.f281n >= 1 || !fragment.mFromLayout) {
            m314b(fragment);
        } else {
            m303a(fragment, 1, 0, 0, false);
        }
        if (fragment.mView == null) {
            throw new IllegalStateException("Fragment " + string + " did not create a view.");
        }
        if (resourceId != 0) {
            fragment.mView.setId(resourceId);
        }
        if (fragment.mView.getTag() == null) {
            fragment.mView.setTag(string2);
        }
        return fragment.mView;
    }

    android.support.v4.view.ProGuard m344t() {
        return this;
    }
}
