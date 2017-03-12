package com.baidu.location;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.location.Location;
import android.net.wifi.ScanResult;
import android.os.AsyncTask;
import android.os.Message;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.location.C0453D.C0451b;
import com.baidu.location.aj.C0502a;
import com.umeng.update.ProGuard;
import java.io.File;
import java.util.List;
import java.util.Locale;
import org.json.JSONObject;

/* renamed from: com.baidu.location.g */
class C0516g implements C0452e {
    private static C0516g f4047a;
    private String f4048Y;
    private boolean f4049Z;
    private boolean aa;
    private boolean ab;
    private String ac;
    private int ad;
    private double ae;
    private double af;
    private double ag;
    private double ah;
    private double ai;
    private long aj;
    private boolean ak;
    private volatile boolean al;
    private final int am;
    private final int an;
    private final String ao;
    private final String ap;
    private final String aq;
    private boolean ar;

    /* renamed from: com.baidu.location.g.a */
    private class C0514a extends AsyncTask {
        final /* synthetic */ C0516g f4045a;

        private C0514a(C0516g c0516g) {
            this.f4045a = c0516g;
        }

        protected Boolean m5952a(Boolean... boolArr) {
            SQLiteDatabase sQLiteDatabase = null;
            if (boolArr.length != 4) {
                return Boolean.valueOf(false);
            }
            try {
                sQLiteDatabase = SQLiteDatabase.openOrCreateDatabase(this.f4045a.aq, null);
            } catch (Exception e) {
            }
            if (sQLiteDatabase == null) {
                return Boolean.valueOf(false);
            }
            int currentTimeMillis = (int) (System.currentTimeMillis() >> 28);
            try {
                sQLiteDatabase.beginTransaction();
                if (boolArr[0].booleanValue()) {
                    try {
                        sQLiteDatabase.execSQL("delete from wof where ac < " + (currentTimeMillis - 35));
                    } catch (Exception e2) {
                    }
                }
                if (boolArr[1].booleanValue()) {
                    try {
                        sQLiteDatabase.execSQL("delete from bdcltb09 where ac is NULL or ac < " + (currentTimeMillis - 130));
                    } catch (Exception e3) {
                    }
                }
                sQLiteDatabase.setTransactionSuccessful();
                sQLiteDatabase.endTransaction();
                sQLiteDatabase.close();
            } catch (Exception e4) {
            }
            return Boolean.valueOf(true);
        }

        protected /* synthetic */ Object doInBackground(Object[] objArr) {
            return m5952a((Boolean[]) objArr);
        }
    }

    /* renamed from: com.baidu.location.g.b */
    private class C0515b extends AsyncTask {
        final /* synthetic */ C0516g f4046a;

        private C0515b(C0516g c0516g) {
            this.f4046a = c0516g;
        }

        protected Boolean m5953a(Object... objArr) {
            SQLiteDatabase sQLiteDatabase = null;
            if (objArr.length != 4) {
                this.f4046a.al = false;
                return Boolean.valueOf(false);
            }
            SQLiteDatabase openOrCreateDatabase;
            try {
                openOrCreateDatabase = SQLiteDatabase.openOrCreateDatabase(this.f4046a.aq, null);
            } catch (Exception e) {
                openOrCreateDatabase = sQLiteDatabase;
            }
            if (openOrCreateDatabase == null) {
                this.f4046a.al = false;
                return Boolean.valueOf(false);
            }
            try {
                openOrCreateDatabase.beginTransaction();
                this.f4046a.m5962a((String) objArr[0], (C0502a) objArr[1], openOrCreateDatabase);
                this.f4046a.m5957a((C0451b) objArr[2], (BDLocation) objArr[3], openOrCreateDatabase);
                openOrCreateDatabase.setTransactionSuccessful();
                openOrCreateDatabase.endTransaction();
                openOrCreateDatabase.close();
            } catch (Exception e2) {
            }
            this.f4046a.al = false;
            return Boolean.valueOf(true);
        }

