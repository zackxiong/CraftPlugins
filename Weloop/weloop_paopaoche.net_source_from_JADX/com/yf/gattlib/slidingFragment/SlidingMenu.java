package com.yf.gattlib.slidingFragment;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.Log;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.WindowManager;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;

/* compiled from: ProGuard */
public class SlidingMenu extends RelativeLayout {
    private boolean f6435a;
    private ProGuard f6436b;
    private ProGuard f6437c;
    private ProGuard f6438d;
    private ProGuard f6439e;

    /* compiled from: ProGuard */
    public static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR;
        private final int f6434a;

        public SavedState(Parcelable parcelable, int i) {
            super(parcelable);
            this.f6434a = i;
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f6434a = parcel.readInt();
        }

        public int m8450a() {
            return this.f6434a;
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f6434a);
        }

        static {
            CREATOR = new ProGuard();
        }
    }

    /* renamed from: com.yf.gattlib.slidingFragment.SlidingMenu.a */
    public interface ProGuard {
        void m8451a(Canvas canvas, float f);
    }

    /* renamed from: com.yf.gattlib.slidingFragment.SlidingMenu.b */
    public interface ProGuard {
        void m8452a();
    }

    /* renamed from: com.yf.gattlib.slidingFragment.SlidingMenu.c */
    public interface ProGuard {
        void m8453a();
    }

    /* renamed from: com.yf.gattlib.slidingFragment.SlidingMenu.d */
    public interface ProGuard {
        void m8454a();
    }

    /* renamed from: com.yf.gattlib.slidingFragment.SlidingMenu.e */
    public interface ProGuard {
        void m8455a();
    }

    public void setContent(int i) {
        setContent(LayoutInflater.from(getContext()).inflate(i, null));
    }

    public void setContent(View view) {
        this.f6436b.setContent(view);
        m8458a();
    }

    public View getContent() {
        return this.f6436b.getContent();
    }

    public void setMenu(int i) {
        setMenu(LayoutInflater.from(getContext()).inflate(i, null));
    }

    public void setMenu(View view) {
        this.f6437c.setContent(view);
    }

    public View getMenu() {
        return this.f6437c.getContent();
    }

    public void setSecondaryMenu(int i) {
        setSecondaryMenu(LayoutInflater.from(getContext()).inflate(i, null));
    }

    public void setSecondaryMenu(View view) {
        this.f6437c.setSecondaryContent(view);
    }

    public View getSecondaryMenu() {
        return this.f6437c.getSecondaryContent();
    }

    public void setSlidingEnabled(boolean z) {
        this.f6436b.setSlidingEnabled(z);
    }

    public void setMode(int i) {
        if (i == 0 || i == 1 || i == 2) {
            this.f6437c.setMode(i);
            return;
        }
        throw new IllegalStateException("SlidingMenu mode must be LEFT, RIGHT, or LEFT_RIGHT");
    }

    public int getMode() {
        return this.f6437c.getMode();
    }

    public void setStatic(boolean z) {
        if (z) {
            setSlidingEnabled(false);
            this.f6436b.setCustomViewBehind(null);
            this.f6436b.setCurrentItem(1);
            return;
        }
        this.f6436b.setCurrentItem(1);
        this.f6436b.setCustomViewBehind(this.f6437c);
        setSlidingEnabled(true);
    }

    public void m8458a() {
        m8459a(true);
    }

    public void m8459a(boolean z) {
        this.f6436b.m8477a(1, z);
    }

    public int getBehindOffset() {
        return ((LayoutParams) this.f6437c.getLayoutParams()).rightMargin;
    }

    public void setBehindOffset(int i) {
        this.f6437c.setWidthOffset(i);
    }

    public void setBehindOffsetRes(int i) {
        setBehindOffset((int) getContext().getResources().getDimension(i));
    }

    public void setAboveOffset(int i) {
        this.f6436b.setAboveOffset(i);
    }

    public void setAboveOffsetRes(int i) {
        setAboveOffset((int) getContext().getResources().getDimension(i));
    }

    public void setBehindWidth(int i) {
        int i2;
        Display defaultDisplay = ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay();
        try {
            Class[] clsArr = new Class[]{Point.class};
            Point point = new Point();
            Display.class.getMethod("getSize", clsArr).invoke(defaultDisplay, new Object[]{point});
            i2 = point.x;
        } catch (Exception e) {
            i2 = defaultDisplay.getWidth();
        }
        setBehindOffset(i2 - i);
    }

    public void setBehindWidthRes(int i) {
        setBehindWidth((int) getContext().getResources().getDimension(i));
    }

    public float getBehindScrollScale() {
        return this.f6437c.getScrollScale();
    }

    public int getTouchmodeMarginThreshold() {
        return this.f6437c.getMarginThreshold();
    }

    public void setTouchmodeMarginThreshold(int i) {
        this.f6437c.setMarginThreshold(i);
    }

    public void setBehindScrollScale(float f) {
        if (f >= 0.0f || f <= 1.0f) {
            this.f6437c.setScrollScale(f);
            return;
        }
        throw new IllegalStateException("ScrollScale must be between 0 and 1");
    }

    public void setBehindCanvasTransformer(ProGuard proGuard) {
        this.f6437c.setCanvasTransformer(proGuard);
    }

    public int getTouchModeAbove() {
        return this.f6436b.getTouchMode();
    }

    public void setTouchModeAbove(int i) {
        if (i == 1 || i == 0 || i == 2) {
            this.f6436b.setTouchMode(i);
            return;
        }
        throw new IllegalStateException("TouchMode must be set to eitherTOUCHMODE_FULLSCREEN or TOUCHMODE_MARGIN or TOUCHMODE_NONE.");
    }

    public void setTouchModeBehind(int i) {
        if (i == 1 || i == 0 || i == 2) {
            this.f6437c.setTouchMode(i);
            return;
        }
        throw new IllegalStateException("TouchMode must be set to eitherTOUCHMODE_FULLSCREEN or TOUCHMODE_MARGIN or TOUCHMODE_NONE.");
    }

    public void setShadowDrawable(int i) {
        setShadowDrawable(getContext().getResources().getDrawable(i));
    }

    public void setShadowDrawable(Drawable drawable) {
        this.f6437c.setShadowDrawable(drawable);
    }

    public void setSecondaryShadowDrawable(int i) {
        setSecondaryShadowDrawable(getContext().getResources().getDrawable(i));
    }

    public void setSecondaryShadowDrawable(Drawable drawable) {
        this.f6437c.setSecondaryShadowDrawable(drawable);
    }

    public void setShadowWidthRes(int i) {
        setShadowWidth((int) getResources().getDimension(i));
    }

    public void setShadowWidth(int i) {
        this.f6437c.setShadowWidth(i);
    }

    public void setFadeEnabled(boolean z) {
        this.f6437c.setFadeEnabled(z);
    }

    public void setFadeDegree(float f) {
        this.f6437c.setFadeDegree(f);
    }

    public void setSelectorEnabled(boolean z) {
        this.f6437c.setSelectorEnabled(true);
    }

    public void setSelectedView(View view) {
        this.f6437c.setSelectedView(view);
    }

    public void setSelectorDrawable(int i) {
        this.f6437c.setSelectorBitmap(BitmapFactory.decodeResource(getResources(), i));
    }

    public void setSelectorBitmap(Bitmap bitmap) {
        this.f6437c.setSelectorBitmap(bitmap);
    }

    public void setOnOpenListener(ProGuard proGuard) {
        this.f6438d = proGuard;
    }

    public void setOnCloseListener(ProGuard proGuard) {
        this.f6439e = proGuard;
    }

    public void setOnOpenedListener(ProGuard proGuard) {
        this.f6436b.setOnOpenedListener(proGuard);
    }

    public void setOnClosedListener(ProGuard proGuard) {
        this.f6436b.setOnClosedListener(proGuard);
    }

    protected Parcelable onSaveInstanceState() {
        return new SavedState(super.onSaveInstanceState(), this.f6436b.getCurrentItem());
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f6436b.setCurrentItem(savedState.m8450a());
    }

    @SuppressLint({"NewApi"})
    protected boolean fitSystemWindows(Rect rect) {
        int i = rect.left;
        int i2 = rect.right;
        int i3 = rect.top;
        int i4 = rect.bottom;
        if (!this.f6435a) {
            Log.v("SlidingMenu", "setting padding!");
            setPadding(i, i3, i2, i4);
        }
        return true;
    }
}
