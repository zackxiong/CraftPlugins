package com.yf.gattlib.http.afinal.bitmap.core;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.yf.gattlib.http.afinal.bitmap.core.BytesBufferPool.BytesBuffer;
import com.yf.gattlib.http.afinal.bitmap.download.Downloader;

/* compiled from: ProGuard */
public class BitmapProcess {
    private static final int BYTESBUFFER_SIZE = 204800;
    private static final int BYTESBUFFE_POOL_SIZE = 4;
    private static final BytesBufferPool sMicroThumbBufferPool;
    private BitmapCache mCache;
    private Downloader mDownloader;

    static {
        sMicroThumbBufferPool = new BytesBufferPool(BYTESBUFFE_POOL_SIZE, BYTESBUFFER_SIZE);
    }

    public BitmapProcess(Downloader downloader, BitmapCache bitmapCache) {
        this.mDownloader = downloader;
        this.mCache = bitmapCache;
    }

    public Bitmap getBitmap(String str, BitmapDisplayConfig bitmapDisplayConfig) {
        Bitmap fromDisk = getFromDisk(str, bitmapDisplayConfig);
        if (fromDisk != null) {
            return fromDisk;
        }
        byte[] download = this.mDownloader.download(str);
        if (download == null || download.length <= 0) {
            return fromDisk;
        }
        if (bitmapDisplayConfig == null) {
            return BitmapFactory.decodeByteArray(download, 0, download.length);
        }
        fromDisk = BitmapDecoder.decodeSampledBitmapFromByteArray(download, 0, download.length, bitmapDisplayConfig.getBitmapWidth(), bitmapDisplayConfig.getBitmapHeight());
        this.mCache.addToDiskCache(str, download);
        return fromDisk;
    }

    public Bitmap getFromDisk(String str, BitmapDisplayConfig bitmapDisplayConfig) {
        BytesBuffer bytesBuffer = sMicroThumbBufferPool.get();
        Bitmap bitmap = null;
        try {
            if (this.mCache.getImageData(str, bytesBuffer) && bytesBuffer.length - bytesBuffer.offset > 0) {
                bitmap = bitmapDisplayConfig != null ? BitmapDecoder.decodeSampledBitmapFromByteArray(bytesBuffer.data, bytesBuffer.offset, bytesBuffer.length, bitmapDisplayConfig.getBitmapWidth(), bitmapDisplayConfig.getBitmapHeight()) : BitmapFactory.decodeByteArray(bytesBuffer.data, bytesBuffer.offset, bytesBuffer.length);
            }
            sMicroThumbBufferPool.recycle(bytesBuffer);
            return bitmap;
        } catch (Throwable th) {
            sMicroThumbBufferPool.recycle(bytesBuffer);
        }
    }
}