        protected /* synthetic */ Object doInBackground(Object[] objArr) {
            return m5953a(objArr);
        }
    }

    static {
        f4047a = null;
    }

    private C0516g() {
        this.f4048Y = null;
        this.f4049Z = false;
        this.aa = false;
        this.ab = false;
        this.ac = null;
        this.ad = 0;
        this.ae = 0.0d;
        this.af = 0.0d;
        this.ag = 0.0d;
        this.ah = 0.0d;
        this.ai = 0.0d;
        this.aj = 0;
        this.ak = false;
        this.al = false;
        this.am = 6;
        this.an = 10000;
        this.ao = "bdcltb09";
        this.ap = "wof";
        this.aq = P + "/ls.db";
        this.ar = true;
        try {
            m5966b();
        } catch (Exception e) {
        }
    }

    private String m5954a(boolean z) {
        double d;
        double d2;
        boolean z2;
        boolean z3;
        double d3 = 0.0d;
        if (this.aa) {
            d = this.ah;
            d2 = this.ai;
            d3 = 246.4d;
            z2 = true;
            z3 = true;
        } else if (this.f4049Z) {
            d = this.ae;
            d2 = this.af;
            d3 = this.ag;
            z2 = C0543v.aI().aK();
            z3 = true;
        } else {
            z2 = false;
            z3 = false;
            d2 = 0.0d;
            d = 0.0d;
        }
        if (!z3) {
            return z ? "{\"result\":{\"time\":\"" + C0465K.m5627a() + "\",\"error\":\"67\"}}" : "{\"result\":{\"time\":\"" + C0465K.m5627a() + "\",\"error\":\"63\"}}";
        } else {
            if (z) {
                return String.format(Locale.CHINA, "{\"result\":{\"time\":\"" + C0465K.m5627a() + "\",\"error\":\"66\"},\"content\":{\"point\":{\"x\":" + "\"%f\",\"y\":\"%f\"},\"radius\":\"%f\",\"isCellChanged\":\"%b\"}}", new Object[]{Double.valueOf(d), Double.valueOf(d2), Double.valueOf(d3), Boolean.valueOf(true)});
            }
            return String.format(Locale.CHINA, "{\"result\":{\"time\":\"" + C0465K.m5627a() + "\",\"error\":\"68\"},\"content\":{\"point\":{\"x\":" + "\"%f\",\"y\":\"%f\"},\"radius\":\"%f\",\"isCellChanged\":\"%b\"}}", new Object[]{Double.valueOf(d), Double.valueOf(d2), Double.valueOf(d3), Boolean.valueOf(z2)});
        }
    }

    private void m5955a() {
        C0502a aw = aj.at().aw();
        if (aw != null) {
            m5961a(aw.m5847goto());
        }
        m5963a(C0453D.cs().cn().f3805for);
    }

    private void m5956a(Message message) {
        C0479T.m5734q().m5741if(m5968case(true), message);
    }

