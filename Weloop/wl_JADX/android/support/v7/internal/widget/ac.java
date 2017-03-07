package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;

/* compiled from: ProGuard */
public class ac {
    private final Context f1257a;
    private final TypedArray f1258b;
    private ab f1259c;

    public static ac m2327a(Context context, AttributeSet attributeSet, int[] iArr) {
        return new ac(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    public static ac m2328a(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2) {
        return new ac(context, context.obtainStyledAttributes(attributeSet, iArr, i, i2));
    }

    private ac(Context context, TypedArray typedArray) {
        this.f1257a = context;
        this.f1258b = typedArray;
    }

    public Drawable m2332a(int i) {
        if (this.f1258b.hasValue(i)) {
            int resourceId = this.f1258b.getResourceId(i, 0);
            if (resourceId != 0) {
                return m2338c().m2322a(resourceId);
            }
        }
        return this.f1258b.getDrawable(i);
    }

    public Drawable m2335b(int i) {
        if (this.f1258b.hasValue(i)) {
            int resourceId = this.f1258b.getResourceId(i, 0);
            if (resourceId != 0) {
                return m2338c().m2323a(resourceId, true);
            }
        }
        return null;
    }

    public int m2330a() {
        return this.f1258b.length();
    }

    public CharSequence m2339c(int i) {
        return this.f1258b.getText(i);
    }

    public String m2341d(int i) {
        return this.f1258b.getString(i);
    }

    public boolean m2333a(int i, boolean z) {
        return this.f1258b.getBoolean(i, z);
    }

    public int m2331a(int i, int i2) {
        return this.f1258b.getInt(i, i2);
    }

    public float m2329a(int i, float f) {
        return this.f1258b.getFloat(i, f);
    }

    public int m2334b(int i, int i2) {
        return this.f1258b.getInteger(i, i2);
    }

    public int m2337c(int i, int i2) {
        return this.f1258b.getDimensionPixelOffset(i, i2);
    }

    public int m2340d(int i, int i2) {
        return this.f1258b.getDimensionPixelSize(i, i2);
    }

    public int m2342e(int i, int i2) {
        return this.f1258b.getLayoutDimension(i, i2);
    }

    public int m2344f(int i, int i2) {
        return this.f1258b.getResourceId(i, i2);
    }

    public boolean m2343e(int i) {
        return this.f1258b.hasValue(i);
    }

    public void m2336b() {
        this.f1258b.recycle();
    }

    public ab m2338c() {
        if (this.f1259c == null) {
            this.f1259c = ab.m2311a(this.f1257a);
        }
        return this.f1259c;
    }
}
