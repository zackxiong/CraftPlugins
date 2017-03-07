package cn.sharesdk.framework.statistics.p030a;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import com.baidu.android.pushservice.db.LightAppTableDefine;
import java.util.ArrayList;

/* renamed from: cn.sharesdk.framework.statistics.a.e */
public class C0053e {
    public static int f2025a;
    public static int f2026b;
    public static int f2027c;

    static {
        f2025a = 0;
        f2026b = 1;
        f2027c = 2;
    }

    public static synchronized long m3102a(Context context, String str, long j) {
        long a;
        synchronized (C0053e.class) {
            if (str != null) {
                if (str.trim() != "") {
                    C0050b a2 = C0050b.m3081a(context);
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("post_time", Long.valueOf(j));
                    contentValues.put("message_data", str.toString());
                    a = a2.m3084a(LightAppTableDefine.DB_TABLE_MESSAGE, contentValues);
                }
            }
            a = -1;
        }
        return a;
    }

    public static synchronized long m3103a(Context context, ArrayList<String> arrayList) {
        long a;
        synchronized (C0053e.class) {
            StringBuilder stringBuilder = new StringBuilder();
            for (int i = 0; i < arrayList.size(); i++) {
                stringBuilder.append("'");
                stringBuilder.append((String) arrayList.get(i));
                stringBuilder.append("'");
                stringBuilder.append(",");
            }
            a = (long) C0050b.m3081a(context).m3083a(LightAppTableDefine.DB_TABLE_MESSAGE, "_id in ( " + stringBuilder.toString().substring(0, stringBuilder.length() - 1) + " )", null);
        }
        return a;
    }

    public static synchronized ArrayList<C0052d> m3104a(Context context) {
        ArrayList<C0052d> a;
        synchronized (C0053e.class) {
            a = C0050b.m3081a(context).m3082a(LightAppTableDefine.DB_TABLE_MESSAGE) > 0 ? C0053e.m3105a(context, null, null) : new ArrayList();
        }
        return a;
    }

    private static synchronized ArrayList<C0052d> m3105a(Context context, String str, String[] strArr) {
        ArrayList<C0052d> arrayList;
        synchronized (C0053e.class) {
            arrayList = new ArrayList();
            C0052d c0052d = new C0052d();
            StringBuilder stringBuilder = new StringBuilder();
            Cursor a = C0050b.m3081a(context).m3085a(LightAppTableDefine.DB_TABLE_MESSAGE, new String[]{"_id", "post_time", "message_data"}, str, strArr, null);
            StringBuilder stringBuilder2 = stringBuilder;
            C0052d c0052d2 = c0052d;
            while (a != null && a.moveToNext()) {
                c0052d2.f2024b.add(a.getString(0));
                if (c0052d2.f2024b.size() == 100) {
                    stringBuilder2.append(a.getString(2));
                    c0052d2.f2023a = stringBuilder2.toString();
                    arrayList.add(c0052d2);
                    c0052d2 = new C0052d();
                    stringBuilder2 = new StringBuilder();
                } else {
                    stringBuilder2.append(a.getString(2) + "\n");
                }
            }
            a.close();
            if (c0052d2.f2024b.size() != 0) {
                c0052d2.f2023a = stringBuilder2.toString().substring(0, stringBuilder2.length() - 1);
                arrayList.add(c0052d2);
            }
        }
        return arrayList;
    }
}