    private void m5957a(C0451b c0451b, BDLocation bDLocation, SQLiteDatabase sQLiteDatabase) {
        if (bDLocation != null && bDLocation.getLocType() == BDLocation.TypeNetWorkLocation) {
            if (("wf".equals(bDLocation.getNetworkLocationType()) || bDLocation.getRadius() < 300.0f) && c0451b.f3805for != null) {
                int currentTimeMillis = (int) (System.currentTimeMillis() >> 28);
                System.currentTimeMillis();
                int i = 0;
                for (ScanResult scanResult : c0451b.f3805for) {
                    if (scanResult.level != 0) {
                        int i2 = i + 1;
                        if (i2 <= 6) {
                            ContentValues contentValues = new ContentValues();
                            String l = Jni.m5623l(scanResult.BSSID.replace(":", ""));
                            try {
                                int i3;
                                int i4;
                                double d;
                                Object obj;
                                double d2;
                                Cursor rawQuery = sQLiteDatabase.rawQuery("select * from wof where id = \"" + l + "\";", null);
                                if (rawQuery == null || !rawQuery.moveToFirst()) {
                                    i3 = 0;
                                    i4 = 0;
                                    d = 0.0d;
                                    obj = null;
                                    d2 = 0.0d;
                                } else {
                                    double d3 = rawQuery.getDouble(1) - 113.2349d;
                                    double d4 = rawQuery.getDouble(2) - 432.1238d;
                                    rawQuery.getInt(3);
                                    int i5 = rawQuery.getInt(4);
                                    i3 = rawQuery.getInt(5);
                                    i4 = i5;
                                    d = d3;
                                    double d5 = d4;
                                    obj = 1;
                                    d2 = d5;
                                }
                                rawQuery.close();
                                if (obj == null) {
                                    contentValues.put("mktime", Double.valueOf(bDLocation.getLongitude() + 113.2349d));
                                    contentValues.put("time", Double.valueOf(bDLocation.getLatitude() + 432.1238d));
                                    contentValues.put("bc", Integer.valueOf(1));
                                    contentValues.put("cc", Integer.valueOf(1));
                                    contentValues.put("ac", Integer.valueOf(currentTimeMillis));
                                    contentValues.put("id", l);
                                    sQLiteDatabase.insert("wof", null, contentValues);
                                } else if (i3 == 0) {
                                    i = i2;
                                } else {
                                    float[] fArr = new float[1];
                                    Location.distanceBetween(d2, d, bDLocation.getLatitude(), bDLocation.getLongitude(), fArr);
                                    if (fArr[0] > 1500.0f) {
                                        int i6 = i3 + 1;
                                        if (i6 <= 10 || i6 <= i4 * 3) {
                                            contentValues.put("cc", Integer.valueOf(i6));
                                        } else {
                                            contentValues.put("mktime", Double.valueOf(bDLocation.getLongitude() + 113.2349d));
                                            contentValues.put("time", Double.valueOf(bDLocation.getLatitude() + 432.1238d));
                                            contentValues.put("bc", Integer.valueOf(1));
                                            contentValues.put("cc", Integer.valueOf(1));
                                            contentValues.put("ac", Integer.valueOf(currentTimeMillis));
                                        }
                                    } else {
                                        d2 = ((d2 * ((double) i4)) + bDLocation.getLatitude()) / ((double) (i4 + 1));
                                        ContentValues contentValues2 = contentValues;
                                        contentValues2.put("mktime", Double.valueOf((((d * ((double) i4)) + bDLocation.getLongitude()) / ((double) (i4 + 1))) + 113.2349d));
                                        contentValues.put("time", Double.valueOf(d2 + 432.1238d));
                                        contentValues.put("bc", Integer.valueOf(i4 + 1));
                                        contentValues.put("ac", Integer.valueOf(currentTimeMillis));
                                    }
                                    try {
                                        if (sQLiteDatabase.update("wof", contentValues, "id = \"" + l + "\"", null) <= 0) {
                                        }
                                    } catch (Exception e) {
                                    }
                                }
                            } catch (Exception e2) {
                            }
                            i = i2;
                        } else {
                            return;
                        }
                    }
                }
            }
        }
    }

    private void m5961a(String str) {
        SQLiteDatabase sQLiteDatabase = null;
        if (str != null && !str.equals(this.f4048Y)) {
            try {
                sQLiteDatabase = SQLiteDatabase.openOrCreateDatabase(this.aq, null);
            } catch (Exception e) {
            }
            if (sQLiteDatabase == null || str == null) {
                this.f4049Z = false;
                return;
            }
            this.f4049Z = false;
            try {
                Cursor rawQuery = sQLiteDatabase.rawQuery("select * from bdcltb09 where id = \"" + str + "\";", null);
                this.f4048Y = str;
                this.aj = System.currentTimeMillis();
                if (rawQuery != null) {
                    if (rawQuery.moveToFirst()) {
                        this.ae = rawQuery.getDouble(1) - 1235.4323d;
                        this.ag = rawQuery.getDouble(2) - 4326.0d;
                        this.af = rawQuery.getDouble(3) - 2367.3217d;
                        this.f4049Z = true;
                    }
                    rawQuery.close();
                }
            } catch (Exception e2) {
            }
            sQLiteDatabase.close();
        }
    }

