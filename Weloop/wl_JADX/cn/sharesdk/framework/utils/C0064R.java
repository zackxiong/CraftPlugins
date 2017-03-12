package cn.sharesdk.framework.utils;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.provider.MediaStore.Images.Media;
import android.text.TextUtils;
import cn.sharesdk.framework.network.C0034e;
import java.io.File;
import java.lang.reflect.Field;
import java.net.URL;
import java.net.URLDecoder;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: cn.sharesdk.framework.utils.R */
public class C0064R {
    private static String f2093a;
    private static float f2094b;

    public static long dateStrToLong(String str) {
        return new SimpleDateFormat("yyyy-MM-dd").parse(str, new ParsePosition(0)).getTime();
    }

    public static Bundle decodeUrl(String str) {
        Bundle bundle = new Bundle();
        if (str != null) {
            for (String split : str.split("&")) {
                String[] split2 = split.split("=");
                if (split2.length < 2 || split2[1] == null) {
                    bundle.putString(URLDecoder.decode(split2[0]), "");
                } else {
                    bundle.putString(URLDecoder.decode(split2[0]), URLDecoder.decode(split2[1]));
                }
            }
        }
        return bundle;
    }

    public static int dipToPx(Context context, int i) {
        if (f2094b <= 0.0f) {
            f2094b = context.getResources().getDisplayMetrics().density;
        }
        return (int) ((((float) i) * f2094b) + 0.5f);
    }

    public static String encodeUrl(Bundle bundle) {
        if (bundle == null) {
            return "";
        }
        StringBuilder stringBuilder = new StringBuilder();
        Object obj = 1;
        for (String str : bundle.keySet()) {
            Object obj2 = bundle.get(str);
            if (obj2 == null) {
                obj2 = "";
            }
            if (obj != null) {
                obj = null;
            } else {
                stringBuilder.append("&");
            }
            stringBuilder.append(C0065a.m3212d(str) + "=" + C0065a.m3212d(String.valueOf(obj2)));
        }
        return stringBuilder.toString();
    }

    public static String encodeUrl(ArrayList<C0034e<String>> arrayList) {
        if (arrayList == null) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder();
        Iterator it = arrayList.iterator();
        int i = 0;
        while (it.hasNext()) {
            C0034e c0034e = (C0034e) it.next();
            if (i > 0) {
                stringBuilder.append('&');
            }
            String str = c0034e.f1977a;
            String str2 = (String) c0034e.f1978b;
            if (str != null) {
                if (str2 == null) {
                    str2 = "";
                }
                stringBuilder.append(C0065a.m3212d(str) + "=" + C0065a.m3212d(str2));
                i++;
            }
        }
        return stringBuilder.toString();
    }

    public static int getBitmapRes(Context context, String str) {
        int resId;
        String packageName = context.getPackageName();
        try {
            resId = C0064R.getResId(Class.forName(packageName + ".R$drawable"), str);
        } catch (Throwable th) {
            C0071e.m3269c(th);
            resId = 0;
        }
        return resId <= 0 ? context.getResources().getIdentifier(str.toLowerCase(), "drawable", packageName) : resId;
    }

    public static String getCachePath(Context context, String str) {
        String str2 = f2093a;
        if (TextUtils.isEmpty(str2)) {
            str2 = "ShareSDK";
        }
        String str3 = context.getFilesDir().getAbsolutePath() + "/" + str2 + "/cache/";
        C0066b a = C0066b.m3214a(context);
        str2 = a.m3245x() ? a.m3246y() + "/" + str2 + "/" + a.m3239r() + "/cache/" : str3;
        if (!TextUtils.isEmpty(str)) {
            str2 = str2 + str + "/";
        }
        File file = new File(str2);
        if (!file.exists()) {
            file.mkdirs();
        }
        return str2;
    }

    public static int getColorRes(Context context, String str) {
        int resId;
        String packageName = context.getPackageName();
        try {
            resId = C0064R.getResId(Class.forName(packageName + ".R$color"), str);
        } catch (Throwable th) {
            C0071e.m3269c(th);
            resId = 0;
        }
        return resId <= 0 ? context.getResources().getIdentifier(str, "color", packageName) : resId;
    }

