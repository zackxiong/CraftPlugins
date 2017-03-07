package com.yf.gattlib.http.afinal.bitmap.core;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Bitmap;
import com.yf.gattlib.http.afinal.bitmap.core.BytesBufferPool.BytesBuffer;
import com.yf.gattlib.http.afinal.bitmap.core.DiskCache.LookupRequest;
import com.yf.gattlib.http.afinal.utils.Utils;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

/* compiled from: ProGuard */
public class BitmapCache {
    private static final int DEFAULT_DISK_CACHE_COUNT = 10000;
    private static final boolean DEFAULT_DISK_CACHE_ENABLED = true;
    private static final int DEFAULT_DISK_CACHE_SIZE = 52428800;
    private static final boolean DEFAULT_MEM_CACHE_ENABLED = true;
    private static final int DEFAULT_MEM_CACHE_SIZE = 8388608;
    private ImageCacheParams mCacheParams;
    private DiskCache mDiskCache;
    private IMemoryCache mMemoryCache;

    /* compiled from: ProGuard */
    public static class ImageCacheParams {
        public int diskCacheCount;
        public File diskCacheDir;
        public boolean diskCacheEnabled;
        public int diskCacheSize;
        public int memCacheSize;
        public boolean memoryCacheEnabled;
        public boolean recycleImmediately;

        public ImageCacheParams(File file) {
            this.memCacheSize = BitmapCache.DEFAULT_MEM_CACHE_SIZE;
            this.diskCacheSize = BitmapCache.DEFAULT_DISK_CACHE_SIZE;
            this.diskCacheCount = BitmapCache.DEFAULT_DISK_CACHE_COUNT;
            this.memoryCacheEnabled = BitmapCache.DEFAULT_MEM_CACHE_ENABLED;
            this.diskCacheEnabled = BitmapCache.DEFAULT_MEM_CACHE_ENABLED;
            this.recycleImmediately = BitmapCache.DEFAULT_MEM_CACHE_ENABLED;
            this.diskCacheDir = file;
        }

        public ImageCacheParams(String str) {
            this.memCacheSize = BitmapCache.DEFAULT_MEM_CACHE_SIZE;
            this.diskCacheSize = BitmapCache.DEFAULT_DISK_CACHE_SIZE;
            this.diskCacheCount = BitmapCache.DEFAULT_DISK_CACHE_COUNT;
            this.memoryCacheEnabled = BitmapCache.DEFAULT_MEM_CACHE_ENABLED;
            this.diskCacheEnabled = BitmapCache.DEFAULT_MEM_CACHE_ENABLED;
            this.recycleImmediately = BitmapCache.DEFAULT_MEM_CACHE_ENABLED;
            this.diskCacheDir = new File(str);
        }

        public void setMemCacheSizePercent(Context context, float f) {
            if (f < 0.05f || f > 0.8f) {
                throw new IllegalArgumentException("setMemCacheSizePercent - percent must be between 0.05 and 0.8 (inclusive)");
            }
            this.memCacheSize = Math.round(((((float) getMemoryClass(context)) * f) * 1024.0f) * 1024.0f);
        }

        public void setMemCacheSize(int i) {
            this.memCacheSize = i;
        }

        public void setDiskCacheSize(int i) {
            this.diskCacheSize = i;
        }

        private static int getMemoryClass(Context context) {
            return ((ActivityManager) context.getSystemService("activity")).getMemoryClass();
        }

        public void setDiskCacheCount(int i) {
            this.diskCacheCount = i;
        }

        public void setRecycleImmediately(boolean z) {
            this.recycleImmediately = z;
        }
    }

    public BitmapCache(ImageCacheParams imageCacheParams) {
        init(imageCacheParams);
    }

    private void init(ImageCacheParams imageCacheParams) {
        this.mCacheParams = imageCacheParams;
        if (this.mCacheParams.memoryCacheEnabled) {
            if (this.mCacheParams.recycleImmediately) {
                this.mMemoryCache = new SoftMemoryCacheImpl(this.mCacheParams.memCacheSize);
            } else {
                this.mMemoryCache = new BaseMemoryCacheImpl(this.mCacheParams.memCacheSize);
            }
        }
        if (imageCacheParams.diskCacheEnabled) {
            try {
                this.mDiskCache = new DiskCache(this.mCacheParams.diskCacheDir.getAbsolutePath(), this.mCacheParams.diskCacheCount, this.mCacheParams.diskCacheSize, false);
            } catch (IOException e) {
            }
        }
    }

    public void addToMemoryCache(String str, Bitmap bitmap) {
        if (str != null && bitmap != null) {
            this.mMemoryCache.put(str, bitmap);
        }
    }

    public void addToDiskCache(String str, byte[] bArr) {
        if (this.mDiskCache != null && str != null && bArr != null) {
            byte[] makeKey = Utils.makeKey(str);
            long crc64Long = Utils.crc64Long(makeKey);
            ByteBuffer allocate = ByteBuffer.allocate(makeKey.length + bArr.length);
            allocate.put(makeKey);
            allocate.put(bArr);
            synchronized (this.mDiskCache) {
                try {
                    this.mDiskCache.insert(crc64Long, allocate.array());
                } catch (IOException e) {
                }
            }
        }
    }

    public boolean getImageData(String str, BytesBuffer bytesBuffer) {
        if (this.mDiskCache == null) {
            return false;
        }
        byte[] makeKey = Utils.makeKey(str);
        long crc64Long = Utils.crc64Long(makeKey);
        try {
            LookupRequest lookupRequest = new LookupRequest();
            lookupRequest.key = crc64Long;
            lookupRequest.buffer = bytesBuffer.data;
            synchronized (this.mDiskCache) {
                if (this.mDiskCache.lookup(lookupRequest)) {
                    if (!Utils.isSameKey(makeKey, lookupRequest.buffer)) {
                        return false;
                    }
                    bytesBuffer.data = lookupRequest.buffer;
                    bytesBuffer.offset = makeKey.length;
                    bytesBuffer.length = lookupRequest.length - bytesBuffer.offset;
                    return DEFAULT_MEM_CACHE_ENABLED;
                }
                return false;
            }
        } catch (IOException e) {
            return false;
        }
    }

    public Bitmap getBitmapFromMemoryCache(String str) {
        if (this.mMemoryCache != null) {
            return this.mMemoryCache.get(str);
        }
        return null;
    }

    public void clearCache() {
        clearMemoryCache();
        clearDiskCache();
    }

    public void clearDiskCache() {
        if (this.mDiskCache != null) {
            this.mDiskCache.delete();
        }
    }

    public void clearMemoryCache() {
        if (this.mMemoryCache != null) {
            this.mMemoryCache.evictAll();
        }
    }

    public void clearCache(String str) {
        clearMemoryCache(str);
        clearDiskCache(str);
    }

    public void clearDiskCache(String str) {
        addToDiskCache(str, new byte[0]);
    }

    public void clearMemoryCache(String str) {
        if (this.mMemoryCache != null) {
            this.mMemoryCache.remove(str);
        }
    }

    public void close() {
        if (this.mDiskCache != null) {
            this.mDiskCache.close();
        }
    }
}
