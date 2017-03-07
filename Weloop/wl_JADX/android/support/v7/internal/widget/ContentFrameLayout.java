package android.support.v7.internal.widget;

import android.content.Context;
import android.graphics.Rect;
import android.support.v4.view.ak;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View.MeasureSpec;
import android.widget.FrameLayout;

/* compiled from: ProGuard */
public class ContentFrameLayout extends FrameLayout {
    private TypedValue f1173a;
    private TypedValue f1174b;
    private TypedValue f1175c;
    private TypedValue f1176d;
    private TypedValue f1177e;
    private TypedValue f1178f;
    private final Rect f1179g;

    public ContentFrameLayout(Context context) {
        this(context, null);
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1179g = new Rect();
    }

    public void m2255a(Rect rect) {
        fitSystemWindows(rect);
    }

    public void m2254a(int i, int i2, int i3, int i4) {
        this.f1179g.set(i, i2, i3, i4);
        if (ak.m1045p(this)) {
            requestLayout();
        }
    }

    protected void onMeasure(int i, int i2) {
        TypedValue typedValue;
        int dimension;
        Object obj;
        TypedValue typedValue2;
        int dimension2;
        Object obj2 = null;
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        Object obj3 = displayMetrics.widthPixels < displayMetrics.heightPixels ? 1 : null;
        int mode = MeasureSpec.getMode(i);
        int mode2 = MeasureSpec.getMode(i2);
        if (mode == Integer.MIN_VALUE) {
            typedValue = obj3 != null ? this.f1176d : this.f1175c;
            if (!(typedValue == null || typedValue.type == 0)) {
                if (typedValue.type == 5) {
                    dimension = (int) typedValue.getDimension(displayMetrics);
                } else if (typedValue.type == 6) {
                    dimension = (int) typedValue.getFraction((float) displayMetrics.widthPixels, (float) displayMetrics.widthPixels);
                } else {
                    dimension = 0;
                }
                if (dimension > 0) {
                    i = MeasureSpec.makeMeasureSpec(Math.min(dimension - (this.f1179g.left + this.f1179g.right), MeasureSpec.getSize(i)), 1073741824);
                    obj = 1;
                    if (mode2 == Integer.MIN_VALUE) {
                        typedValue = obj3 == null ? this.f1177e : this.f1178f;
                        if (!(typedValue == null || typedValue.type == 0)) {
                            if (typedValue.type == 5) {
                                dimension = (int) typedValue.getDimension(displayMetrics);
                            } else if (typedValue.type != 6) {
                                dimension = (int) typedValue.getFraction((float) displayMetrics.heightPixels, (float) displayMetrics.heightPixels);
                            } else {
                                dimension = 0;
                            }
                            if (dimension > 0) {
                                i2 = MeasureSpec.makeMeasureSpec(Math.min(dimension - (this.f1179g.top + this.f1179g.bottom), MeasureSpec.getSize(i2)), 1073741824);
                            }
                        }
                    }
                    super.onMeasure(i, i2);
                    mode2 = getMeasuredWidth();
                    dimension = MeasureSpec.makeMeasureSpec(mode2, 1073741824);
                    if (obj == null && mode == Integer.MIN_VALUE) {
                        typedValue2 = obj3 == null ? this.f1174b : this.f1173a;
                        if (!(typedValue2 == null || typedValue2.type == 0)) {
                            dimension2 = typedValue2.type != 5 ? (int) typedValue2.getDimension(displayMetrics) : typedValue2.type != 6 ? (int) typedValue2.getFraction((float) displayMetrics.widthPixels, (float) displayMetrics.widthPixels) : 0;
                            if (dimension2 > 0) {
                                dimension2 -= this.f1179g.left + this.f1179g.right;
                            }
                            if (mode2 < dimension2) {
                                dimension2 = MeasureSpec.makeMeasureSpec(dimension2, 1073741824);
                                obj2 = 1;
                                if (obj2 == null) {
                                    super.onMeasure(dimension2, i2);
                                }
                            }
                        }
                    }
                    dimension2 = dimension;
                    if (obj2 == null) {
                        super.onMeasure(dimension2, i2);
                    }
                }
            }
        }
        obj = null;
        if (mode2 == Integer.MIN_VALUE) {
            if (obj3 == null) {
            }
            if (typedValue.type == 5) {
                dimension = (int) typedValue.getDimension(displayMetrics);
            } else if (typedValue.type != 6) {
                dimension = 0;
            } else {
                dimension = (int) typedValue.getFraction((float) displayMetrics.heightPixels, (float) displayMetrics.heightPixels);
            }
            if (dimension > 0) {
                i2 = MeasureSpec.makeMeasureSpec(Math.min(dimension - (this.f1179g.top + this.f1179g.bottom), MeasureSpec.getSize(i2)), 1073741824);
            }
        }
        super.onMeasure(i, i2);
        mode2 = getMeasuredWidth();
        dimension = MeasureSpec.makeMeasureSpec(mode2, 1073741824);
        if (obj3 == null) {
        }
        if (typedValue2.type != 5) {
            if (typedValue2.type != 6) {
            }
        }
        if (dimension2 > 0) {
            dimension2 -= this.f1179g.left + this.f1179g.right;
        }
        if (mode2 < dimension2) {
            dimension2 = MeasureSpec.makeMeasureSpec(dimension2, 1073741824);
            obj2 = 1;
            if (obj2 == null) {
                super.onMeasure(dimension2, i2);
            }
        }
        dimension2 = dimension;
        if (obj2 == null) {
            super.onMeasure(dimension2, i2);
        }
    }

    public TypedValue getMinWidthMajor() {
        if (this.f1173a == null) {
            this.f1173a = new TypedValue();
        }
        return this.f1173a;
    }

    public TypedValue getMinWidthMinor() {
        if (this.f1174b == null) {
            this.f1174b = new TypedValue();
        }
        return this.f1174b;
    }

    public TypedValue getFixedWidthMajor() {
        if (this.f1175c == null) {
            this.f1175c = new TypedValue();
        }
        return this.f1175c;
    }

    public TypedValue getFixedWidthMinor() {
        if (this.f1176d == null) {
            this.f1176d = new TypedValue();
        }
        return this.f1176d;
    }

    public TypedValue getFixedHeightMajor() {
        if (this.f1177e == null) {
            this.f1177e = new TypedValue();
        }
        return this.f1177e;
    }

    public TypedValue getFixedHeightMinor() {
        if (this.f1178f == null) {
            this.f1178f = new TypedValue();
        }
        return this.f1178f;
    }
}
