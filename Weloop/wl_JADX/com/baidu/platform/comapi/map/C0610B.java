package com.baidu.platform.comapi.map;

import android.graphics.Point;
import com.baidu.platform.comapi.p086a.C0596b;
import com.baidu.platform.comjni.map.basemap.C0643a;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.baidu.platform.comapi.map.B */
public class C0610B {
    private C0643a f4747a;

    public C0610B(C0643a c0643a) {
        this.f4747a = c0643a;
    }

    public Point m6492a(C0596b c0596b) {
        if (c0596b == null) {
            return null;
        }
        Point point = new Point(0, 0);
        String b = this.f4747a.m6638b(c0596b.m6426b(), c0596b.m6424a());
        if (b == null) {
            return point;
        }
        try {
            JSONObject jSONObject = new JSONObject(b);
            point.x = jSONObject.getInt("scrx");
            point.y = jSONObject.getInt("scry");
            return point;
        } catch (JSONException e) {
            e.printStackTrace();
            return point;
        }
    }

    public C0596b m6493a(int i, int i2) {
        String a = this.f4747a.m6625a(i, i2);
        C0596b c0596b = new C0596b(0, 0);
        if (a != null) {
            try {
                JSONObject jSONObject = new JSONObject(a);
                c0596b.m6427b(jSONObject.getInt("geox"));
                c0596b.m6425a(jSONObject.getInt("geoy"));
                return c0596b;
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        return null;
    }
}
