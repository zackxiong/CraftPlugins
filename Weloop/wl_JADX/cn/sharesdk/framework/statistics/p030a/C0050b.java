package cn.sharesdk.framework.statistics.p030a;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import cn.sharesdk.framework.utils.C0071e;

/* renamed from: cn.sharesdk.framework.statistics.a.b */
public class C0050b {
    private static C0050b f2017c;
    private Context f2018a;
    private C0049a f2019b;

    static {
        f2017c = null;
    }

    private C0050b(Context context) {
        this.f2018a = context.getApplicationContext();
        this.f2019b = new C0049a(this.f2018a);
    }

    public static synchronized C0050b m3081a(Context context) {
        C0050b c0050b;
        synchronized (C0050b.class) {
            if (f2017c == null) {
                f2017c = new C0050b(context);
            }
            c0050b = f2017c;
        }
        return c0050b;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int m3082a(java.lang.String r6) {
        /*
        r5 = this;
        r2 = 0;
        r0 = 0;
        r1 = r5.f2019b;
        r1 = r1.getWritableDatabase();
        r3 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x002f }
        r3.<init>();	 Catch:{ Exception -> 0x002f }
        r4 = "select count(*) from ";
        r3 = r3.append(r4);	 Catch:{ Exception -> 0x002f }
        r3 = r3.append(r6);	 Catch:{ Exception -> 0x002f }
        r3 = r3.toString();	 Catch:{ Exception -> 0x002f }
        r4 = 0;
        r2 = r1.rawQuery(r3, r4);	 Catch:{ Exception -> 0x002f }
        r1 = r2.moveToNext();	 Catch:{ Exception -> 0x002f }
        if (r1 == 0) goto L_0x002b;
    L_0x0026:
        r1 = 0;
        r0 = r2.getInt(r1);	 Catch:{ Exception -> 0x002f }
    L_0x002b:
        r2.close();
    L_0x002e:
        return r0;
    L_0x002f:
        r1 = move-exception;
        cn.sharesdk.framework.utils.C0071e.m3269c(r1);	 Catch:{ all -> 0x0037 }
        r2.close();
        goto L_0x002e;
    L_0x0037:
        r0 = move-exception;
        r2.close();
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.sharesdk.framework.statistics.a.b.a(java.lang.String):int");
    }

    public int m3083a(String str, String str2, String[] strArr) {
        int delete;
        Throwable e;
        try {
            delete = this.f2019b.getWritableDatabase().delete(str, str2, strArr);
            try {
                C0071e.m3260a("Deleted %d rows from table: %s", Integer.valueOf(delete), str);
            } catch (Exception e2) {
                e = e2;
                C0071e.m3262a(e, "when delete database occur error table:%s,", str);
                return delete;
            }
        } catch (Throwable e3) {
            e = e3;
            delete = 0;
            C0071e.m3262a(e, "when delete database occur error table:%s,", str);
            return delete;
        }
        return delete;
    }

    public long m3084a(String str, ContentValues contentValues) {
        long j = -1;
        try {
            j = this.f2019b.getWritableDatabase().replace(str, null, contentValues);
        } catch (Throwable e) {
            C0071e.m3262a(e, "when insert database occur error table:%s,", str);
        }
        return j;
    }

    public Cursor m3085a(String str, String[] strArr, String str2, String[] strArr2, String str3) {
        SQLiteDatabase writableDatabase = this.f2019b.getWritableDatabase();
        C0071e.m3260a("Query table: %s", str);
        try {
            return writableDatabase.query(str, strArr, str2, strArr2, null, null, str3);
        } catch (Throwable e) {
            C0071e.m3262a(e, "when query database occur error table:%s,", str);
            return null;
        }
    }
}
