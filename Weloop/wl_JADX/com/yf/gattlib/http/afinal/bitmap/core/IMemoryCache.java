package com.yf.gattlib.http.afinal.bitmap.core;

import android.graphics.Bitmap;

/* compiled from: ProGuard */
public interface IMemoryCache {
    void evictAll();

    Bitmap get(String str);

    void put(String str, Bitmap bitmap);

    void remove(String str);
}
