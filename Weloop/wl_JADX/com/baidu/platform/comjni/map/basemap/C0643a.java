package com.baidu.platform.comjni.map.basemap;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.baidu.platform.comjni.map.basemap.a */
public class C0643a {
    private static final String f4907a;
    private static List<JNIBaseMap> f4908d;
    private int f4909b;
    private JNIBaseMap f4910c;

    static {
        f4907a = C0643a.class.getSimpleName();
        f4908d = new ArrayList();
    }

    public C0643a() {
        this.f4909b = 0;
        this.f4910c = null;
        this.f4910c = new JNIBaseMap();
    }

    public static int m6622b(int i, int i2, int i3, int i4) {
        return JNIBaseMap.MapProc(i, i2, i3, i4);
    }

    public int m6623a(int i) {
        return this.f4910c.SetMapControlMode(this.f4909b, i);
    }

    public int m6624a(int i, int i2, String str) {
        return this.f4910c.AddLayer(this.f4909b, i, i2, str);
    }

    public String m6625a(int i, int i2) {
        return this.f4910c.ScrPtToGeoPoint(this.f4909b, i, i2);
    }

    public String m6626a(int i, int i2, int i3, int i4) {
        return this.f4910c.GetNearlyObjID(this.f4909b, i, i2, i3, i4);
    }

    public String m6627a(String str) {
        return this.f4910c.OnSchcityGet(this.f4909b, str);
    }

    public void m6628a(int i, boolean z) {
        this.f4910c.ShowLayers(this.f4909b, i, z);
    }

    public void m6629a(Bundle bundle) {
        this.f4910c.SetMapStatus(this.f4909b, bundle);
    }

    public void m6630a(String str, Bundle bundle) {
        this.f4910c.SaveScreenToLocal(this.f4909b, str, bundle);
    }

    public void m6631a(boolean z) {
        this.f4910c.ShowSatelliteMap(this.f4909b, z);
    }

    public boolean m6632a() {
        if (f4908d.size() == 0) {
            this.f4909b = this.f4910c.Create();
        } else {
            this.f4909b = this.f4910c.CreateDuplicate(((JNIBaseMap) f4908d.get(0)).f4906a);
        }
        this.f4910c.f4906a = this.f4909b;
        f4908d.add(this.f4910c);
        this.f4910c.SetCallback(this.f4909b, null);
        return true;
    }

    public boolean m6633a(int i, boolean z, int i2) {
        return this.f4910c.OnRecordStart(this.f4909b, i, z, i2);
    }

    public boolean m6634a(String str, String str2, String str3, String str4, String str5, String str6, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        return this.f4910c.Init(this.f4909b, str, str2, str3, str4, str5, str6, i, i2, i3, i4, i5, i6, i7);
    }

    public boolean m6635a(boolean z, boolean z2) {
        return this.f4910c.OnRecordImport(this.f4909b, z, z2);
    }

    public int[] m6636a(int[] iArr, int i, int i2) {
        return this.f4910c.GetScreenBuf(this.f4909b, iArr, i, i2);
    }

    public float m6637b(Bundle bundle) {
        return this.f4910c.GetZoomToBound(this.f4909b, bundle);
    }

    public String m6638b(int i, int i2) {
        return this.f4910c.GeoPtToScrPoint(this.f4909b, i, i2);
    }

    public void m6639b(int i) {
        this.f4910c.UpdateLayers(this.f4909b, i);
    }

    public void m6640b(boolean z) {
        this.f4910c.ShowHotMap(this.f4909b, z);
    }

    public boolean m6641b() {
        this.f4910c.Release(this.f4909b);
        f4908d.remove(this.f4910c);
        return true;
    }

    public boolean m6642b(int i, boolean z) {
        return this.f4910c.OnRecordRemove(this.f4909b, i, z);
    }

    public boolean m6643b(int i, boolean z, int i2) {
        return this.f4910c.OnRecordSuspend(this.f4909b, i, z, i2);
    }

    public int m6644c() {
        return this.f4909b;
    }

    public void m6645c(int i) {
        this.f4910c.ClearLayer(this.f4909b, i);
    }

    public void m6646c(Bundle bundle) {
        this.f4910c.addOneOverlayItem(this.f4909b, bundle);
    }

    public void m6647c(boolean z) {
        this.f4910c.ShowTrafficMap(this.f4909b, z);
    }

    public void m6648d() {
        this.f4910c.OnPause(this.f4909b);
    }

    public void m6649d(Bundle bundle) {
        this.f4910c.updateOneOverlayItem(this.f4909b, bundle);
    }

    public void m6650d(boolean z) {
        this.f4910c.enableDrawHouseHeight(this.f4909b, z);
    }

    public boolean m6651d(int i) {
        return this.f4910c.OnRecordAdd(this.f4909b, i);
    }

    public String m6652e(int i) {
        return this.f4910c.OnRecordGetAt(this.f4909b, i);
    }

    public void m6653e() {
        this.f4910c.OnResume(this.f4909b);
    }

    public void m6654e(Bundle bundle) {
        this.f4910c.removeOneOverlayItem(this.f4909b, bundle);
    }

    public void m6655f() {
        this.f4910c.ResetImageRes(this.f4909b);
    }

    public Bundle m6656g() {
        return this.f4910c.GetMapStatus(this.f4909b);
    }

    public Bundle m6657h() {
        return this.f4910c.getDrawingMapStatus(this.f4909b);
    }

    public boolean m6658i() {
        return this.f4910c.GetBaiduHotMapCityInfo(this.f4909b);
    }

    public String m6659j() {
        return this.f4910c.OnRecordGetAll(this.f4909b);
    }

    public String m6660k() {
        return this.f4910c.OnHotcityGet(this.f4909b);
    }

    public void m6661l() {
        this.f4910c.PostStatInfo(this.f4909b);
    }

    public boolean m6662m() {
        return this.f4910c.isDrawHouseHeightEnable(this.f4909b);
    }

    public void m6663n() {
        this.f4910c.clearHeatMapLayerCache(this.f4909b);
    }
}
