package com.yf.smart.weloopx.data;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.yf.smart.weloopx.data.models.RunInfoDetailsModel;
import com.yf.smart.weloopx.dist.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* renamed from: com.yf.smart.weloopx.data.k */
public class ProGuard {
    static final /* synthetic */ boolean f8875a;
    private final String f8876b;
    private ContentResolver f8877c;
    private Uri f8878d;
    private Context f8879e;

    static {
        f8875a = !ProGuard.class.desiredAssertionStatus();
    }

    public ProGuard(Context context) {
        this.f8876b = "RunningTrainingDBUtil";
        this.f8878d = Uri.parse("content://com.yf.smart.weloopx.data.WeLoopProvider/RunningTrainingTable");
        this.f8879e = context;
        this.f8877c = context.getContentResolver();
    }

    public ArrayList<RunInfoDetailsModel> m11114a(String str) {
        RunInfoDetailsModel runInfoDetailsModel;
        ArrayList<RunInfoDetailsModel> arrayList = new ArrayList();
        Cursor query = this.f8877c.query(this.f8878d, null, "userId = ? ", new String[]{str}, "startTime DESC ");
        if (query != null && query.getCount() > 0) {
            while (query.moveToNext()) {
                runInfoDetailsModel = new RunInfoDetailsModel();
                String string = query.getString(query.getColumnIndex("runid"));
                String string2 = query.getString(query.getColumnIndex("happendate"));
                String string3 = query.getString(query.getColumnIndex("distance"));
                String string4 = query.getString(query.getColumnIndex("ps"));
                String string5 = query.getString(query.getColumnIndex("time"));
                String string6 = query.getString(query.getColumnIndex("gjflag"));
                String string7 = query.getString(query.getColumnIndex("url"));
                String string8 = query.getString(query.getColumnIndex("startTime"));
                String string9 = query.getString(query.getColumnIndex("endTime"));
                double e = m11110e(string3);
                CharSequence format = String.format("%.2f", new Object[]{Double.valueOf(e)});
                string4 = m11112g(string4);
                string5 = m11113h(string5);
                runInfoDetailsModel.runid = string;
                runInfoDetailsModel.happenDate = string2;
                runInfoDetailsModel.distance = format;
                runInfoDetailsModel.ps = string4;
                runInfoDetailsModel.time = string5;
                runInfoDetailsModel.gjflag = string6;
                runInfoDetailsModel.url = string7;
                runInfoDetailsModel.startTime = string8;
                runInfoDetailsModel.endTime = string9;
                if (!TextUtils.isEmpty(format)) {
                    arrayList.add(runInfoDetailsModel);
                }
            }
        }
        if (f8875a || query != null) {
            query.close();
            ArrayList arrayList2 = new ArrayList();
            int size = arrayList.size();
            int i = 0;
            ArrayList b = m11117b(str);
            int i2 = 0;
            while (i2 < b.size()) {
                double d = 0.0d;
                Object obj = 1;
                HashMap hashMap = new HashMap();
                String str2 = (String) b.get(i2);
                int i3 = 0;
                int i4 = i;
                while (i3 < size) {
                    Object obj2;
                    double d2;
                    runInfoDetailsModel = (RunInfoDetailsModel) arrayList.get(i3);
                    if (runInfoDetailsModel.happenDate.contains(str2)) {
                        d += m11111f(runInfoDetailsModel.distance);
                        if (obj != null) {
                            obj2 = null;
                            com.yf.gattlib.p117p.ProGuard.m8292a("RunningTrainingDBUtil \u6211\u8981\u7684index = " + i3);
                            d2 = d;
                            i4 = i3;
                            i3++;
                            d = d2;
                            obj = obj2;
                        }
                    }
                    obj2 = obj;
                    d2 = d;
                    i3++;
                    d = d2;
                    obj = obj2;
                }
                hashMap.put("INDEX_POSITION", Integer.valueOf(i4));
                hashMap.put("HAPPEN_DATE", str2);
                hashMap.put("SUM_DISTANCE", String.format("%.2f", new Object[]{Double.valueOf(d)}));
                com.yf.gattlib.p117p.ProGuard.m8297b("RunningTrainingDBUtil happenDate = " + str2 + ", sumDistance = " + d);
                arrayList2.add(hashMap);
                i2++;
                i = i4;
            }
            i2 = arrayList2.size();
            for (i = 0; i < i2; i++) {
                HashMap hashMap2 = (HashMap) arrayList2.get(i);
                RunInfoDetailsModel runInfoDetailsModel2 = new RunInfoDetailsModel();
                runInfoDetailsModel2.url = "-1";
                runInfoDetailsModel2.time = m11109d(hashMap2.get("HAPPEN_DATE").toString());
                runInfoDetailsModel2.distance = hashMap2.get("SUM_DISTANCE").toString();
                arrayList.add(Integer.parseInt(hashMap2.get("INDEX_POSITION").toString()) + i, runInfoDetailsModel2);
            }
            return arrayList;
        }
        throw new AssertionError();
    }