    public static int getIdRes(Context context, String str) {
        int resId;
        String packageName = context.getPackageName();
        try {
            resId = C0064R.getResId(Class.forName(packageName + ".R$id"), str);
        } catch (Throwable th) {
            C0071e.m3269c(th);
            resId = 0;
        }
        return resId <= 0 ? context.getResources().getIdentifier(str, "id", packageName) : resId;
    }

    public static int getLayoutRes(Context context, String str) {
        int resId;
        String packageName = context.getPackageName();
        try {
            resId = C0064R.getResId(Class.forName(packageName + ".R$layout"), str);
        } catch (Throwable th) {
            C0071e.m3269c(th);
            resId = 0;
        }
        return resId <= 0 ? context.getResources().getIdentifier(str, "layout", packageName) : resId;
    }

    public static int getResId(Class<?> cls, String str) {
        int intValue;
        if (str != null) {
            Field field;
            try {
                field = cls.getField(str);
                field.setAccessible(true);
                intValue = ((Integer) field.get(null)).intValue();
            } catch (Throwable th) {
                intValue = 0;
            }
        } else {
            intValue = 0;
        }
        if (intValue <= 0) {
            C0071e.m3268c("resource " + cls.getName() + "." + str + " not found!", new Object[0]);
        }
        return intValue;
    }

