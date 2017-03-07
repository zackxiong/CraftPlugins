package com.yf.gattlib.http.afinal.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Environment;
import android.os.StatFs;
import android.util.Log;
import com.umeng.update.util.ProGuard;
import java.io.File;

/* compiled from: ProGuard */
public class Utils {
    private static final long INITIALCRC = -1;
    private static final long POLY64REV = -7661587058870466123L;
    private static final String TAG = "BitmapCommonUtils";
    private static long[] sCrcTable;

    static {
        sCrcTable = new long[ProGuard.f5669b];
        for (int i = 0; i < ProGuard.f5669b; i++) {
            long j = (long) i;
            for (int i2 = 0; i2 < 8; i2++) {
                j = (j >> 1) ^ ((((int) j) & 1) != 0 ? POLY64REV : 0);
            }
            sCrcTable[i] = j;
        }
    }

    public static File getDiskCacheDir(Context context, String str) {
        return new File(("mounted".equals(Environment.getExternalStorageState()) ? getExternalCacheDir(context).getPath() : context.getCacheDir().getPath()) + File.separator + str);
    }

    public static int getBitmapSize(Bitmap bitmap) {
        return bitmap.getRowBytes() * bitmap.getHeight();
    }

    public static File getExternalCacheDir(Context context) {
        return new File(Environment.getExternalStorageDirectory().getPath() + ("/Android/data/" + context.getPackageName() + "/cache/"));
    }

    public static long getUsableSpace(File file) {
        try {
            StatFs statFs = new StatFs(file.getPath());
            return ((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize());
        } catch (Exception e) {
            Log.e(TAG, "\u83b7\u53d6 sdcard \u7f13\u5b58\u5927\u5c0f \u51fa\u9519\uff0c\u8bf7\u67e5\u770bAndroidManifest.xml \u662f\u5426\u6dfb\u52a0\u4e86sdcard\u7684\u8bbf\u95ee\u6743\u9650");
            e.printStackTrace();
            return INITIALCRC;
        }
    }

    public static byte[] getBytes(String str) {
        int i = 0;
        byte[] bArr = new byte[(str.length() * 2)];
        char[] toCharArray = str.toCharArray();
        int length = toCharArray.length;
        int i2 = 0;
        while (i < length) {
            char c = toCharArray[i];
            int i3 = i2 + 1;
            bArr[i2] = (byte) (c & 255);
            i2 = i3 + 1;
            bArr[i3] = (byte) (c >> 8);
            i++;
        }
        return bArr;
    }

    public static boolean isSameKey(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        if (bArr2.length < length) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (bArr[i] != bArr2[i]) {
                return false;
            }
        }
        return true;
    }

    public static byte[] copyOfRange(byte[] bArr, int i, int i2) {
        int i3 = i2 - i;
        if (i3 < 0) {
            throw new IllegalArgumentException(i + " > " + i2);
        }
        Object obj = new byte[i3];
        System.arraycopy(bArr, i, obj, 0, Math.min(bArr.length - i, i3));
        return obj;
    }

    public static byte[] makeKey(String str) {
        return getBytes(str);
    }

    public static final long crc64Long(String str) {
        if (str == null || str.length() == 0) {
            return 0;
        }
        return crc64Long(getBytes(str));
    }

    public static final long crc64Long(byte[] bArr) {
        long j = INITIALCRC;
        for (byte b : bArr) {
            j = (j >> 8) ^ sCrcTable[(((int) j) ^ b) & 255];
        }
        return j;
    }
}
