package com.yf.gattlib.http.afinal;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import com.baidu.location.C0483U.C0481b;
import com.yf.gattlib.http.afinal.bitmap.core.BitmapCache;
import com.yf.gattlib.http.afinal.bitmap.core.BitmapCache.ImageCacheParams;
import com.yf.gattlib.http.afinal.bitmap.core.BitmapDisplayConfig;
import com.yf.gattlib.http.afinal.bitmap.core.BitmapProcess;
import com.yf.gattlib.http.afinal.bitmap.display.Displayer;
import com.yf.gattlib.http.afinal.bitmap.display.SimpleDisplayer;
import com.yf.gattlib.http.afinal.bitmap.download.Downloader;
import com.yf.gattlib.http.afinal.bitmap.download.SimpleDownloader;
import com.yf.gattlib.http.afinal.core.AsyncTask;
import com.yf.gattlib.http.afinal.utils.Utils;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* compiled from: ProGuard */
public class FinalBitmap {
    private static FinalBitmap mFinalBitmap;
    private ExecutorService bitmapLoadAndDisplayExecutor;
    private HashMap<String, BitmapDisplayConfig> configMap;
    private BitmapProcess mBitmapProcess;
    private FinalBitmapConfig mConfig;
    private Context mContext;
    private boolean mExitTasksEarly;
    private BitmapCache mImageCache;
    private boolean mInit;
    private boolean mPauseWork;
    private final Object mPauseWorkLock;

