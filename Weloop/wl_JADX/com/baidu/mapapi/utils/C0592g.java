package com.baidu.mapapi.utils;

import com.baidu.mapapi.map.offline.MKOLSearchRecord;
import com.baidu.mapapi.map.offline.MKOLUpdateElement;
import com.baidu.mapapi.model.C0579a;
import com.baidu.platform.comapi.map.C0628p;
import com.baidu.platform.comapi.map.C0631s;
import com.baidu.platform.comapi.p086a.C0596b;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: com.baidu.mapapi.utils.g */
public class C0592g {
    public static MKOLSearchRecord m6407a(C0628p c0628p) {
        if (c0628p == null) {
            return null;
        }
        int i;
        MKOLSearchRecord mKOLSearchRecord = new MKOLSearchRecord();
        mKOLSearchRecord.cityID = c0628p.f4829a;
        mKOLSearchRecord.cityName = c0628p.f4830b;
        mKOLSearchRecord.cityType = c0628p.f4832d;
        if (c0628p.m6583a() != null) {
            ArrayList arrayList = new ArrayList();
            Iterator it = c0628p.m6583a().iterator();
            i = 0;
            while (it.hasNext()) {
                C0628p c0628p2 = (C0628p) it.next();
                arrayList.add(C0592g.m6407a(c0628p2));
                int i2 = c0628p2.f4831c + i;
                mKOLSearchRecord.childCities = arrayList;
                i = i2;
            }
        } else {
            i = 0;
        }
        if (mKOLSearchRecord.cityType == 1) {
            mKOLSearchRecord.size = i;
        } else {
            mKOLSearchRecord.size = c0628p.f4831c;
        }
        return mKOLSearchRecord;
    }

    public static MKOLUpdateElement m6408a(C0631s c0631s) {
        if (c0631s == null) {
            return null;
        }
        MKOLUpdateElement mKOLUpdateElement = new MKOLUpdateElement();
        mKOLUpdateElement.cityID = c0631s.f4840a;
        mKOLUpdateElement.cityName = c0631s.f4841b;
        if (c0631s.f4846g != null) {
            mKOLUpdateElement.geoPt = C0579a.m6356a(new C0596b(c0631s.f4846g.m6430b(), c0631s.f4846g.m6428a()));
        }
        mKOLUpdateElement.level = c0631s.f4844e;
        mKOLUpdateElement.ratio = c0631s.f4848i;
        mKOLUpdateElement.serversize = c0631s.f4847h;
        if (c0631s.f4848i == 100) {
            mKOLUpdateElement.size = c0631s.f4847h;
        } else {
            mKOLUpdateElement.size = (c0631s.f4847h / 100) * c0631s.f4848i;
        }
        mKOLUpdateElement.status = c0631s.f4851l;
        mKOLUpdateElement.update = c0631s.f4849j;
        return mKOLUpdateElement;
    }
}
