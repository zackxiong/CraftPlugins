package android.support.v7.internal.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;

/* compiled from: ProGuard */
public class TintImageView extends ImageView {
    private static final int[] f1231a;
    private final ab f1232b;

    static {
        f1231a = new int[]{16842964, 16843033};
    }

    public TintImageView(Context context) {
        this(context, null);
    }

    public TintImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TintImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        ac a = ac.m2328a(getContext(), attributeSet, f1231a, i, 0);
        if (a.m2330a() > 0) {
            if (a.m2343e(0)) {
                setBackgroundDrawable(a.m2332a(0));
            }
            if (a.m2343e(1)) {
                setImageDrawable(a.m2332a(1));
            }
        }
        a.m2336b();
        this.f1232b = a.m2338c();
    }

    public void setImageResource(int i) {
        setImageDrawable(this.f1232b.m2322a(i));
    }
}
