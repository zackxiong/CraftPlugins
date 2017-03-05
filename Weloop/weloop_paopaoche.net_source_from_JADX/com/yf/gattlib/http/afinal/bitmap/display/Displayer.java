package com.yf.gattlib.http.afinal.bitmap.display;

import android.graphics.Bitmap;
import android.view.View;
import com.yf.gattlib.http.afinal.bitmap.core.BitmapDisplayConfig;

/* compiled from: ProGuard */
public interface Displayer {
    void loadCompletedisplay(View view, Bitmap bitmap, BitmapDisplayConfig bitmapDisplayConfig);

    void loadFailDisplay(View view, Bitmap bitmap);
}