    public ArrayList<String> m11117b(String str) {
        ArrayList<String> arrayList = new ArrayList();
        Cursor query = this.f8877c.query(this.f8878d, null, "userId = ? ", new String[]{str}, "startTime DESC ");
        if (query != null && query.getCount() > 0) {
            while (query.moveToNext()) {
                String string = query.getString(query.getColumnIndex("happendate"));
                if (!TextUtils.isEmpty(string)) {
                    string = string.substring(0, string.lastIndexOf("-"));
                    if (!arrayList.contains(string)) {
                        arrayList.add(string);
                    }
                }
            }
            query.close();
        }
        com.yf.gattlib.p117p.ProGuard.m8292a("RunningTrainingDBUtil \u67e5\u8be2\u5230\u7684\u6240\u6709\u65e5\u671f = " + arrayList);
        return arrayList;
    }

    public boolean m11116a(String str, String str2) {
        Cursor query = this.f8877c.query(this.f8878d, null, "userId = ? AND startTime = ? ", new String[]{str, str2}, null);
        if (query == null || query.getCount() <= 0) {
            return false;
        }
        query.close();
        return true;
    }

    public void m11115a(ArrayList<RunInfoDetailsModel> arrayList) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            RunInfoDetailsModel runInfoDetailsModel = (RunInfoDetailsModel) it.next();
            String str = runInfoDetailsModel.userId;
            String str2 = runInfoDetailsModel.runid;
            ContentValues contentValues = new ContentValues();
            contentValues.put("userId", str);
            contentValues.put("runid", runInfoDetailsModel.runid);
            contentValues.put("happendate", runInfoDetailsModel.happenDate);
            contentValues.put("distance", runInfoDetailsModel.distance);
            contentValues.put("ps", runInfoDetailsModel.ps);
            contentValues.put("time", runInfoDetailsModel.time);
            contentValues.put("gjflag", runInfoDetailsModel.gjflag);
            contentValues.put("url", runInfoDetailsModel.url);
            contentValues.put("startTime", runInfoDetailsModel.startTime);
            contentValues.put("endTime", runInfoDetailsModel.endTime);
            if (m11116a(str, runInfoDetailsModel.startTime)) {
                this.f8877c.update(this.f8878d, contentValues, "userId = ? AND runid = ? ", new String[]{str, str2});
            } else {
                this.f8877c.insert(this.f8878d, contentValues);
            }
        }
    }

    public boolean m11118c(String str) {
        long delete = (long) this.f8877c.delete(this.f8878d, "runid = ? ", new String[]{str});
        com.yf.gattlib.p117p.ProGuard.m8292a("RunningTrainingDBUtil \u5220\u9664\u8dd1\u6b65\u4fe1\u606f\u7ed3\u679c = " + delete);
        if (delete > 0) {
            return true;
        }
        return false;
    }

    private String m11109d(String str) {
        if (str.contains("-01")) {
            return this.f8879e.getString(R.string.january);
        }
        if (str.contains("-02")) {
            return this.f8879e.getString(R.string.february);
        }
        if (str.contains("-03")) {
            return this.f8879e.getString(R.string.march);
        }
        if (str.contains("-04")) {
            return this.f8879e.getString(R.string.april);
        }
        if (str.contains("-05")) {
            return this.f8879e.getString(R.string.may);
        }
        if (str.contains("-06")) {
            return this.f8879e.getString(R.string.june);
        }
        if (str.contains("-07")) {
            return this.f8879e.getString(R.string.july);
        }
        if (str.contains("-08")) {
            return this.f8879e.getString(R.string.august);
        }
        if (str.contains("-09")) {
            return this.f8879e.getString(R.string.september);
        }
        if (str.contains("-10")) {
            return this.f8879e.getString(R.string.october);
        }
        if (str.contains("-11")) {
            return this.f8879e.getString(R.string.november);
        }
        if (str.contains("-12")) {
            return this.f8879e.getString(R.string.december);
        }
        return "";
    }

    private double m11110e(String str) {
        double d = 0.0d;
        try {
            return Double.parseDouble(str) / 1000.0d;
        } catch (Exception e) {
            e.printStackTrace();
            return d;
        }
    }

    private double m11111f(String str) {
        double d = 0.0d;
        try {
            d = Double.parseDouble(str);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return d;
    }

    private String m11112g(String str) {
        try {
            int parseInt = Integer.parseInt(str);
            int i = parseInt / 60;
            int i2 = parseInt % 60;
            return (i < 10 ? "0" + i : Integer.valueOf(i)) + "'" + (i2 < 10 ? "0" + i2 : Integer.valueOf(i2)) + "''";
        } catch (Exception e) {
            return "00'00''";
        }
    }

    private String m11113h(String str) {
        try {
            int abs = Math.abs(Integer.parseInt(str));
            int i = abs / 60;
            int i2 = abs % 60;
            return (i < 10 ? "0" + i : Integer.valueOf(i)) + ":" + (i2 < 10 ? "0" + i2 : Integer.valueOf(i2));
        } catch (Exception e) {
            return "00:00";
        }
    }
}
