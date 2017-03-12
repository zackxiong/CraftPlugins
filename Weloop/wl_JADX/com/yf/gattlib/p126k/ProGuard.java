package com.yf.gattlib.p126k;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract.PhoneLookup;
import android.text.TextUtils;

/* renamed from: com.yf.gattlib.k.b */
public class ProGuard {
    public static final String f6255a;

    static {
        f6255a = ProGuard.class.getSimpleName();
    }

    public static String m8134a(Context context, String str) {
        ContentResolver contentResolver = context.getContentResolver();
        try {
            Cursor query = contentResolver.query(Uri.withAppendedPath(PhoneLookup.CONTENT_FILTER_URI, Uri.encode(str)), new String[]{"display_name"}, null, null, null);
            if (query == null) {
                return null;
            }
            String string;
            if (query.moveToFirst()) {
                string = query.getString(query.getColumnIndex("display_name"));
            } else {
                string = null;
            }
            if (!(query == null || query.isClosed())) {
                query.close();
            }
            com.yf.gattlib.p117p.ProGuard.m8293a(f6255a, "name of " + str + " is " + string);
            if (TextUtils.isEmpty(string)) {
                return "";
            }
            return string;
        } catch (Throwable th) {
            com.yf.gattlib.p117p.ProGuard.m8298b(f6255a, "Can not get name of " + str);
            return "";
        }
    }
}
