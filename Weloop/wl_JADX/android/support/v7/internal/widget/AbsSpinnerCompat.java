package android.support.v7.internal.widget;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.view.ak;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.Adapter;
import android.widget.SpinnerAdapter;

/* compiled from: ProGuard */
abstract class AbsSpinnerCompat extends ProGuard<SpinnerAdapter> {
    private DataSetObserver f1058E;
    SpinnerAdapter f1059a;
    int f1060b;
    int f1061c;
    int f1062d;
    int f1063e;
    int f1064f;
    int f1065g;
    final Rect f1066h;
    final ProGuard f1067i;

    /* compiled from: ProGuard */
    static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR;
        long f1028a;
        int f1029b;

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        SavedState(Parcel parcel) {
            super(parcel);
            this.f1028a = parcel.readLong();
            this.f1029b = parcel.readInt();
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeLong(this.f1028a);
            parcel.writeInt(this.f1029b);
        }

        public String toString() {
            return "AbsSpinner.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " selectedId=" + this.f1028a + " position=" + this.f1029b + "}";
        }

        static {
            CREATOR = new ProGuard();
        }
    }

    /* renamed from: android.support.v7.internal.widget.AbsSpinnerCompat.a */
    class ProGuard {
        final /* synthetic */ AbsSpinnerCompat f1030a;
        private final SparseArray<View> f1031b;

        ProGuard(AbsSpinnerCompat absSpinnerCompat) {
            this.f1030a = absSpinnerCompat;
            this.f1031b = new SparseArray();
        }

        public void m2134a(int i, View view) {
            this.f1031b.put(i, view);
        }

        View m2132a(int i) {
            View view = (View) this.f1031b.get(i);
            if (view != null) {
                this.f1031b.delete(i);
            }
            return view;
        }

        void m2133a() {
            SparseArray sparseArray = this.f1031b;
            int size = sparseArray.size();
            for (int i = 0; i < size; i++) {
                View view = (View) sparseArray.valueAt(i);
                if (view != null) {
                    this.f1030a.removeDetachedView(view, true);
                }
            }
            sparseArray.clear();
        }
    }

    abstract void m2154a(int i, boolean z);

    public /* synthetic */ Adapter getAdapter() {
        return m2158c();
    }

    public /* synthetic */ void setAdapter(Adapter adapter) {
        m2155a((SpinnerAdapter) adapter);
    }

    AbsSpinnerCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1062d = 0;
        this.f1063e = 0;
        this.f1064f = 0;
        this.f1065g = 0;
        this.f1066h = new Rect();
        this.f1067i = new ProGuard(this);
        m2151k();
    }

    private void m2151k() {
        setFocusable(true);
        setWillNotDraw(false);
    }

    public void m2155a(SpinnerAdapter spinnerAdapter) {
        int i = -1;
        if (this.f1059a != null) {
            this.f1059a.unregisterDataSetObserver(this.f1058E);
            m2153a();
        }
        this.f1059a = spinnerAdapter;
        this.B = -1;
        this.C = Long.MIN_VALUE;
        if (this.f1059a != null) {
            this.A = this.z;
            this.z = this.f1059a.getCount();
            m2144e();
            this.f1058E = new android.support.v7.internal.widget.ProGuard.ProGuard(this);
            this.f1059a.registerDataSetObserver(this.f1058E);
            if (this.z > 0) {
                i = 0;
            }
            setSelectedPositionInt(i);
            setNextSelectedPositionInt(i);
            if (this.z == 0) {
                m2147h();
            }
        } else {
            m2144e();
            m2153a();
            m2147h();
        }
        requestLayout();
    }

    void m2153a() {
        this.u = false;
        this.o = false;
        removeAllViewsInLayout();
        this.B = -1;
        this.C = Long.MIN_VALUE;
        setSelectedPositionInt(-1);
        setNextSelectedPositionInt(-1);
        invalidate();
    }

    protected void onMeasure(int i, int i2) {
        boolean z;
        int mode = MeasureSpec.getMode(i);
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        Rect rect = this.f1066h;
        if (paddingLeft <= this.f1062d) {
            paddingLeft = this.f1062d;
        }
        rect.left = paddingLeft;
        this.f1066h.top = paddingTop > this.f1063e ? paddingTop : this.f1063e;
        this.f1066h.right = paddingRight > this.f1064f ? paddingRight : this.f1064f;
        this.f1066h.bottom = paddingBottom > this.f1065g ? paddingBottom : this.f1065g;
        if (this.u) {
            m2146g();
        }
        paddingTop = getSelectedItemPosition();
        if (paddingTop >= 0 && this.f1059a != null && paddingTop < this.f1059a.getCount()) {
            View a = this.f1067i.m2132a(paddingTop);
            if (a == null) {
                a = this.f1059a.getView(paddingTop, null, this);
            }
            if (a != null) {
                this.f1067i.m2134a(paddingTop, a);
                if (a.getLayoutParams() == null) {
                    this.D = true;
                    a.setLayoutParams(generateDefaultLayoutParams());
                    this.D = false;
                }
                measureChild(a, i, i2);
                paddingTop = (m2152a(a) + this.f1066h.top) + this.f1066h.bottom;
                paddingLeft = (m2156b(a) + this.f1066h.left) + this.f1066h.right;
                z = false;
                if (z) {
                    paddingTop = this.f1066h.top + this.f1066h.bottom;
                    if (mode == 0) {
                        paddingLeft = this.f1066h.left + this.f1066h.right;
                    }
                }
                setMeasuredDimension(ak.m1011a(Math.max(paddingLeft, getSuggestedMinimumWidth()), i, 0), ak.m1011a(Math.max(paddingTop, getSuggestedMinimumHeight()), i2, 0));
                this.f1060b = i2;
                this.f1061c = i;
            }
        }
        z = true;
        paddingLeft = 0;
        paddingTop = 0;
        if (z) {
            paddingTop = this.f1066h.top + this.f1066h.bottom;
            if (mode == 0) {
                paddingLeft = this.f1066h.left + this.f1066h.right;
            }
        }
        setMeasuredDimension(ak.m1011a(Math.max(paddingLeft, getSuggestedMinimumWidth()), i, 0), ak.m1011a(Math.max(paddingTop, getSuggestedMinimumHeight()), i2, 0));
        this.f1060b = i2;
        this.f1061c = i;
    }

    int m2152a(View view) {
        return view.getMeasuredHeight();
    }

    int m2156b(View view) {
        return view.getMeasuredWidth();
    }

    protected LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -2);
    }

    void m2157b() {
        int childCount = getChildCount();
        ProGuard proGuard = this.f1067i;
        int i = this.j;
        for (int i2 = 0; i2 < childCount; i2++) {
            proGuard.m2134a(i + i2, getChildAt(i2));
        }
    }

    public void setSelection(int i) {
        setNextSelectedPositionInt(i);
        requestLayout();
        invalidate();
    }

    public View getSelectedView() {
        if (this.z <= 0 || this.x < 0) {
            return null;
        }
        return getChildAt(this.x - this.j);
    }

    public void requestLayout() {
        if (!this.D) {
            super.requestLayout();
        }
    }

    public SpinnerAdapter m2158c() {
        return this.f1059a;
    }

    public int getCount() {
        return this.z;
    }

    public Parcelable onSaveInstanceState() {
        Object savedState = new SavedState(super.onSaveInstanceState());
        savedState.f1028a = getSelectedItemId();
        if (savedState.f1028a >= 0) {
            savedState.f1029b = getSelectedItemPosition();
        } else {
            savedState.f1029b = -1;
        }
        return savedState;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (savedState.f1028a >= 0) {
            this.u = true;
            this.o = true;
            this.m = savedState.f1028a;
            this.l = savedState.f1029b;
            this.p = 0;
            requestLayout();
        }
    }
}
