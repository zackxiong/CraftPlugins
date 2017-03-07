package android.support.v13.app;

import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;
import android.widget.TabHost;
import android.widget.TabHost.OnTabChangeListener;
import java.util.ArrayList;

/* compiled from: ProGuard */
public class FragmentTabHost extends TabHost implements OnTabChangeListener {
    private final ArrayList<ProGuard> f23a;
    private Context f24b;
    private FragmentManager f25c;
    private int f26d;
    private OnTabChangeListener f27e;
    private ProGuard f28f;
    private boolean f29g;

    /* compiled from: ProGuard */
    static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR;
        String f18a;

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f18a = parcel.readString();
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.f18a);
        }

        public String toString() {
            return "FragmentTabHost.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " curTab=" + this.f18a + "}";
        }

        static {
            CREATOR = new ProGuard();
        }
    }

    /* renamed from: android.support.v13.app.FragmentTabHost.a */
    static final class ProGuard {
        private final String f19a;
        private final Class<?> f20b;
        private final Bundle f21c;
        private Fragment f22d;
    }

    @Deprecated
    public void setup() {
        throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
    }

    public void setOnTabChangedListener(OnTabChangeListener onTabChangeListener) {
        this.f27e = onTabChangeListener;
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        String currentTabTag = getCurrentTabTag();
        FragmentTransaction fragmentTransaction = null;
        for (int i = 0; i < this.f23a.size(); i++) {
            ProGuard proGuard = (ProGuard) this.f23a.get(i);
            proGuard.f22d = this.f25c.findFragmentByTag(proGuard.f19a);
            if (!(proGuard.f22d == null || proGuard.f22d.isDetached())) {
                if (proGuard.f19a.equals(currentTabTag)) {
                    this.f28f = proGuard;
                } else {
                    if (fragmentTransaction == null) {
                        fragmentTransaction = this.f25c.beginTransaction();
                    }
                    fragmentTransaction.detach(proGuard.f22d);
                }
            }
        }
        this.f29g = true;
        FragmentTransaction a = m44a(currentTabTag, fragmentTransaction);
        if (a != null) {
            a.commit();
            this.f25c.executePendingTransactions();
        }
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f29g = false;
    }

    protected Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        savedState.f18a = getCurrentTabTag();
        return savedState;
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setCurrentTabByTag(savedState.f18a);
    }

    public void onTabChanged(String str) {
        if (this.f29g) {
            FragmentTransaction a = m44a(str, null);
            if (a != null) {
                a.commit();
            }
        }
        if (this.f27e != null) {
            this.f27e.onTabChanged(str);
        }
    }

    private FragmentTransaction m44a(String str, FragmentTransaction fragmentTransaction) {
        ProGuard proGuard = null;
        int i = 0;
        while (i < this.f23a.size()) {
            ProGuard proGuard2 = (ProGuard) this.f23a.get(i);
            if (!proGuard2.f19a.equals(str)) {
                proGuard2 = proGuard;
            }
            i++;
            proGuard = proGuard2;
        }
        if (proGuard == null) {
            throw new IllegalStateException("No tab known for tag " + str);
        }
        if (this.f28f != proGuard) {
            if (fragmentTransaction == null) {
                fragmentTransaction = this.f25c.beginTransaction();
            }
            if (!(this.f28f == null || this.f28f.f22d == null)) {
                fragmentTransaction.detach(this.f28f.f22d);
            }
            if (proGuard != null) {
                if (proGuard.f22d == null) {
                    proGuard.f22d = Fragment.instantiate(this.f24b, proGuard.f20b.getName(), proGuard.f21c);
                    fragmentTransaction.add(this.f26d, proGuard.f22d, proGuard.f19a);
                } else {
                    fragmentTransaction.attach(proGuard.f22d);
                }
            }
            this.f28f = proGuard;
        }
        return fragmentTransaction;
    }
}
