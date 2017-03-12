package com.dd.processbutton;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.view.View.BaseSavedState;

/* compiled from: ProGuard */
public abstract class ProcessButton extends ProGuard {
    private int f4931a;
    private int f4932b;
    private int f4933c;
    private Drawable f4934d;
    private Drawable f4935e;
    private Drawable f4936f;
    private CharSequence f4937g;
    private CharSequence f4938h;
    private CharSequence f4939i;

    /* compiled from: ProGuard */
    public static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR;
        private int f4928a;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f4928a = parcel.readInt();
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f4928a);
        }

        static {
            CREATOR = new ProGuard();
        }
    }

    public abstract void m6698a(Canvas canvas);

    public ProcessButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m6695a(context, attributeSet);
    }

    public ProcessButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m6695a(context, attributeSet);
    }

    public ProcessButton(Context context) {
        super(context);
        m6695a(context, null);
    }

    private void m6695a(Context context, AttributeSet attributeSet) {
        this.f4933c = 0;
        this.f4932b = 100;
        if (attributeSet != null) {
            m6696b(context, attributeSet);
        }
    }

    private void m6696b(Context context, AttributeSet attributeSet) {
        TypedArray a = m6694a(context, attributeSet, com.yf.ui.ProGuard.styleable.ProcessButton);
        if (a != null) {
            try {
                this.f4937g = a.getString(com.yf.ui.ProGuard.styleable.ProcessButton_pb_textProgress);
                this.f4938h = a.getString(com.yf.ui.ProGuard.styleable.ProcessButton_pb_textComplete);
                this.f4939i = a.getString(com.yf.ui.ProGuard.styleable.ProcessButton_pb_textError);
                this.f4934d = a.getDrawable(com.yf.ui.ProGuard.styleable.ProcessButton_pb_progressDrawable);
                this.f4935e = a.getDrawable(com.yf.ui.ProGuard.styleable.ProcessButton_pb_completeDrawable);
                this.f4936f = a.getDrawable(com.yf.ui.ProGuard.styleable.ProcessButton_pb_errorDrawable);
            } finally {
                a.recycle();
            }
        }
    }

    public void setProgress(int i) {
        this.f4931a = i;
        if (this.f4931a == this.f4933c) {
            m6701d();
        } else if (this.f4931a == this.f4932b) {
            m6700c();
        } else if (this.f4931a < this.f4933c) {
            m6697a();
        } else {
            m6699b();
        }
        invalidate();
    }

    protected void m6697a() {
        if (getErrorText() != null) {
            setText(getErrorText());
        }
        setBackgroundCompat(getErrorDrawable());
    }

    protected void m6699b() {
        if (getLoadingText() != null) {
            setText(getLoadingText());
        }
        setBackgroundCompat(getNormalDrawable());
    }

    protected void m6700c() {
        if (getCompleteText() != null) {
            setText(getCompleteText());
        }
        setBackgroundCompat(getCompleteDrawable());
    }

    protected void m6701d() {
        if (getNormalText() != null) {
            setText(getNormalText());
        }
        setBackgroundCompat(getNormalDrawable());
    }

    protected void onDraw(Canvas canvas) {
        if (this.f4931a > this.f4933c && this.f4931a < this.f4932b) {
            m6698a(canvas);
        }
        super.onDraw(canvas);
    }

    public int getProgress() {
        return this.f4931a;
    }

    public int getMaxProgress() {
        return this.f4932b;
    }

    public int getMinProgress() {
        return this.f4933c;
    }

    public Drawable getProgressDrawable() {
        return this.f4934d;
    }

    public Drawable getCompleteDrawable() {
        return this.f4935e;
    }

    public CharSequence getLoadingText() {
        return this.f4937g;
    }

    public CharSequence getCompleteText() {
        return this.f4938h;
    }

    public void setProgressDrawable(GradientDrawable gradientDrawable) {
        this.f4934d = gradientDrawable;
    }

    public void setCompleteDrawable(GradientDrawable gradientDrawable) {
        this.f4935e = gradientDrawable;
    }

    public void setLoadingText(CharSequence charSequence) {
        this.f4937g = charSequence;
    }

    public void setCompleteText(CharSequence charSequence) {
        this.f4938h = charSequence;
    }

    public Drawable getErrorDrawable() {
        return this.f4936f;
    }

    public void setErrorDrawable(GradientDrawable gradientDrawable) {
        this.f4936f = gradientDrawable;
    }

    public CharSequence getErrorText() {
        return this.f4939i;
    }

    public void setErrorText(CharSequence charSequence) {
        this.f4939i = charSequence;
    }

    public Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        savedState.f4928a = this.f4931a;
        return savedState;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.f4931a = savedState.f4928a;
            super.onRestoreInstanceState(savedState.getSuperState());
            setProgress(this.f4931a);
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }
}
