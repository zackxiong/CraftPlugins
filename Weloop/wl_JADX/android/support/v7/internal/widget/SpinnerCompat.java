package android.support.v7.internal.widget;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.view.ak;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import android.widget.Adapter;
import android.widget.ListAdapter;
import android.widget.SpinnerAdapter;

/* compiled from: ProGuard */
class SpinnerCompat extends AbsSpinnerCompat implements OnClickListener {
    int f1223E;
    private android.support.v7.widget.ProGuard.ProGuard f1224F;
    private ProGuard f1225G;
    private ProGuard f1226H;
    private int f1227I;
    private boolean f1228J;
    private Rect f1229K;
    private final ab f1230L;

    /* compiled from: ProGuard */
    static class SavedState extends SavedState {
        public static final Creator<SavedState> CREATOR;
        boolean f1183c;

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f1183c = parcel.readByte() != null;
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeByte((byte) (this.f1183c ? 1 : 0));
        }

        static {
            CREATOR = new ProGuard();
        }
    }

    /* renamed from: android.support.v7.internal.widget.SpinnerCompat.d */
    private interface ProGuard {
        void m2257a();

        void m2258a(ListAdapter listAdapter);

        void m2259a(CharSequence charSequence);

        boolean m2260b();

        void m2261c();
    }

    /* renamed from: android.support.v7.internal.widget.SpinnerCompat.a */
    private class ProGuard implements OnClickListener, ProGuard {
        final /* synthetic */ SpinnerCompat f1184a;
        private AlertDialog f1185b;
        private ListAdapter f1186c;
        private CharSequence f1187d;

        private ProGuard(SpinnerCompat spinnerCompat) {
            this.f1184a = spinnerCompat;
        }

        public void m2262a() {
            if (this.f1185b != null) {
                this.f1185b.dismiss();
                this.f1185b = null;
            }
        }

        public boolean m2265b() {
            return this.f1185b != null ? this.f1185b.isShowing() : false;
        }

        public void m2263a(ListAdapter listAdapter) {
            this.f1186c = listAdapter;
        }

        public void m2264a(CharSequence charSequence) {
            this.f1187d = charSequence;
        }

        public void m2266c() {
            if (this.f1186c != null) {
                Builder builder = new Builder(this.f1184a.getContext());
                if (this.f1187d != null) {
                    builder.setTitle(this.f1187d);
                }
                this.f1185b = builder.setSingleChoiceItems(this.f1186c, this.f1184a.getSelectedItemPosition(), this).create();
                this.f1185b.show();
            }
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            this.f1184a.setSelection(i);
            if (this.f1184a.s != null) {
                this.f1184a.m2141a(null, i, this.f1186c.getItemId(i));
            }
            m2262a();
        }
    }

    /* renamed from: android.support.v7.internal.widget.SpinnerCompat.b */
    private static class ProGuard implements ListAdapter, SpinnerAdapter {
        private SpinnerAdapter f1188a;
        private ListAdapter f1189b;

        public ProGuard(SpinnerAdapter spinnerAdapter) {
            this.f1188a = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                this.f1189b = (ListAdapter) spinnerAdapter;
            }
        }

        public int getCount() {
            return this.f1188a == null ? 0 : this.f1188a.getCount();
        }

        public Object getItem(int i) {
            return this.f1188a == null ? null : this.f1188a.getItem(i);
        }

        public long getItemId(int i) {
            return this.f1188a == null ? -1 : this.f1188a.getItemId(i);
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            return getDropDownView(i, view, viewGroup);
        }

        public View getDropDownView(int i, View view, ViewGroup viewGroup) {
            return this.f1188a == null ? null : this.f1188a.getDropDownView(i, view, viewGroup);
        }

        public boolean hasStableIds() {
            return this.f1188a != null && this.f1188a.hasStableIds();
        }

        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            if (this.f1188a != null) {
                this.f1188a.registerDataSetObserver(dataSetObserver);
            }
        }

        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            if (this.f1188a != null) {
                this.f1188a.unregisterDataSetObserver(dataSetObserver);
            }
        }

        public boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.f1189b;
            if (listAdapter != null) {
                return listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        public boolean isEnabled(int i) {
            ListAdapter listAdapter = this.f1189b;
            if (listAdapter != null) {
                return listAdapter.isEnabled(i);
            }
            return true;
        }

        public int getItemViewType(int i) {
            return 0;
        }

        public int getViewTypeCount() {
            return 1;
        }

        public boolean isEmpty() {
            return getCount() == 0;
        }
    }

    /* renamed from: android.support.v7.internal.widget.SpinnerCompat.c */
    private class ProGuard extends android.support.v7.widget.ProGuard implements ProGuard {
        final /* synthetic */ SpinnerCompat f1220a;
        private CharSequence f1221c;
        private ListAdapter f1222d;

        public ProGuard(SpinnerCompat spinnerCompat, Context context, AttributeSet attributeSet, int i) {
            this.f1220a = spinnerCompat;
            super(context, attributeSet, i);
            m2277a((View) spinnerCompat);
            m2281a(true);
            m2275a(0);
            m2278a(new ProGuard(this, spinnerCompat));
        }

        public void m2293a(ListAdapter listAdapter) {
            super.m2279a(listAdapter);
            this.f1222d = listAdapter;
        }

        public void m2294a(CharSequence charSequence) {
            this.f1221c = charSequence;
        }
    }

    public /* synthetic */ void setAdapter(Adapter adapter) {
        m2301a((SpinnerAdapter) adapter);
    }

    SpinnerCompat(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, -1);
    }

    SpinnerCompat(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i);
        this.f1229K = new Rect();
        ac a = ac.m2328a(context, attributeSet, android.support.v7.appcompat.ProGuard.styleable.Spinner, i, 0);
        if (a.m2343e(android.support.v7.appcompat.ProGuard.styleable.Spinner_android_background)) {
            setBackgroundDrawable(a.m2332a(android.support.v7.appcompat.ProGuard.styleable.Spinner_android_background));
        }
        if (i2 == -1) {
            i2 = a.m2331a(android.support.v7.appcompat.ProGuard.styleable.Spinner_spinnerMode, 0);
        }
        switch (i2) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_theme /*0*/:
                this.f1225G = new ProGuard();
                break;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                Object proGuard = new ProGuard(this, context, attributeSet, i);
                this.f1223E = a.m2342e(android.support.v7.appcompat.ProGuard.styleable.Spinner_android_dropDownWidth, -2);
                proGuard.m2276a(a.m2332a(android.support.v7.appcompat.ProGuard.styleable.Spinner_android_popupBackground));
                this.f1225G = proGuard;
                this.f1224F = new ProGuard(this, this, proGuard);
                break;
        }
        this.f1227I = a.m2331a(android.support.v7.appcompat.ProGuard.styleable.Spinner_android_gravity, 17);
        this.f1225G.m2259a(a.m2341d(android.support.v7.appcompat.ProGuard.styleable.Spinner_prompt));
        this.f1228J = a.m2333a(android.support.v7.appcompat.ProGuard.styleable.Spinner_disableChildrenWhenDisabled, false);
        a.m2336b();
        if (this.f1226H != null) {
            this.f1225G.m2258a(this.f1226H);
            this.f1226H = null;
        }
        this.f1230L = a.m2338c();
    }

    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (this.f1228J) {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                getChildAt(i).setEnabled(z);
            }
        }
    }

    public void m2301a(SpinnerAdapter spinnerAdapter) {
        super.m2155a(spinnerAdapter);
        this.i.m2133a();
        if (getContext().getApplicationInfo().targetSdkVersion >= 21 && spinnerAdapter != null && spinnerAdapter.getViewTypeCount() != 1) {
            throw new IllegalArgumentException("Spinner adapter view type count must be 1");
        } else if (this.f1225G != null) {
            this.f1225G.m2258a(new ProGuard(spinnerAdapter));
        } else {
            this.f1226H = new ProGuard(spinnerAdapter);
        }
    }

    public int getBaseline() {
        View view = null;
        if (getChildCount() > 0) {
            view = getChildAt(0);
        } else if (this.a != null && this.a.getCount() > 0) {
            view = m2297c(0, false);
            this.i.m2134a(0, view);
        }
        if (view == null) {
            return -1;
        }
        int baseline = view.getBaseline();
        if (baseline >= 0) {
            return view.getTop() + baseline;
        }
        return -1;
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f1225G != null && this.f1225G.m2260b()) {
            this.f1225G.m2257a();
        }
    }

    public void setOnItemClickListener(android.support.v7.internal.widget.ProGuard.ProGuard proGuard) {
        throw new RuntimeException("setOnItemClickListener cannot be used with a spinner.");
    }

    void m2300a(android.support.v7.internal.widget.ProGuard.ProGuard proGuard) {
        super.setOnItemClickListener(proGuard);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f1224F == null || !this.f1224F.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f1225G != null && MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
            setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), m2298a(m2158c(), getBackground())), MeasureSpec.getSize(i)), getMeasuredHeight());
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.q = true;
        m2299a(0, false);
        this.q = false;
    }

    void m2299a(int i, boolean z) {
        int i2 = this.h.left;
        int right = ((getRight() - getLeft()) - this.h.left) - this.h.right;
        if (this.u) {
            m2146g();
        }
        if (this.z == 0) {
            m2153a();
            return;
        }
        if (this.v >= 0) {
            setSelectedPositionInt(this.v);
        }
        m2157b();
        removeAllViewsInLayout();
        this.j = this.x;
        if (this.a != null) {
            View c = m2297c(this.x, true);
            int measuredWidth = c.getMeasuredWidth();
            switch (android.support.v4.view.ProGuard.m1269a(this.f1227I, ak.m1033e(this)) & 7) {
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                    i2 = (i2 + (right / 2)) - (measuredWidth / 2);
                    break;
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTint /*5*/:
                    i2 = (i2 + right) - measuredWidth;
                    break;
            }
            c.offsetLeftAndRight(i2);
        }
        this.i.m2133a();
        invalidate();
        m2147h();
        this.u = false;
        this.o = false;
        setNextSelectedPositionInt(this.x);
    }

    private View m2297c(int i, boolean z) {
        View a;
        if (!this.u) {
            a = this.i.m2132a(i);
            if (a != null) {
                m2296a(a, z);
                return a;
            }
        }
        a = this.a.getView(i, null, this);
        m2296a(a, z);
        return a;
    }

    private void m2296a(View view, boolean z) {
        LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = generateDefaultLayoutParams();
        }
        if (z) {
            addViewInLayout(view, 0, layoutParams);
        }
        view.setSelected(hasFocus());
        if (this.f1228J) {
            view.setEnabled(isEnabled());
        }
        view.measure(ViewGroup.getChildMeasureSpec(this.c, this.h.left + this.h.right, layoutParams.width), ViewGroup.getChildMeasureSpec(this.b, this.h.top + this.h.bottom, layoutParams.height));
        int measuredHeight = this.h.top + ((((getMeasuredHeight() - this.h.bottom) - this.h.top) - view.getMeasuredHeight()) / 2);
        view.layout(0, measuredHeight, view.getMeasuredWidth() + 0, view.getMeasuredHeight() + measuredHeight);
    }

    public boolean performClick() {
        boolean performClick = super.performClick();
        if (!performClick) {
            performClick = true;
            if (!this.f1225G.m2260b()) {
                this.f1225G.m2261c();
            }
        }
        return performClick;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        setSelection(i);
        dialogInterface.dismiss();
    }

    int m2298a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        if (spinnerAdapter == null) {
            return 0;
        }
        int makeMeasureSpec = MeasureSpec.makeMeasureSpec(0, 0);
        int makeMeasureSpec2 = MeasureSpec.makeMeasureSpec(0, 0);
        int max = Math.max(0, getSelectedItemPosition());
        int min = Math.min(spinnerAdapter.getCount(), max + 15);
        int max2 = Math.max(0, max - (15 - (min - max)));
        View view = null;
        int i = 0;
        max = 0;
        while (max2 < min) {
            View view2;
            int itemViewType = spinnerAdapter.getItemViewType(max2);
            if (itemViewType != max) {
                view2 = null;
            } else {
                itemViewType = max;
                view2 = view;
            }
            view = spinnerAdapter.getView(max2, view2, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new LayoutParams(-2, -2));
            }
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            i = Math.max(i, view.getMeasuredWidth());
            max2++;
            max = itemViewType;
        }
        if (drawable == null) {
            return i;
        }
        drawable.getPadding(this.f1229K);
        return (this.f1229K.left + this.f1229K.right) + i;
    }

    public Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        boolean z = this.f1225G != null && this.f1225G.m2260b();
        savedState.f1183c = z;
        return savedState;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (savedState.f1183c) {
            ViewTreeObserver viewTreeObserver = getViewTreeObserver();
            if (viewTreeObserver != null) {
                viewTreeObserver.addOnGlobalLayoutListener(new ProGuard(this));
            }
        }
    }
}
