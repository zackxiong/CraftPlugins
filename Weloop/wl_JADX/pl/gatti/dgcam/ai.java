package pl.gatti.dgcam;

import android.annotation.TargetApi;
import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Environment;
import android.provider.DocumentsContract;
import android.provider.MediaStore.Audio;
import android.provider.MediaStore.Images.Media;
import android.provider.MediaStore.Video;
import android.view.WindowManager;
import com.baidu.android.pushservice.PushConstants;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* compiled from: ProGuard */
public class ai {
    public static int m12321a(Context context) {
        switch (((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation()) {
            case ProGuard.styleable.View_android_theme /*0*/:
                return 0;
            case ProGuard.styleable.View_android_focusable /*1*/:
                return 90;
            case ProGuard.styleable.View_paddingStart /*2*/:
                return 180;
            case ProGuard.styleable.View_paddingEnd /*3*/:
                return 270;
            default:
                return 0;
        }
    }

    public static int m12326b(Context context) {
        return ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
    }

    public static File m12322a(String str, String str2, String str3) {
        return new File(str + (str2 + new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date()).toString() + str3));
    }

    @TargetApi(19)
    public static String m12323a(Context context, Uri uri) {
        Uri uri2 = null;
        if ((VERSION.SDK_INT >= 19 ? 1 : 0) == 0 || !DocumentsContract.isDocumentUri(context, uri)) {
            if (PushConstants.EXTRA_CONTENT.equalsIgnoreCase(uri.getScheme())) {
                if (m12329d(uri)) {
                    return uri.getLastPathSegment();
                }
                return m12324a(context, uri, null, null);
            } else if ("file".equalsIgnoreCase(uri.getScheme())) {
                return uri.getPath();
            } else {
                return null;
            }
        } else if (m12325a(uri)) {
            r1 = DocumentsContract.getDocumentId(uri).split(":");
            if ("primary".equalsIgnoreCase(r1[0])) {
                return Environment.getExternalStorageDirectory() + "/" + r1[1];
            }
            return null;
        } else if (m12327b(uri)) {
            return m12324a(context, ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.valueOf(DocumentsContract.getDocumentId(uri)).longValue()), null, null);
        } else if (!m12328c(uri)) {
            return null;
        } else {
            Object obj = DocumentsContract.getDocumentId(uri).split(":")[0];
            if ("image".equals(obj)) {
                uri2 = Media.EXTERNAL_CONTENT_URI;
            } else if ("video".equals(obj)) {
                uri2 = Video.Media.EXTERNAL_CONTENT_URI;
            } else if ("audio".equals(obj)) {
                uri2 = Audio.Media.EXTERNAL_CONTENT_URI;
            }
            String str = "_id=?";
            return m12324a(context, uri2, "_id=?", new String[]{r1[1]});
        }
    }

    public static String m12324a(Context context, Uri uri, String str, String[] strArr) {
        Throwable th;
        Cursor cursor = null;
        String str2 = "_data";
        try {
            Cursor query = context.getContentResolver().query(uri, new String[]{"_data"}, str, strArr, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        str2 = query.getString(query.getColumnIndexOrThrow("_data"));
                        if (query == null) {
                            return str2;
                        }
                        query.close();
                        return str2;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    cursor = query;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (query != null) {
                query.close();
            }
            return null;
        } catch (Throwable th3) {
            th = th3;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public static boolean m12325a(Uri uri) {
        return "com.android.externalstorage.documents".equals(uri.getAuthority());
    }

    public static boolean m12327b(Uri uri) {
        return "com.android.providers.downloads.documents".equals(uri.getAuthority());
    }

    public static boolean m12328c(Uri uri) {
        return "com.android.providers.media.documents".equals(uri.getAuthority());
    }

    public static boolean m12329d(Uri uri) {
        return "com.google.android.apps.photos.content".equals(uri.getAuthority());
    }
}
