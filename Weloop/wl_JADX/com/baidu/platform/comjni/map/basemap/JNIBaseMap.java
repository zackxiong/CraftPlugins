package com.baidu.platform.comjni.map.basemap;

import android.os.Bundle;

public class JNIBaseMap {
    int f4906a;

    public static native int MapProc(int i, int i2, int i3, int i4);

    public native int AddLayer(int i, int i2, int i3, String str);

    public native void ClearLayer(int i, int i2);

    public native int Create();

    public native int CreateDuplicate(int i);

    public native String GeoPtToScrPoint(int i, int i2, int i3);

    public native boolean GetBaiduHotMapCityInfo(int i);

    public native Bundle GetMapStatus(int i);

    public native String GetNearlyObjID(int i, int i2, int i3, int i4, int i5);

    public native int[] GetScreenBuf(int i, int[] iArr, int i2, int i3);

    public native float GetZoomToBound(int i, Bundle bundle);

    public native boolean Init(int i, String str, String str2, String str3, String str4, String str5, String str6, int i2, int i3, int i4, int i5, int i6, int i7, int i8);

    public native String OnHotcityGet(int i);

    public native void OnPause(int i);

    public native boolean OnRecordAdd(int i, int i2);

    public native String OnRecordGetAll(int i);

    public native String OnRecordGetAt(int i, int i2);

    public native boolean OnRecordImport(int i, boolean z, boolean z2);

    public native boolean OnRecordRemove(int i, int i2, boolean z);

    public native boolean OnRecordStart(int i, int i2, boolean z, int i3);

    public native boolean OnRecordSuspend(int i, int i2, boolean z, int i3);

    public native void OnResume(int i);

    public native String OnSchcityGet(int i, String str);

    public native void PostStatInfo(int i);

    public native int Release(int i);

    public native void ResetImageRes(int i);

    public native void SaveScreenToLocal(int i, String str, Bundle bundle);

    public native String ScrPtToGeoPoint(int i, int i2, int i3);

    public native int SetCallback(int i, BaseMapCallback baseMapCallback);

    public native int SetMapControlMode(int i, int i2);

    public native void SetMapStatus(int i, Bundle bundle);

    public native void ShowHotMap(int i, boolean z);

    public native void ShowLayers(int i, int i2, boolean z);

    public native void ShowSatelliteMap(int i, boolean z);

    public native void ShowTrafficMap(int i, boolean z);

    public native void UpdateLayers(int i, int i2);

    public native void addOneOverlayItem(int i, Bundle bundle);

    public native void clearHeatMapLayerCache(int i);

    public native void enableDrawHouseHeight(int i, boolean z);

    public native Bundle getDrawingMapStatus(int i);

    public native boolean isDrawHouseHeightEnable(int i);

    public native void removeOneOverlayItem(int i, Bundle bundle);

    public native void updateOneOverlayItem(int i, Bundle bundle);
}
