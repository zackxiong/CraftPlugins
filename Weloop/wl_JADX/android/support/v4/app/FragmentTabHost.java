package android.support.v4.app;

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
    private final ArrayList<ProGuard> f86a;
    private Context f87b;
    private ProGuard f88c;
    private int f89d;
    private OnTabChangeListener f90e;
    private ProGuard f91f;
    private boolean f92g;

    /* compiled from: ProGuard */
    static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR;
        String f81a;

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f81a = parcel.readString();
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.f81a);
        }

        public String toString() {
            return "FragmentTabHost.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " curTab=" + this.f81a + "}";
        }

        static {
            CREATOR = new ProGuard();
        }
    }

    /* renamed from: android.support.v4.app.FragmentTabHost.a */
    static final class ProGuard {
        private final String f82a;
        private final Class<?> f83b;
        private final Bundle f84c;
        private Fragment f85d;
    }

    @Deprecated
    public void setup() {
        throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
    }

    public void setOnTabChangedListener(OnTabChangeListener onTabChangeListener) {
        this.f90e = onTabChangeListener;
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        String currentTabTag = getCurrentTabTag();
        ProGuard proGuard = null;
        for (int i = 0; i < this.f86a.size(); i++) {
            ProGuard proGuard2 = (ProGuard) this.f86a.get(i);
            proGuard2.f85d = this.f88c.m278a(proGuard2.f82a);
            if (!(proGuard2.f85d == null || proGuard2.f85d.isDetached())) {
                if (proGuard2.f82a.equals(currentTabTag)) {
                    this.f91f = proGuard2;
                } else {
                    if (proGuard == null) {
                        proGuard = this.f88c.m279a();
                    }
                    proGuard.m212a(proGuard2.f85d);
                }
            }
        }
        this.f92g = true;
        ProGuard a = m112a(currentTabTag, proGuard);
        if (a != null) {
            a.m211a();
            this.f88c.m280b();
        }
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f92g = false;
    }

    protected Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        savedState.f81a = getCurrentTabTag();
        return savedState;
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setCurrentTabByTag(savedState.f81a);
    }

    public void onTabChanged(String str) {
        if (this.f92g) {
            ProGuard a = m112a(str, null);
            if (a != null) {
                a.m211a();
            }
        }
        if (this.f90e != null) {
            this.f90e.onTabChanged(str);
        }
    }

    private ProGuard m112a(String str, ProGuard proGuard) {
        ProGuard proGuard2 = null;
        int i = 0;
        while (i < this.f86a.size()) {
            ProGuard proGuard3 = (ProGuard) this.f86a.get(i);
            if (!proGuard3.f82a.equals(str)) {
                proGuard3 = proGuard2;
            }
            i++;
            proGuard2 = proGuard3;
        }
        if (proGuard2 == null) {
            throw new IllegalStateException("No tab known for tag " + str);
        }
        if (this.f91f != proGuard2) {
            if (proGuard == null) {
                proGuard = this.f88c.m279a();
            }
            if (!(this.f91f == null || this.f91f.f85d == null)) {
                proGuard.m212a(this.f91f.f85d);
            }
            if (proGuard2 != null) {
                if (proGuard2.f85d == null) {
                    proGuard2.f85d = Fragment.instantiate(this.f87b, proGuard2.f83b.getName(), proGuard2.f84c);
                    proGuard.add(this.f89d, proGuard2.f85d, proGuard2.f82a);
                } else {
                    proGuard.m213b(proGuard2.f85d);
                }
            }
            this.f91f = proGuard2;
        }
        return proGuard;
    }
}
