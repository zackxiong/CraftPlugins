package com.yf.lib.ui;

import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.style.TypefaceSpan;

/* compiled from: ProGuard */
public class CustomTypefaceSpan extends TypefaceSpan {
    private final Typeface f6770a;

    public void updateDrawState(TextPaint textPaint) {
        m8630a(textPaint, this.f6770a);
    }

    public void updateMeasureState(TextPaint textPaint) {
        m8630a(textPaint, this.f6770a);
    }

    private static void m8630a(Paint paint, Typeface typeface) {
        int i;
        Typeface typeface2 = paint.getTypeface();
        if (typeface2 == null) {
            i = 0;
        } else {
            i = typeface2.getStyle();
        }
        i &= typeface.getStyle() ^ -1;
        if ((i & 1) != 0) {
            paint.setFakeBoldText(true);
        }
        if ((i & 2) != 0) {
            paint.setTextSkewX(-0.25f);
        }
        paint.setTypeface(typeface);
    }
}
