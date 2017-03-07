package com.yf.gattlib.http.afinal.bitmap.core;

import android.graphics.Bitmap;
import com.yf.gattlib.http.afinal.utils.Utils;

/* compiled from: ProGuard */
public class BaseMemoryCacheImpl implements IMemoryCache {
    private final LruMemoryCache<String, Bitmap> mMemoryCache;

    /* renamed from: com.yf.gattlib.http.afinal.bitmap.core.BaseMemoryCacheImpl.1 */
    class ProGuard extends LruMemoryCache<String, Bitmap> {
        ProGuard(int i) {
            super(i);
        }

        protected int sizeOf(String str, Bitmap bitmap) {
            return Utils.getBitmapSize(bitmap);
        }
    }

    public BaseMemoryCacheImpl(int i) {
        this.mMemoryCache = new ProGuard(i);
    }

    public void put(String str, Bitmap bitmap) {
        this.mMemoryCache.put(str, bitmap);
    }

    public Bitmap get(String str) {
        return (Bitmap) this.mMemoryCache.get(str);
    }

    public void evictAll() {
        this.mMemoryCache.evictAll();
    }

    public void remove(String str) {
        this.mMemoryCache.remove(str);
    }
}
