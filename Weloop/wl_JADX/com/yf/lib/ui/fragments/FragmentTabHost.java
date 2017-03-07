package com.yf.lib.ui.fragments;

import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.BaseSavedState;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.TabHost;
import android.widget.TabHost.OnTabChangeListener;
import android.widget.TabHost.TabContentFactory;
import android.widget.TabHost.TabSpec;
import android.widget.TabWidget;
import java.util.ArrayList;

/* compiled from: ProGuard */
public class FragmentTabHost extends TabHost implements OnTabChangeListener {
    private final ArrayList<ProGuard> f6777a;
    private FrameLayout f6778b;
    private Context f6779c;
    private FragmentManager f6780d;
    private int f6781e;
    private OnTabChangeListener f6782f;
    private ProGuard f6783g;
    private boolean f6784h;

    /* compiled from: ProGuard */
    static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR;
        String f6771a;

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f6771a = parcel.readString();
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.f6771a);
        }

        public String toString() {
            return "FragmentTabHost.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " curTab=" + this.f6771a + "}";
        }

        static {
            CREATOR = new ProGuard();
        }
    }

    /* renamed from: com.yf.lib.ui.fragments.FragmentTabHost.a */
    static class ProGuard implements TabContentFactory {
        private final Context f6772a;

        public ProGuard(Context context) {
            this.f6772a = context;
        }

        public View createTabContent(String str) {
            View view = new View(this.f6772a);
            view.setMinimumWidth(0);
            view.setMinimumHeight(0);
            return view;
        }
    }

    /* renamed from: com.yf.lib.ui.fragments.FragmentTabHost.b */
    static final class ProGuard {
        private final String f6773a;
        private final Class<?> f6774b;
        private final Bundle f6775c;
        private Fragment f6776d;

        ProGuard(String str, Class<?> cls, Bundle bundle) {
            this.f6773a = str;
            this.f6774b = cls;
            this.f6775c = bundle;
        }
    }

    public FragmentTabHost(Context context) {
        super(context, null);
        this.f6777a = new ArrayList();
        m8639a(context, null);
    }

    public FragmentTabHost(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6777a = new ArrayList();
        m8639a(context, attributeSet);
    }

    private void m8639a(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{16842995}, 0, 0);
        this.f6781e = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        super.setOnTabChangedListener(this);
    }

    private void m8638a(Context context) {
        if (findViewById(16908307) == null) {
            View linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            addView(linearLayout, new LayoutParams(-1, -1));
            View tabWidget = new TabWidget(context);
            tabWidget.setId(16908307);
            tabWidget.setOrientation(0);
            linearLayout.addView(tabWidget, new LinearLayout.LayoutParams(-1, -2, 0.0f));
            tabWidget = new FrameLayout(context);
            tabWidget.setId(16908305);
            linearLayout.addView(tabWidget, new LinearLayout.LayoutParams(0, 0, 0.0f));
            tabWidget = new FrameLayout(context);
            this.f6778b = tabWidget;
            this.f6778b.setId(this.f6781e);
            linearLayout.addView(tabWidget, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        }
    }

    @Deprecated
    public void setup() {
        throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
    }

    public void m8640a(Context context, FragmentManager fragmentManager, int i) {
        m8638a(context);
        super.setup();
        this.f6779c = context;
        this.f6780d = fragmentManager;
        this.f6781e = i;
        m8637a();
        this.f6778b.setId(i);
        if (getId() == -1) {
            setId(16908306);
        }
    }

    private void m8637a() {
        if (this.f6778b == null) {
            this.f6778b = (FrameLayout) findViewById(this.f6781e);
            if (this.f6778b == null) {
                throw new IllegalStateException("No tab content FrameLayout found for id " + this.f6781e);
            }
        }
    }

    public void setOnTabChangedListener(OnTabChangeListener onTabChangeListener) {
        this.f6782f = onTabChangeListener;
    }

    public void m8641a(TabSpec tabSpec, Class<?> cls, Bundle bundle) {
        tabSpec.setContent(new ProGuard(this.f6779c));
        String tag = tabSpec.getTag();
        ProGuard proGuard = new ProGuard(tag, cls, bundle);
        if (this.f6784h) {
            proGuard.f6776d = this.f6780d.findFragmentByTag(tag);
            if (!(proGuard.f6776d == null || proGuard.f6776d.isDetached())) {
                FragmentTransaction beginTransaction = this.f6780d.beginTransaction();
                beginTransaction.detach(proGuard.f6776d);
                beginTransaction.commit();
            }
        }
        this.f6777a.add(proGuard);
        addTab(tabSpec);
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        String currentTabTag = getCurrentTabTag();
        FragmentTransaction fragmentTransaction = null;
        for (int i = 0; i < this.f6777a.size(); i++) {
            ProGuard proGuard = (ProGuard) this.f6777a.get(i);
            proGuard.f6776d = this.f6780d.findFragmentByTag(proGuard.f6773a);
            if (!(proGuard.f6776d == null || proGuard.f6776d.isDetached())) {
                if (proGuard.f6773a.equals(currentTabTag)) {
                    this.f6783g = proGuard;
                } else {
                    if (fragmentTransaction == null) {
                        fragmentTransaction = this.f6780d.beginTransaction();
                    }
                    fragmentTransaction.detach(proGuard.f6776d);
                }
            }
        }
        this.f6784h = true;
        FragmentTransaction a = m8636a(currentTabTag, fragmentTransaction);
        if (a != null) {
            try {
                a.commit();
            } catch (Throwable th) {
                th.printStackTrace();
            }
            this.f6780d.executePendingTransactions();
        }
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f6784h = false;
    }

    protected Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        savedState.f6771a = getCurrentTabTag();
        return savedState;
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setCurrentTabByTag(savedState.f6771a);
    }

    public void onTabChanged(String str) {
        if (this.f6784h) {
            FragmentTransaction a = m8636a(str, null);
            if (a != null) {
                a.commit();
            }
        }
        if (this.f6782f != null) {
            this.f6782f.onTabChanged(str);
        }
    }

    private FragmentTransaction m8636a(String str, FragmentTransaction fragmentTransaction) {
        ProGuard proGuard = null;
        int i = 0;
        while (i < this.f6777a.size()) {
            ProGuard proGuard2 = (ProGuard) this.f6777a.get(i);
            if (!proGuard2.f6773a.equals(str)) {
                proGuard2 = proGuard;
            }
            i++;
            proGuard = proGuard2;
        }
        if (proGuard == null) {
            throw new IllegalStateException("No tab known for tag " + str);
        }
        if (this.f6783g != proGuard) {
            if (fragmentTransaction == null) {
                fragmentTransaction = this.f6780d.beginTransaction();
            }
            if (!(this.f6783g == null || this.f6783g.f6776d == null)) {
                fragmentTransaction.detach(this.f6783g.f6776d);
            }
            if (proGuard != null) {
                if (proGuard.f6776d == null) {
                    proGuard.f6776d = Fragment.instantiate(this.f6779c, proGuard.f6774b.getName(), proGuard.f6775c);
                    fragmentTransaction.add(this.f6781e, proGuard.f6776d, proGuard.f6773a);
                } else {
                    fragmentTransaction.attach(proGuard.f6776d);
                }
            }
            this.f6783g = proGuard;
        }
        return fragmentTransaction;
    }
}