    /* renamed from: com.yf.gattlib.http.afinal.FinalBitmap.1 */
    class ProGuard implements ThreadFactory {
        ProGuard() {
        }

        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setPriority(4);
            return thread;
        }
    }

    /* compiled from: ProGuard */
    private static class AsyncDrawable extends BitmapDrawable {
        private final WeakReference<BitmapLoadAndDisplayTask> bitmapWorkerTaskReference;

        public AsyncDrawable(Resources resources, Bitmap bitmap, BitmapLoadAndDisplayTask bitmapLoadAndDisplayTask) {
            super(resources, bitmap);
            this.bitmapWorkerTaskReference = new WeakReference(bitmapLoadAndDisplayTask);
        }

        public BitmapLoadAndDisplayTask getBitmapWorkerTask() {
            return (BitmapLoadAndDisplayTask) this.bitmapWorkerTaskReference.get();
        }
    }

    /* compiled from: ProGuard */
    private class BitmapLoadAndDisplayTask extends AsyncTask<Object, Void, Bitmap> {
        private Object data;
        private final BitmapDisplayConfig displayConfig;
        private final WeakReference<View> imageViewReference;
        boolean isCircle;

        public BitmapLoadAndDisplayTask(View view, BitmapDisplayConfig bitmapDisplayConfig, boolean z) {
            this.isCircle = false;
            this.imageViewReference = new WeakReference(view);
            this.displayConfig = bitmapDisplayConfig;
            this.isCircle = z;
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        protected android.graphics.Bitmap doInBackground(java.lang.Object... r5) {
            /*
            r4 = this;
            r0 = 0;
            r0 = r5[r0];
            r4.data = r0;
            r0 = r4.data;
            r1 = java.lang.String.valueOf(r0);
            r0 = 0;
            r2 = com.yf.gattlib.http.afinal.FinalBitmap.this;
            r2 = r2.mPauseWorkLock;
            monitor-enter(r2);
        L_0x0013:
            r3 = com.yf.gattlib.http.afinal.FinalBitmap.this;	 Catch:{ all -> 0x0066 }
            r3 = r3.mPauseWork;	 Catch:{ all -> 0x0066 }
            if (r3 == 0) goto L_0x002d;
        L_0x001b:
            r3 = r4.isCancelled();	 Catch:{ all -> 0x0066 }
            if (r3 != 0) goto L_0x002d;
        L_0x0021:
            r3 = com.yf.gattlib.http.afinal.FinalBitmap.this;	 Catch:{ InterruptedException -> 0x002b }
            r3 = r3.mPauseWorkLock;	 Catch:{ InterruptedException -> 0x002b }
            r3.wait();	 Catch:{ InterruptedException -> 0x002b }
            goto L_0x0013;
        L_0x002b:
            r3 = move-exception;
            goto L_0x0013;
        L_0x002d:
            monitor-exit(r2);	 Catch:{ all -> 0x0066 }
            if (r0 != 0) goto L_0x004c;
        L_0x0030:
            r2 = r4.isCancelled();
            if (r2 != 0) goto L_0x004c;
        L_0x0036:
            r2 = r4.getAttachedImageView();
            if (r2 == 0) goto L_0x004c;
        L_0x003c:
            r2 = com.yf.gattlib.http.afinal.FinalBitmap.this;
            r2 = r2.mExitTasksEarly;
            if (r2 != 0) goto L_0x004c;
        L_0x0044:
            r0 = com.yf.gattlib.http.afinal.FinalBitmap.this;
            r2 = r4.displayConfig;
            r0 = r0.processBitmap(r1, r2);
        L_0x004c:
            if (r0 == 0) goto L_0x0065;
        L_0x004e:
            r2 = r4.getAttachedImageView();
            r3 = r4.isCircle;
            if (r3 == 0) goto L_0x005c;
        L_0x0056:
            r3 = com.yf.gattlib.http.afinal.FinalBitmap.this;
            r0 = r3.createCircleImage(r0, r2);
        L_0x005c:
            r2 = com.yf.gattlib.http.afinal.FinalBitmap.this;
            r2 = r2.mImageCache;
            r2.addToMemoryCache(r1, r0);
        L_0x0065:
            return r0;
        L_0x0066:
            r0 = move-exception;
            monitor-exit(r2);	 Catch:{ all -> 0x0066 }
            throw r0;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.yf.gattlib.http.afinal.FinalBitmap.BitmapLoadAndDisplayTask.doInBackground(java.lang.Object[]):android.graphics.Bitmap");
        }

        protected void onPostExecute(Bitmap bitmap) {
            if (isCancelled() || FinalBitmap.this.mExitTasksEarly) {
                bitmap = null;
            }
            View attachedImageView = getAttachedImageView();
            if (bitmap != null && attachedImageView != null) {
                if (this.isCircle) {
                    bitmap = FinalBitmap.this.createCircleImage(bitmap, attachedImageView);
                }
                FinalBitmap.this.mConfig.displayer.loadCompletedisplay(attachedImageView, bitmap, this.displayConfig);
            } else if (bitmap == null && attachedImageView != null) {
                FinalBitmap.this.mConfig.displayer.loadFailDisplay(attachedImageView, this.displayConfig.getLoadfailBitmap());
            }
        }

        protected void onCancelled(Bitmap bitmap) {
            super.onCancelled(bitmap);
            synchronized (FinalBitmap.this.mPauseWorkLock) {
                FinalBitmap.this.mPauseWorkLock.notifyAll();
            }
        }

        private View getAttachedImageView() {
            View view = (View) this.imageViewReference.get();
            return this == FinalBitmap.getBitmapTaskFromImageView(view) ? view : null;
        }
    }

    /* compiled from: ProGuard */
    private class CacheExecutecTask extends AsyncTask<Object, Void, Void> {
        public static final int MESSAGE_CLEAR = 1;
        public static final int MESSAGE_CLEAR_DISK = 3;
        public static final int MESSAGE_CLEAR_KEY = 4;
        public static final int MESSAGE_CLEAR_KEY_IN_DISK = 5;
        public static final int MESSAGE_CLOSE = 2;

        private CacheExecutecTask() {
        }

        protected Void doInBackground(Object... objArr) {
            switch (((Integer) objArr[0]).intValue()) {
                case MESSAGE_CLEAR /*1*/:
                    FinalBitmap.this.clearCacheInternalInBackgroud();
                    break;
                case MESSAGE_CLOSE /*2*/:
                    FinalBitmap.this.closeCacheInternalInBackgroud();
                    break;
                case MESSAGE_CLEAR_DISK /*3*/:
                    FinalBitmap.this.clearDiskCacheInBackgroud();
                    break;
                case MESSAGE_CLEAR_KEY /*4*/:
                    FinalBitmap.this.clearCacheInBackgroud(String.valueOf(objArr[MESSAGE_CLEAR]));
                    break;
                case MESSAGE_CLEAR_KEY_IN_DISK /*5*/:
                    FinalBitmap.this.clearDiskCacheInBackgroud(String.valueOf(objArr[MESSAGE_CLEAR]));
                    break;
            }
            return null;
        }
    }

    /* compiled from: ProGuard */
    private class FinalBitmapConfig {
        public String cachePath;
        public BitmapDisplayConfig defaultDisplayConfig;
        public int diskCacheSize;
        public Displayer displayer;
        public Downloader downloader;
        public int memCacheSize;
        public float memCacheSizePercent;
        public int poolSize;
        public boolean recycleImmediately;

        public FinalBitmapConfig(Context context) {
            this.poolSize = 3;
            this.recycleImmediately = true;
            this.defaultDisplayConfig = new BitmapDisplayConfig();
            this.defaultDisplayConfig.setAnimation(null);
            this.defaultDisplayConfig.setAnimationType(1);
            int floor = (int) Math.floor((double) (context.getResources().getDisplayMetrics().widthPixels / 2));
            this.defaultDisplayConfig.setBitmapHeight(floor);
            this.defaultDisplayConfig.setBitmapWidth(floor);
        }
    }

    public FinalBitmap(Context context) {
        this.mExitTasksEarly = false;
        this.mPauseWork = false;
        this.mPauseWorkLock = new Object();
        this.mInit = false;
        this.configMap = new HashMap();
        this.mContext = context;
        this.mConfig = new FinalBitmapConfig(context);
        configDiskCachePath(Utils.getDiskCacheDir(context, "afinalCache").getAbsolutePath());
        configDisplayer(new SimpleDisplayer());
        configDownlader(new SimpleDownloader());
    }

    public static synchronized FinalBitmap create(Context context) {
        FinalBitmap finalBitmap;
        synchronized (FinalBitmap.class) {
            if (mFinalBitmap == null) {
                mFinalBitmap = new FinalBitmap(context.getApplicationContext());
            }
            finalBitmap = mFinalBitmap;
        }
        return finalBitmap;
    }

    public FinalBitmap configLoadingImage(Bitmap bitmap) {
        this.mConfig.defaultDisplayConfig.setLoadingBitmap(bitmap);
        return this;
    }

    public FinalBitmap configLoadingImage(int i) {
        this.mConfig.defaultDisplayConfig.setLoadingBitmap(BitmapFactory.decodeResource(this.mContext.getResources(), i));
        return this;
    }

    public FinalBitmap configLoadfailImage(Bitmap bitmap) {
        this.mConfig.defaultDisplayConfig.setLoadfailBitmap(bitmap);
        return this;
    }

    public FinalBitmap configLoadfailImage(int i) {
        this.mConfig.defaultDisplayConfig.setLoadfailBitmap(BitmapFactory.decodeResource(this.mContext.getResources(), i));
        return this;
    }

    public FinalBitmap configBitmapMaxHeight(int i) {
        this.mConfig.defaultDisplayConfig.setBitmapHeight(i);
        return this;
    }

    public FinalBitmap configBitmapMaxWidth(int i) {
        this.mConfig.defaultDisplayConfig.setBitmapWidth(i);
        return this;
    }

    public FinalBitmap configDownlader(Downloader downloader) {
        this.mConfig.downloader = downloader;
        return this;
    }

    public FinalBitmap configDisplayer(Displayer displayer) {
        this.mConfig.displayer = displayer;
        return this;
    }

    public FinalBitmap configDiskCachePath(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.mConfig.cachePath = str;
        }
        return this;
    }

    public FinalBitmap configMemoryCacheSize(int i) {
        this.mConfig.memCacheSize = i;
        return this;
    }

    public FinalBitmap configMemoryCachePercent(float f) {
        this.mConfig.memCacheSizePercent = f;
        return this;
    }

    public FinalBitmap configDiskCacheSize(int i) {
        this.mConfig.diskCacheSize = i;
        return this;
    }

    public FinalBitmap configBitmapLoadThreadSize(int i) {
        if (i >= 1) {
            this.mConfig.poolSize = i;
        }
        return this;
    }

    public FinalBitmap configRecycleImmediately(boolean z) {
        this.mConfig.recycleImmediately = z;
        return this;
    }

    private FinalBitmap init() {
        if (!this.mInit) {
            ImageCacheParams imageCacheParams = new ImageCacheParams(this.mConfig.cachePath);
            if (((double) this.mConfig.memCacheSizePercent) > 0.05d && ((double) this.mConfig.memCacheSizePercent) < C0481b.f3950do) {
                imageCacheParams.setMemCacheSizePercent(this.mContext, this.mConfig.memCacheSizePercent);
            } else if (this.mConfig.memCacheSize > 2097152) {
                imageCacheParams.setMemCacheSize(this.mConfig.memCacheSize);
            } else {
                imageCacheParams.setMemCacheSizePercent(this.mContext, 0.3f);
            }
            if (this.mConfig.diskCacheSize > 5242880) {
                imageCacheParams.setDiskCacheSize(this.mConfig.diskCacheSize);
            }
            imageCacheParams.setRecycleImmediately(this.mConfig.recycleImmediately);
            this.mImageCache = new BitmapCache(imageCacheParams);
            this.bitmapLoadAndDisplayExecutor = Executors.newFixedThreadPool(this.mConfig.poolSize, new ProGuard());
            this.mBitmapProcess = new BitmapProcess(this.mConfig.downloader, this.mImageCache);
            this.mInit = true;
        }
        return this;
    }

    public void display(ImageView imageView, String str, boolean z) {
        doDisplay(imageView, str, null, z);
    }

    public void display(ImageView imageView, String str, int i, int i2, boolean z) {
        BitmapDisplayConfig bitmapDisplayConfig = (BitmapDisplayConfig) this.configMap.get(i + "_" + i2);
        if (bitmapDisplayConfig == null) {
            bitmapDisplayConfig = getDisplayConfig();
            bitmapDisplayConfig.setBitmapHeight(i2);
            bitmapDisplayConfig.setBitmapWidth(i);
            this.configMap.put(i + "_" + i2, bitmapDisplayConfig);
        }
        doDisplay(imageView, str, bitmapDisplayConfig, z);
    }

    public void display(ImageView imageView, String str, Bitmap bitmap, boolean z) {
        BitmapDisplayConfig bitmapDisplayConfig = (BitmapDisplayConfig) this.configMap.get(String.valueOf(bitmap));
        if (bitmapDisplayConfig == null) {
            bitmapDisplayConfig = getDisplayConfig();
            bitmapDisplayConfig.setLoadingBitmap(bitmap);
            this.configMap.put(String.valueOf(bitmap), bitmapDisplayConfig);
        }
        doDisplay(imageView, str, bitmapDisplayConfig, z);
    }

    public void display(ImageView imageView, String str, Bitmap bitmap, Bitmap bitmap2, boolean z) {
        BitmapDisplayConfig bitmapDisplayConfig = (BitmapDisplayConfig) this.configMap.get(String.valueOf(bitmap) + "_" + String.valueOf(bitmap2));
        if (bitmapDisplayConfig == null) {
            bitmapDisplayConfig = getDisplayConfig();
            bitmapDisplayConfig.setLoadingBitmap(bitmap);
            bitmapDisplayConfig.setLoadfailBitmap(bitmap2);
            this.configMap.put(String.valueOf(bitmap) + "_" + String.valueOf(bitmap2), bitmapDisplayConfig);
        }
        doDisplay(imageView, str, bitmapDisplayConfig, z);
    }

    public void display(ImageView imageView, String str, int i, int i2, Bitmap bitmap, Bitmap bitmap2, boolean z) {
        BitmapDisplayConfig bitmapDisplayConfig = (BitmapDisplayConfig) this.configMap.get(i + "_" + i2 + "_" + String.valueOf(bitmap) + "_" + String.valueOf(bitmap2));
        if (bitmapDisplayConfig == null) {
            bitmapDisplayConfig = getDisplayConfig();
            bitmapDisplayConfig.setBitmapHeight(i2);
            bitmapDisplayConfig.setBitmapWidth(i);
            bitmapDisplayConfig.setLoadingBitmap(bitmap);
            bitmapDisplayConfig.setLoadfailBitmap(bitmap2);
            this.configMap.put(i + "_" + i2 + "_" + String.valueOf(bitmap) + "_" + String.valueOf(bitmap2), bitmapDisplayConfig);
        }
        doDisplay(imageView, str, bitmapDisplayConfig, z);
    }

    public void display(ImageView imageView, String str, BitmapDisplayConfig bitmapDisplayConfig, boolean z) {
        doDisplay(imageView, str, bitmapDisplayConfig, z);
    }

    private void doDisplay(ImageView imageView, String str, BitmapDisplayConfig bitmapDisplayConfig, boolean z) {
        if (imageView != null) {
            imageView.setScaleType(ScaleType.FIT_XY);
        }
        if (!this.mInit) {
            init();
        }
        if (!TextUtils.isEmpty(str) && imageView != null) {
            if (bitmapDisplayConfig == null) {
                bitmapDisplayConfig = this.mConfig.defaultDisplayConfig;
            }
            Bitmap bitmap = null;
            if (this.mImageCache != null) {
                bitmap = this.mImageCache.getBitmapFromMemoryCache(str);
            }
            if (bitmap != null) {
                if (imageView instanceof ImageView) {
                    imageView.setImageBitmap(bitmap);
                } else {
                    imageView.setBackgroundDrawable(new BitmapDrawable(bitmap));
                }
            } else if (checkImageTask(str, imageView)) {
                BitmapLoadAndDisplayTask bitmapLoadAndDisplayTask = new BitmapLoadAndDisplayTask(imageView, bitmapDisplayConfig, z);
                Drawable asyncDrawable = new AsyncDrawable(this.mContext.getResources(), bitmapDisplayConfig.getLoadingBitmap(), bitmapLoadAndDisplayTask);
                if (imageView instanceof ImageView) {
                    imageView.setImageDrawable(asyncDrawable);
                } else {
                    imageView.setBackgroundDrawable(asyncDrawable);
                }
                bitmapLoadAndDisplayTask.executeOnExecutor(this.bitmapLoadAndDisplayExecutor, str);
            }
        }
    }

    private BitmapDisplayConfig getDisplayConfig() {
        BitmapDisplayConfig bitmapDisplayConfig = new BitmapDisplayConfig();
        bitmapDisplayConfig.setAnimation(this.mConfig.defaultDisplayConfig.getAnimation());
        bitmapDisplayConfig.setAnimationType(this.mConfig.defaultDisplayConfig.getAnimationType());
        bitmapDisplayConfig.setBitmapHeight(this.mConfig.defaultDisplayConfig.getBitmapHeight());
        bitmapDisplayConfig.setBitmapWidth(this.mConfig.defaultDisplayConfig.getBitmapWidth());
        bitmapDisplayConfig.setLoadfailBitmap(this.mConfig.defaultDisplayConfig.getLoadfailBitmap());
        bitmapDisplayConfig.setLoadingBitmap(this.mConfig.defaultDisplayConfig.getLoadingBitmap());
        return bitmapDisplayConfig;
    }

    private void clearCacheInternalInBackgroud() {
        if (this.mImageCache != null) {
            this.mImageCache.clearCache();
        }
    }

    private void clearDiskCacheInBackgroud() {
        if (this.mImageCache != null) {
            this.mImageCache.clearDiskCache();
        }
    }

    private void clearCacheInBackgroud(String str) {
        if (this.mImageCache != null) {
            this.mImageCache.clearCache(str);
        }
    }

    private void clearDiskCacheInBackgroud(String str) {
        if (this.mImageCache != null) {
            this.mImageCache.clearDiskCache(str);
        }
    }

    private void closeCacheInternalInBackgroud() {
        if (this.mImageCache != null) {
            this.mImageCache.close();
            this.mImageCache = null;
            mFinalBitmap = null;
        }
    }

    private Bitmap processBitmap(String str, BitmapDisplayConfig bitmapDisplayConfig) {
        if (this.mBitmapProcess != null) {
            return this.mBitmapProcess.getBitmap(str, bitmapDisplayConfig);
        }
        return null;
    }

    public Bitmap getBitmapFromCache(String str) {
        Bitmap bitmapFromMemoryCache = getBitmapFromMemoryCache(str);
        if (bitmapFromMemoryCache == null) {
            return getBitmapFromDiskCache(str);
        }
        return bitmapFromMemoryCache;
    }

    public Bitmap getBitmapFromMemoryCache(String str) {
        return this.mImageCache.getBitmapFromMemoryCache(str);
    }

    public Bitmap getBitmapFromDiskCache(String str) {
        return getBitmapFromDiskCache(str, null);
    }

    public Bitmap getBitmapFromDiskCache(String str, BitmapDisplayConfig bitmapDisplayConfig) {
        return this.mBitmapProcess.getFromDisk(str, bitmapDisplayConfig);
    }

    public void setExitTasksEarly(boolean z) {
        this.mExitTasksEarly = z;
    }

    public void onResume() {
        setExitTasksEarly(false);
    }

    public void onPause() {
        setExitTasksEarly(true);
    }

    public void onDestroy() {
        closeCache();
    }

    public void clearCache() {
        new CacheExecutecTask().execute(Integer.valueOf(1));
    }

    public void clearCache(String str) {
        new CacheExecutecTask().execute(Integer.valueOf(4), str);
    }

    public void clearMemoryCache() {
        if (this.mImageCache != null) {
            this.mImageCache.clearMemoryCache();
        }
    }

    public void clearMemoryCache(String str) {
        if (this.mImageCache != null) {
            this.mImageCache.clearMemoryCache(str);
        }
    }

    public void clearDiskCache() {
        new CacheExecutecTask().execute(Integer.valueOf(3));
    }

    public void clearDiskCache(String str) {
        new CacheExecutecTask().execute(Integer.valueOf(5), str);
    }

    public void closeCache() {
        new CacheExecutecTask().execute(Integer.valueOf(2));
    }

    public void exitTasksEarly(boolean z) {
        this.mExitTasksEarly = z;
        if (z) {
            pauseWork(false);
        }
    }

    public void pauseWork(boolean z) {
        synchronized (this.mPauseWorkLock) {
            this.mPauseWork = z;
            if (!this.mPauseWork) {
                this.mPauseWorkLock.notifyAll();
            }
        }
    }

    private static BitmapLoadAndDisplayTask getBitmapTaskFromImageView(View view) {
        if (view != null) {
            Drawable drawable;
            if (view instanceof ImageView) {
                drawable = ((ImageView) view).getDrawable();
            } else {
                drawable = view.getBackground();
            }
            if (drawable instanceof AsyncDrawable) {
                return ((AsyncDrawable) drawable).getBitmapWorkerTask();
            }
        }
        return null;
    }

    public static boolean checkImageTask(Object obj, View view) {
        BitmapLoadAndDisplayTask bitmapTaskFromImageView = getBitmapTaskFromImageView(view);
        if (bitmapTaskFromImageView == null) {
            return true;
        }
        Object access$100 = bitmapTaskFromImageView.data;
        if (access$100 != null && access$100.equals(obj)) {
            return false;
        }
        bitmapTaskFromImageView.cancel(true);
        return true;
    }

    private Bitmap createCircleImage(Bitmap bitmap, View view) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width >= height) {
            width = height;
        }
        Paint paint = new Paint();
        paint.setColor(-1);
        paint.setAntiAlias(true);
        Bitmap createBitmap = Bitmap.createBitmap(width, width, Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        canvas.drawCircle((float) (width / 2), (float) (width / 2), (float) (width / 2), paint);
        paint.setXfermode(new PorterDuffXfermode(Mode.SRC_IN));
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        paint = new Paint();
        paint.setColor(-1);
        paint.setStyle(Style.STROKE);
        paint.setARGB(255, 255, 255, 255);
        paint.setStrokeWidth((float) 3);
        paint.setAntiAlias(true);
        canvas.drawCircle((float) (width / 2), (float) (width / 2), (float) (width / 2), paint);
        return createBitmap;
    }
}