    private void m5962a(String str, C0502a c0502a, SQLiteDatabase sQLiteDatabase) {
        Object obj = null;
        double d = 0.0d;
        if (c0502a.m5848if() && C0543v.aI().aK()) {
            System.currentTimeMillis();
            int currentTimeMillis = (int) (System.currentTimeMillis() >> 28);
            String str2 = c0502a.m5847goto();
            try {
                double parseDouble;
                float parseFloat;
                JSONObject jSONObject = new JSONObject(str);
                int parseInt = Integer.parseInt(jSONObject.getJSONObject("result").getString("error"));
                int i;
                if (parseInt == BDLocation.TypeNetWorkLocation) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject(PushConstants.EXTRA_CONTENT);
                    if (jSONObject2.has("clf")) {
                        String string = jSONObject2.getString("clf");
                        if (string.equals("0")) {
                            JSONObject jSONObject3 = jSONObject2.getJSONObject("point");
                            d = Double.parseDouble(jSONObject3.getString("x"));
                            parseDouble = Double.parseDouble(jSONObject3.getString("y"));
                            parseFloat = Float.parseFloat(jSONObject2.getString("radius"));
                        } else {
                            String[] split = string.split("\\|");
                            d = Double.parseDouble(split[0]);
                            parseDouble = Double.parseDouble(split[1]);
                            parseFloat = Float.parseFloat(split[2]);
                        }
                    }
                    i = 1;
                    parseFloat = 0.0f;
                    parseDouble = 0.0d;
                } else {
                    if (parseInt == BDLocation.TypeServerError) {
                        sQLiteDatabase.delete("bdcltb09", "id = \"" + str2 + "\"", null);
                        return;
                    }
                    i = 1;
                    parseFloat = 0.0f;
                    parseDouble = 0.0d;
                }
                if (obj == null) {
                    d += 1235.4323d;
                    parseDouble += 2367.3217d;
                    float f = 4326.0f + parseFloat;
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("time", Double.valueOf(d));
                    contentValues.put("tag", Float.valueOf(f));
                    contentValues.put(ProGuard.f5475c, Double.valueOf(parseDouble));
                    contentValues.put("ac", Integer.valueOf(currentTimeMillis));
                    try {
                        if (sQLiteDatabase.update("bdcltb09", contentValues, "id = \"" + str2 + "\"", null) <= 0) {
                            contentValues.put("id", str2);
                            sQLiteDatabase.insert("bdcltb09", null, contentValues);
                        }
                    } catch (Exception e) {
                    }
                }
            } catch (Exception e2) {
            }
        }
    }

    private void m5963a(List list) {
        int i;
        System.currentTimeMillis();
        this.aa = false;
        if (list != null) {
            SQLiteDatabase openOrCreateDatabase;
            try {
                openOrCreateDatabase = SQLiteDatabase.openOrCreateDatabase(this.aq, null);
            } catch (Exception e) {
                openOrCreateDatabase = null;
            }
            if (openOrCreateDatabase != null && list != null) {
                int i2 = 0;
                double[] dArr = null;
                Object obj = null;
                int i3 = 0;
                double d = 0.0d;
                double d2 = 0.0d;
                int i4 = 0;
                for (ScanResult scanResult : list) {
                    int i5 = i4 + 1;
                    if (i5 > 10) {
                        break;
                    }
                    int i6;
                    double[] dArr2;
                    Object obj2;
                    int i7;
                    double d3;
                    double d4;
                    try {
                        Cursor rawQuery = openOrCreateDatabase.rawQuery("select * from wof where id = \"" + Jni.m5623l(scanResult.BSSID.replace(":", "")) + "\";", null);
                        if (rawQuery.moveToFirst()) {
                            double d5 = rawQuery.getDouble(1) - 113.2349d;
                            double d6 = rawQuery.getDouble(2) - 432.1238d;
                            rawQuery.getInt(3);
                            int i8 = rawQuery.getInt(4);
                            int i9 = rawQuery.getInt(5);
                            rawQuery.close();
                            if (i9 <= 8 || i9 <= i8) {
                                float[] fArr;
                                if (this.f4049Z) {
                                    fArr = new float[1];
                                    Location.distanceBetween(d6, d5, this.af, this.ae, fArr);
                                    if (((double) fArr[0]) > this.ag + 2000.0d) {
                                        i4 = i5;
                                    } else {
                                        d2 += d5;
                                        d += d6;
                                        i6 = i2;
                                        dArr2 = dArr;
                                        obj2 = 1;
                                        i7 = i3 + 1;
                                        d3 = d;
                                        d4 = d2;
                                    }
                                } else if (obj != null) {
                                    fArr = new float[1];
                                    Location.distanceBetween(d6, d5, d / ((double) i3), d2 / ((double) i3), fArr);
                                    if (fArr[0] > 1000.0f) {
                                        i4 = i5;
                                    } else {
                                        i6 = i2;
                                        dArr2 = dArr;
                                        obj2 = obj;
                                        i7 = i3;
                                        d3 = d;
                                        d4 = d2;
                                    }
                                } else if (dArr == null) {
                                    dArr = new double[8];
                                    i = i2 + 1;
                                    try {
                                        dArr[i2] = d5;
                                        i2 = i + 1;
                                        dArr[i] = d6;
                                        i6 = i2;
                                        dArr2 = dArr;
                                        obj2 = obj;
                                        i7 = i3;
                                        d3 = d;
                                        d4 = d2;
                                    } catch (Exception e2) {
                                        i6 = i;
                                        dArr2 = dArr;
                                        obj2 = obj;
                                        i7 = i3;
                                        d4 = d2;
                                        d3 = d;
                                    }
                                } else {
                                    int i10 = 0;
                                    while (i10 < i2) {
                                        Object obj3;
                                        fArr = new float[1];
                                        Location.distanceBetween(d6, d5, dArr[i10 + 1], dArr[i10], fArr);
                                        if (fArr[0] < 1000.0f) {
                                            obj3 = 1;
                                            try {
                                                d2 += dArr[i10];
                                                d4 = dArr[i10 + 1] + d;
                                                i8 = i3 + 1;
                                                d = d2;
                                            } catch (Exception e3) {
                                                i6 = i2;
                                                dArr2 = dArr;
                                                int i11 = 1;
                                                i7 = i3;
                                                d4 = d2;
                                                d3 = d;
                                            }
                                        } else {
                                            obj3 = obj;
                                            i8 = i3;
                                            d4 = d;
                                            d = d2;
                                        }
                                        i10 += 2;
                                        obj = obj3;
                                        i3 = i8;
                                        d2 = d;
                                        d = d4;
                                    }
                                    if (obj != null) {
                                        d2 += d5;
                                        d += d6;
                                        i6 = i2;
                                        dArr2 = dArr;
                                        obj2 = obj;
                                        i7 = i3 + 1;
                                        d3 = d;
                                        d4 = d2;
                                    } else if (i2 < 8) {
                                        i = i2 + 1;
                                        dArr[i2] = d5;
                                        i2 = i + 1;
                                        dArr[i] = d6;
                                        i6 = i2;
                                        dArr2 = dArr;
                                        obj2 = obj;
                                        i7 = i3;
                                        d3 = d;
                                        d4 = d2;
                                    } else {
                                        openOrCreateDatabase.close();
                                        return;
                                    }
                                }
                                if (i7 > 4) {
                                    i3 = i7;
                                    d = d3;
                                    d2 = d4;
                                    break;
                                }
                                i2 = i6;
                                dArr = dArr2;
                                obj = obj2;
                                i3 = i7;
                                d = d3;
                                d2 = d4;
                                i4 = i5;
                            } else {
                                i4 = i5;
                            }
                        } else {
                            rawQuery.close();
                            i4 = i5;
                        }
                    } catch (Exception e4) {
                        i6 = i2;
                        dArr2 = dArr;
                        obj2 = obj;
                        i7 = i3;
                        d3 = d;
                        d4 = d2;
                    }
                }
                if (i3 > 0) {
                    this.aa = true;
                    this.ah = d2 / ((double) i3);
                    this.ai = d / ((double) i3);
                }
                openOrCreateDatabase.close();
            }
        }
    }

    private void m5966b() {
        try {
            File file = new File(P);
            File file2 = new File(this.aq);
            if (!file.exists()) {
                file.mkdirs();
            }
            if (!file2.exists()) {
                file2.createNewFile();
            }
            if (file2.exists()) {
                SQLiteDatabase openOrCreateDatabase = SQLiteDatabase.openOrCreateDatabase(file2, null);
                openOrCreateDatabase.execSQL("CREATE TABLE IF NOT EXISTS bdcltb09(id CHAR(40) PRIMARY KEY,time DOUBLE,tag DOUBLE, type DOUBLE , ac INT);");
                openOrCreateDatabase.execSQL("CREATE TABLE IF NOT EXISTS wof(id CHAR(15) PRIMARY KEY,mktime DOUBLE,time DOUBLE, ac INT, bc INT, cc INT);");
                openOrCreateDatabase.setVersion(1);
                openOrCreateDatabase.close();
            }
        } catch (Exception e) {
        }
    }

    private void m5967c() {
        SQLiteDatabase openOrCreateDatabase;
        try {
            openOrCreateDatabase = SQLiteDatabase.openOrCreateDatabase(this.aq, null);
        } catch (Exception e) {
            openOrCreateDatabase = null;
        }
        if (openOrCreateDatabase != null) {
            long queryNumEntries = DatabaseUtils.queryNumEntries(openOrCreateDatabase, "wof");
            long queryNumEntries2 = DatabaseUtils.queryNumEntries(openOrCreateDatabase, "bdcltb09");
            boolean z = queryNumEntries > 10000;
            boolean z2 = queryNumEntries2 > 10000;
            if (z || z2) {
                new C0514a().execute(new Boolean[]{Boolean.valueOf(z), Boolean.valueOf(z2)});
            }
            openOrCreateDatabase.close();
        }
    }

    public static C0516g cP() {
        if (f4047a == null) {
            f4047a = new C0516g();
        }
        return f4047a;
    }

    public void cT() {
    }

    public void cU() {
        this.ar = true;
        C0532n.bv().postDelayed(new C0517h(this), 3000);
    }

    public BDLocation m5968case(boolean z) {
        m5955a();
        return new BDLocation(m5954a(z));
    }

    public BDLocation m5969do(String str, List list) {
        if (str != null) {
            m5961a(str);
        }
        m5963a(list);
        return new BDLocation(m5954a(true));
    }

    public void m5970if(String str, C0502a c0502a, C0451b c0451b, BDLocation bDLocation) {
        int i = (c0502a.m5848if() && C0543v.aI().aK()) ? 0 : true;
        int i2 = (bDLocation == null || bDLocation.getLocType() != BDLocation.TypeNetWorkLocation || (!"wf".equals(bDLocation.getNetworkLocationType()) && bDLocation.getRadius() >= 300.0f)) ? true : 0;
        if (c0451b.f3805for == null) {
            i2 = true;
        }
        if ((i == 0 || r0 == 0) && !this.al) {
            this.al = true;
            new C0515b().execute(new Object[]{str, c0502a, c0451b, bDLocation});
        }
    }

    public void m5971j(Message message) {
        m5956a(message);
    }
}