    public static int getScreenHeight(Context context) {
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    public static int getScreenWidth(Context context) {
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    public static int getStringArrayRes(Context context, String str) {
        int resId;
        String packageName = context.getPackageName();
        try {
            resId = C0064R.getResId(Class.forName(packageName + ".R$array"), str);
        } catch (Throwable th) {
            C0071e.m3269c(th);
            resId = 0;
        }
        return resId <= 0 ? context.getResources().getIdentifier(str.toLowerCase(), "array", packageName) : resId;
    }

    public static int getStringRes(Context context, String str) {
        int resId;
        String packageName = context.getPackageName();
        try {
            resId = C0064R.getResId(Class.forName(packageName + ".R$string"), str);
        } catch (Throwable th) {
            C0071e.m3269c(th);
            resId = 0;
        }
        return resId <= 0 ? context.getResources().getIdentifier(str.toLowerCase(), "string", packageName) : resId;
    }

    public static int getStyleRes(Context context, String str) {
        int resId;
        String packageName = context.getPackageName();
        try {
            resId = C0064R.getResId(Class.forName(packageName + ".R$style"), str);
        } catch (Throwable th) {
            C0071e.m3269c(th);
            resId = 0;
        }
        return resId <= 0 ? context.getResources().getIdentifier(str, "style", packageName) : resId;
    }

    public static Date longToDate(long j) {
        Calendar instance = Calendar.getInstance();
        instance.setTimeInMillis(j);
        return instance.getTime();
    }

    public static String longToTime(long j, int i) {
        String str = "yyyy-MM-dd kk:mm:ss";
        switch (i) {
            case ProGuard.styleable.View_android_focusable /*1*/:
                str = "yyyy";
                break;
            case ProGuard.styleable.View_paddingStart /*2*/:
                str = "yyyy-MM";
                break;
            case ProGuard.styleable.View_backgroundTint /*5*/:
                str = "yyyy-MM-dd";
                break;
            case ProGuard.styleable.Toolbar_subtitleTextAppearance /*10*/:
                str = "yyyy-MM-dd kk";
                break;
            case ProGuard.styleable.Toolbar_titleMarginStart /*12*/:
                str = "yyyy-MM-dd kk:mm";
                break;
        }
        return new SimpleDateFormat(str).format(Long.valueOf(j));
    }

    public static long parseTwitterDate(String str) {
        String[] split;
        int parseInt;
        int parseInt2;
        int i = 2;
        int i2 = 1;
        int i3 = 0;
        try {
            split = str.split(" ");
            String toUpperCase = split[1].toUpperCase();
            if (toUpperCase.startsWith("FEB")) {
                i = i2;
            } else if (!toUpperCase.startsWith("MAR")) {
                i = toUpperCase.startsWith("APR") ? 3 : toUpperCase.startsWith("MAY") ? 4 : toUpperCase.startsWith("JUN") ? 5 : toUpperCase.startsWith("JUL") ? 6 : toUpperCase.startsWith("AUG") ? 7 : toUpperCase.startsWith("SEP") ? 8 : toUpperCase.startsWith("OCT") ? 9 : toUpperCase.startsWith("NOV") ? 10 : toUpperCase.startsWith("DEC") ? 11 : i3;
            }
            parseInt = Integer.parseInt(split[2]);
        } catch (Throwable th) {
            C0071e.m3269c(th);
            return 0;
        }
        if (split[4].startsWith("+")) {
            split[4] = split[4].substring(1);
        }
        try {
            i2 = Integer.parseInt(split[4]);
        } catch (Throwable th2) {
            C0071e.m3269c(th2);
            i2 = i3;
        }
        int i4 = 1970;
        try {
            i4 = Integer.parseInt(split[5]);
        } catch (Throwable th3) {
            C0071e.m3269c(th3);
        }
        split = split[3].split(":");
        try {
            parseInt2 = Integer.parseInt(split[0]);
        } catch (Throwable th32) {
            C0071e.m3269c(th32);
            parseInt2 = i3;
        }
        int i5 = (parseInt2 - i2) + 8;
        try {
            i2 = Integer.parseInt(split[1]);
        } catch (Throwable th22) {
            C0071e.m3269c(th22);
            i2 = i3;
        }
        try {
            i3 = Integer.parseInt(split[2]);
        } catch (Throwable th322) {
            C0071e.m3269c(th322);
        }
        Calendar instance = Calendar.getInstance();
        instance.set(1, i4);
        instance.set(2, i);
        instance.set(5, parseInt);
        instance.set(11, i5);
        instance.set(12, i2);
        instance.set(13, i3);
        C0071e.m3265b("date: " + str + ", parsed date: " + instance.toString(), new Object[0]);
        return instance.getTimeInMillis();
    }

    public static Uri pathToContentUri(Context context, String str) {
        Cursor query = context.getContentResolver().query(Media.EXTERNAL_CONTENT_URI, new String[]{"_id"}, "_data=? ", new String[]{str}, null);
        if (query != null && query.moveToFirst()) {
            return Uri.withAppendedPath(Uri.parse("content://media/external/images/media"), "" + query.getInt(query.getColumnIndex("_id")));
        } else if (!new File(str).exists()) {
            return null;
        } else {
            ContentValues contentValues = new ContentValues();
            contentValues.put("_data", str);
            return context.getContentResolver().insert(Media.EXTERNAL_CONTENT_URI, contentValues);
        }
    }

    public static int pxToDip(Context context, int i) {
        if (f2094b <= 0.0f) {
            f2094b = context.getResources().getDisplayMetrics().density;
        }
        return (int) ((((float) i) / f2094b) + 0.5f);
    }

    public static void setCacheRoot(String str) {
        f2093a = str;
    }

    public static long strToDate(String str) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(str, new ParsePosition(0)).getTime();
    }

    public static String toWordText(String str, int i) {
        char[] toCharArray = str.toCharArray();
        int i2 = i * 2;
        StringBuilder stringBuilder = new StringBuilder();
        int i3 = i2;
        for (char c : toCharArray) {
            i3 -= c < '\u0100' ? 1 : 2;
            if (i3 < 0) {
                return stringBuilder.toString();
            }
            stringBuilder.append(c);
        }
        return stringBuilder.toString();
    }

    public static Bundle urlToBundle(String str) {
        int indexOf = str.indexOf("://");
        try {
            URL url = new URL(indexOf >= 0 ? "http://" + str.substring(indexOf + 1) : "http://" + str);
            Bundle decodeUrl = C0064R.decodeUrl(url.getQuery());
            decodeUrl.putAll(C0064R.decodeUrl(url.getRef()));
            return decodeUrl;
        } catch (Throwable th) {
            C0071e.m3269c(th);
            return new Bundle();
        }
    }
}
