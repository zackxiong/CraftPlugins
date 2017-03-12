package com.yf.gattlib.http.afinal.bitmap.core;

import android.graphics.Bitmap;
import java.lang.ref.SoftReference;
import java.util.HashMap;

/* compiled from: ProGuard */
public class SoftMemoryCacheImpl implements IMemoryCache {
    private final HashMap<String, SoftReference<Bitmap>> mMemoryCache;

    public SoftMemoryCacheImpl(int i) {
        this.mMemoryCache = new HashMap();
    }

    public void put(String str, Bitmap bitmap) {
        this.mMemoryCache.put(str, new SoftReference(bitmap));
    }

    public Bitmap get(String str) {
        SoftReference softReference = (SoftReference) this.mMemoryCache.get(str);
        if (softReference != null) {
            return (Bitmap) softReference.get();
        }
        return null;
    }

    public void evictAll() {
        this.mMemoryCache.clear();
    }

    public void remove(String str) {
        this.mMemoryCache.remove(str);
    }
}
