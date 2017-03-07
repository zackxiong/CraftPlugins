package com.baidu.mapapi.map.offline;

import com.baidu.mapapi.C0556a;
import com.baidu.mapapi.utils.C0592g;
import com.baidu.platform.comapi.map.C0628p;
import com.baidu.platform.comapi.map.C0629q;
import com.baidu.platform.comapi.map.C0632t;
import java.util.ArrayList;
import java.util.Iterator;

public class MKOfflineMap {
    public static final int TYPE_DOWNLOAD_UPDATE = 0;
    public static final int TYPE_NEW_OFFLINE = 6;
    public static final int TYPE_VER_UPDATE = 4;
    private static final String f4510a;
    private C0629q f4511b;
    private MKOfflineMapListener f4512c;

    static {
        f4510a = MKOfflineMap.class.getSimpleName();
    }

    public void destroy() {
        this.f4511b.m6600d(TYPE_DOWNLOAD_UPDATE);
        this.f4511b.m6595b(null);
        this.f4511b.m6594b();
        C0556a.m6153a().m6161d();
    }

    public ArrayList<MKOLUpdateElement> getAllUpdateInfo() {
        ArrayList e = this.f4511b.m6601e();
        if (e == null) {
            return null;
        }
        ArrayList<MKOLUpdateElement> arrayList = new ArrayList();
        Iterator it = e.iterator();
        while (it.hasNext()) {
            arrayList.add(C0592g.m6408a(((C0632t) it.next()).m6604a()));
        }
        return arrayList;
    }

    public ArrayList<MKOLSearchRecord> getHotCityList() {
        ArrayList c = this.f4511b.m6597c();
        if (c == null) {
            return null;
        }
        ArrayList<MKOLSearchRecord> arrayList = new ArrayList();
        Iterator it = c.iterator();
        while (it.hasNext()) {
            arrayList.add(C0592g.m6407a((C0628p) it.next()));
        }
        return arrayList;
    }

    public ArrayList<MKOLSearchRecord> getOfflineCityList() {
        ArrayList d = this.f4511b.m6599d();
        if (d == null) {
            return null;
        }
        ArrayList<MKOLSearchRecord> arrayList = new ArrayList();
        Iterator it = d.iterator();
        while (it.hasNext()) {
            arrayList.add(C0592g.m6407a((C0628p) it.next()));
        }
        return arrayList;
    }

    public MKOLUpdateElement getUpdateInfo(int i) {
        C0632t f = this.f4511b.m6603f(i);
        return f == null ? null : C0592g.m6408a(f.m6604a());
    }

    public int importOfflineData() {
        return importOfflineData(false);
    }

    public int importOfflineData(boolean z) {
        int i;
        int i2 = TYPE_DOWNLOAD_UPDATE;
        ArrayList e = this.f4511b.m6601e();
        if (e != null) {
            i2 = e.size();
            i = i2;
        } else {
            i = TYPE_DOWNLOAD_UPDATE;
        }
        this.f4511b.m6593a(z, true);
        ArrayList e2 = this.f4511b.m6601e();
        if (e2 != null) {
            i2 = e2.size();
        }
        return i2 - i;
    }

    public boolean init(MKOfflineMapListener mKOfflineMapListener) {
        C0556a.m6153a().m6159b();
        this.f4511b = C0629q.m6585a();
        if (this.f4511b == null) {
            return false;
        }
        this.f4511b.m6591a(new C0577a(this));
        this.f4512c = mKOfflineMapListener;
        return true;
    }

    public boolean pause(int i) {
        return this.f4511b.m6598c(i);
    }

    public boolean remove(int i) {
        return this.f4511b.m6602e(i);
    }

    public ArrayList<MKOLSearchRecord> searchCity(String str) {
        ArrayList a = this.f4511b.m6590a(str);
        if (a == null) {
            return null;
        }
        ArrayList<MKOLSearchRecord> arrayList = new ArrayList();
        Iterator it = a.iterator();
        while (it.hasNext()) {
            arrayList.add(C0592g.m6407a((C0628p) it.next()));
        }
        return arrayList;
    }

    public boolean start(int i) {
        if (this.f4511b == null) {
            return false;
        }
        if (this.f4511b.m6601e() != null) {
            Iterator it = this.f4511b.m6601e().iterator();
            while (it.hasNext()) {
                C0632t c0632t = (C0632t) it.next();
                if (c0632t.f4852a.f4840a == i) {
                    return (c0632t.f4852a.f4849j || c0632t.f4852a.f4851l == 2 || c0632t.f4852a.f4851l == 3 || c0632t.f4852a.f4851l == TYPE_NEW_OFFLINE) ? this.f4511b.m6596b(i) : false;
                }
            }
        }
        return this.f4511b.m6592a(i);
    }
}
