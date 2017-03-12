package com.baidu.mapapi.map;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.MotionEvent;
import android.view.View;
import com.baidu.mapapi.map.MapStatus.Builder;
import com.baidu.mapapi.map.MapViewLayoutParams.ELayoutMode;
import com.baidu.mapapi.map.MyLocationConfiguration.LocationMode;
import com.baidu.mapapi.map.Overlay.C0562a;
import com.baidu.mapapi.model.C0579a;
import com.baidu.mapapi.model.LatLng;
import com.baidu.platform.comapi.map.C0617e;
import com.baidu.platform.comapi.map.C0620f;
import com.baidu.platform.comapi.map.C0639z;
import com.baidu.platform.comapi.p086a.C0596b;
import com.baidu.platform.comjni.tools.ParcelItem;
import com.umeng.update.ProGuard;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import javax.microedition.khronos.opengles.GL10;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class BaiduMap {
    public static final int MAP_TYPE_NORMAL = 1;
    public static final int MAP_TYPE_SATELLITE = 2;
    private static final String f4228b;
    private MyLocationConfiguration f4229A;
    private boolean f4230B;
    MapView f4231a;
    private Projection f4232c;
    private UiSettings f4233d;
    private C0620f f4234e;
    private List<Overlay> f4235f;
    private List<Marker> f4236g;
    private C0562a f4237h;
    private OnMapStatusChangeListener f4238i;
    private OnMapTouchListener f4239j;
    private OnMapClickListener f4240k;
    private OnMapLoadedCallback f4241l;
    private OnMapDoubleClickListener f4242m;
    private OnMapLongClickListener f4243n;
    private ArrayList<OnMarkerClickListener> f4244o;
    private OnMarkerDragListener f4245p;
    private OnMyLocationClickListener f4246q;
    private SnapshotReadyCallback f4247r;
    private OnMapDrawFrameCallback f4248s;
    private HeatMap f4249t;
    private Lock f4250u;
    private InfoWindow f4251v;
    private Marker f4252w;
    private View f4253x;
    private Marker f4254y;
    private MyLocationData f4255z;

    /* renamed from: com.baidu.mapapi.map.BaiduMap.1 */
    static /* synthetic */ class C05591 {
        static final /* synthetic */ int[] f4227a;

        static {
            f4227a = new int[LocationMode.values().length];
            try {
                f4227a[LocationMode.COMPASS.ordinal()] = BaiduMap.MAP_TYPE_NORMAL;
            } catch (NoSuchFieldError e) {
            }
            try {
                f4227a[LocationMode.FOLLOWING.ordinal()] = BaiduMap.MAP_TYPE_SATELLITE;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f4227a[LocationMode.NORMAL.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public interface OnMapClickListener {
        void onMapClick(LatLng latLng);

        boolean onMapPoiClick(MapPoi mapPoi);
    }

    public interface OnMapDoubleClickListener {
        void onMapDoubleClick(LatLng latLng);
    }

    public interface OnMapDrawFrameCallback {
        void onMapDrawFrame(GL10 gl10, MapStatus mapStatus);
    }

    public interface OnMapLoadedCallback {
        void onMapLoaded();
    }

    public interface OnMapLongClickListener {
        void onMapLongClick(LatLng latLng);
    }

    public interface OnMapStatusChangeListener {
        void onMapStatusChange(MapStatus mapStatus);

        void onMapStatusChangeFinish(MapStatus mapStatus);

        void onMapStatusChangeStart(MapStatus mapStatus);
    }

    public interface OnMapTouchListener {
        void onTouch(MotionEvent motionEvent);
    }

    public interface OnMarkerClickListener {
        boolean onMarkerClick(Marker marker);
    }

    public interface OnMarkerDragListener {
        void onMarkerDrag(Marker marker);

        void onMarkerDragEnd(Marker marker);

        void onMarkerDragStart(Marker marker);
    }

    public interface OnMyLocationClickListener {
        boolean onMyLocationClick();
    }

    public interface SnapshotReadyCallback {
        void onSnapshotReady(Bitmap bitmap);
    }

    static {
        f4228b = BaiduMap.class.getSimpleName();
    }

    BaiduMap(C0620f c0620f) {
        this.f4244o = new ArrayList();
        this.f4250u = new ReentrantLock();
        this.f4234e = c0620f;
        this.f4233d = new UiSettings(this.f4234e);
        this.f4235f = new LinkedList();
        this.f4236g = new LinkedList();
        this.f4237h = new C0564a(this);
        this.f4234e.m6541a(new C0566b(this));
        this.f4234e.m6542a(new C0568c(this));
    }

    private C0639z m6175a(MapStatusUpdate mapStatusUpdate) {
        return mapStatusUpdate.m6249a(this.f4234e, getMapStatus()).m6247b(this.f4234e.m6577p());
    }

    private final void m6177a(MyLocationData myLocationData, MyLocationConfiguration myLocationConfiguration) {
        if (myLocationData != null && myLocationConfiguration != null && isMyLocationEnabled()) {
            Bundle bundle;
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            JSONObject jSONObject2 = new JSONObject();
            JSONObject jSONObject3 = new JSONObject();
            LatLng latLng = new LatLng(myLocationData.latitude, myLocationData.longitude);
            C0596b a = C0579a.m6359a(latLng);
            try {
                jSONObject.put(ProGuard.f5475c, 0);
                jSONObject2.put("ptx", a.m6426b());
                jSONObject2.put("pty", a.m6424a());
                jSONObject2.put("radius", (double) ((float) C0579a.m6355a(latLng, (int) myLocationData.accuracy)));
                float f = myLocationData.direction;
                if (myLocationConfiguration.enableDirection) {
                    f = myLocationData.direction % 360.0f;
                    if (f > 180.0f) {
                        f -= 360.0f;
                    } else if (f < -180.0f) {
                        f += 360.0f;
                    }
                } else {
                    f = -1.0f;
                }
                jSONObject2.put("direction", (double) f);
                jSONObject2.put("iconarrownor", "NormalLocArrow");
                jSONObject2.put("iconarrownorid", 28);
                jSONObject2.put("iconarrowfoc", "FocusLocArrow");
                jSONObject2.put("iconarrowfocid", 29);
                jSONArray.put(jSONObject2);
                jSONObject.put("data", jSONArray);
                if (myLocationConfiguration.locationMode == LocationMode.COMPASS) {
                    jSONObject3.put("ptx", a.m6426b());
                    jSONObject3.put("pty", a.m6424a());
                    jSONObject3.put("radius", 0);
                    jSONObject3.put("direction", 0);
                    jSONObject3.put("iconarrownor", "direction_wheel");
                    jSONObject3.put("iconarrownorid", 54);
                    jSONObject3.put("iconarrowfoc", "direction_wheel");
                    jSONObject3.put("iconarrowfocid", 54);
                    jSONArray.put(jSONObject3);
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
            if (myLocationConfiguration.customMarker == null) {
                bundle = null;
            } else {
                List<BitmapDescriptor> arrayList = new ArrayList();
                arrayList.add(myLocationConfiguration.customMarker);
                Bundle bundle2 = new Bundle();
                ArrayList arrayList2 = new ArrayList();
                for (BitmapDescriptor bitmapDescriptor : arrayList) {
                    ParcelItem parcelItem = new ParcelItem();
                    Bundle bundle3 = new Bundle();
                    Bitmap bitmap = bitmapDescriptor.f4265a;
                    Buffer allocate = ByteBuffer.allocate((bitmap.getWidth() * bitmap.getHeight()) * 4);
                    bitmap.copyPixelsToBuffer(allocate);
                    bundle3.putByteArray("imgdata", allocate.array());
                    bundle3.putInt("imgindex", bitmapDescriptor.hashCode());
                    bundle3.putInt("imgH", bitmap.getHeight());
                    bundle3.putInt("imgW", bitmap.getWidth());
                    parcelItem.setBundle(bundle3);
                    arrayList2.add(parcelItem);
                }
                if (arrayList2.size() > 0) {
                    Parcelable[] parcelableArr = new ParcelItem[arrayList2.size()];
                    for (int i = 0; i < arrayList2.size(); i += MAP_TYPE_NORMAL) {
                        parcelableArr[i] = (ParcelItem) arrayList2.get(i);
                    }
                    bundle2.putParcelableArray("icondata", parcelableArr);
                }
                bundle = bundle2;
            }
            this.f4234e.m6547a(jSONObject.toString(), bundle);
            switch (C05591.f4227a[myLocationConfiguration.locationMode.ordinal()]) {
                case MAP_TYPE_NORMAL /*1*/:
                    animateMapStatus(MapStatusUpdateFactory.newMapStatus(new Builder().rotate(myLocationData.direction).overlook(-45.0f).target(new LatLng(myLocationData.latitude, myLocationData.longitude)).targetScreen(getMapStatus().targetScreen).zoom(getMapStatus().zoom).build()));
                case MAP_TYPE_SATELLITE /*2*/:
                    animateMapStatus(MapStatusUpdateFactory.newMapStatus(new Builder().target(new LatLng(myLocationData.latitude, myLocationData.longitude)).zoom(getMapStatus().zoom).rotate(getMapStatus().rotate).overlook(getMapStatus().overlook).targetScreen(getMapStatus().targetScreen).build()));
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                default:
            }
        }
    }

    void m6199a() {
        this.f4234e.m6568j();
    }

    void m6200a(HeatMap heatMap) {
        this.f4250u.lock();
        try {
            if (this.f4249t != null && heatMap == this.f4249t) {
                this.f4249t.m6241b();
                this.f4249t.m6242c();
                this.f4249t.f4324a = null;
                this.f4234e.m6581t();
                this.f4249t = null;
                this.f4234e.m6564h(false);
            }
            this.f4250u.unlock();
        } catch (Throwable th) {
            this.f4250u.unlock();
        }
    }

    public void addHeatMap(HeatMap heatMap) {
        if (heatMap != null) {
            this.f4250u.lock();
            try {
                if (heatMap != this.f4249t) {
                    if (this.f4249t != null) {
                        this.f4249t.m6241b();
                        this.f4249t.m6242c();
                        this.f4249t.f4324a = null;
                        this.f4234e.m6581t();
                    }
                    this.f4249t = heatMap;
                    this.f4249t.f4324a = this;
                    this.f4234e.m6564h(true);
                    this.f4250u.unlock();
                }
            } finally {
                this.f4250u.unlock();
            }
        }
    }

    public final Overlay addOverlay(OverlayOptions overlayOptions) {
        Overlay a = overlayOptions.m6171a();
        a.listener = this.f4237h;
        if (a instanceof Marker) {
            Marker marker = (Marker) a;
            if (!(marker.f4411l == null || marker.f4411l.size() == 0)) {
                this.f4236g.add(marker);
                this.f4234e.m6548a(true);
            }
        }
        Bundle bundle = new Bundle();
        a.m6169a(bundle);
        this.f4234e.m6539a(bundle);
        this.f4235f.add(a);
        return a;
    }

    public final void animateMapStatus(MapStatusUpdate mapStatusUpdate) {
        animateMapStatus(mapStatusUpdate, 300);
    }

    public final void animateMapStatus(MapStatusUpdate mapStatusUpdate, int i) {
        if (mapStatusUpdate != null && i > 0) {
            C0639z a = m6175a(mapStatusUpdate);
            if (this.f4230B) {
                this.f4234e.m6545a(a, i);
            } else {
                this.f4234e.m6544a(a);
            }
        }
    }

    public final void clear() {
        this.f4235f.clear();
        this.f4236g.clear();
        this.f4234e.m6548a(false);
        this.f4234e.m6580s();
        hideInfoWindow();
    }

    public final MyLocationConfiguration getLocationConfigeration() {
        return this.f4229A;
    }

    public final MyLocationData getLocationData() {
        return this.f4255z;
    }

    public final MapStatus getMapStatus() {
        return MapStatus.m6244a(this.f4234e.m6577p());
    }

    public final int getMapType() {
        return this.f4234e.m6561f() ? MAP_TYPE_SATELLITE : MAP_TYPE_NORMAL;
    }

    public final float getMaxZoomLevel() {
        return this.f4234e.f4803a;
    }

    public final float getMinZoomLevel() {
        return this.f4234e.f4804b;
    }

    public final Projection getProjection() {
        return this.f4232c;
    }

    public final UiSettings getUiSettings() {
        return this.f4233d;
    }

    public void hideInfoWindow() {
        if (this.f4251v != null) {
            if (this.f4251v.f4338b != null) {
                this.f4231a.removeView(this.f4253x);
                this.f4253x = null;
            }
            this.f4251v = null;
            this.f4252w.remove();
            this.f4252w = null;
        }
    }

    public final boolean isBaiduHeatMapEnabled() {
        return this.f4234e.m6557d();
    }

    public final boolean isBuildingsEnabled() {
        return this.f4234e.m6563g();
    }

    public final boolean isMyLocationEnabled() {
        return this.f4234e.m6567i();
    }

    public final boolean isSupportBaiduHeatMap() {
        return this.f4234e.m6559e();
    }

    public final boolean isTrafficEnabled() {
        return this.f4234e.m6555c();
    }

    public final void removeMarkerClickListener(OnMarkerClickListener onMarkerClickListener) {
        if (this.f4244o.contains(onMarkerClickListener)) {
            this.f4244o.remove(onMarkerClickListener);
        }
    }

    public final void setBaiduHeatMapEnabled(boolean z) {
        this.f4234e.m6551b(z);
    }

    public final void setBuildingsEnabled(boolean z) {
        this.f4234e.m6558e(z);
    }

    public final void setMapStatus(MapStatusUpdate mapStatusUpdate) {
        if (mapStatusUpdate != null) {
            this.f4234e.m6544a(m6175a(mapStatusUpdate));
            if (this.f4238i != null) {
                this.f4238i.onMapStatusChange(getMapStatus());
            }
        }
    }

    public final void setMapType(int i) {
        if (i == MAP_TYPE_NORMAL) {
            this.f4234e.m6556d(false);
        } else if (i == MAP_TYPE_SATELLITE) {
            this.f4234e.m6556d(true);
        }
    }

    public final void setMaxAndMinZoomLevel(float f, float f2) {
        if (f <= 20.0f && f2 >= 3.0f && f >= f2) {
            this.f4234e.f4803a = f;
            this.f4234e.f4804b = f2;
        }
    }

    public final void setMyLocationConfigeration(MyLocationConfiguration myLocationConfiguration) {
        this.f4229A = myLocationConfiguration;
        m6177a(this.f4255z, this.f4229A);
    }

    public final void setMyLocationData(MyLocationData myLocationData) {
        this.f4255z = myLocationData;
        if (this.f4229A == null) {
            this.f4229A = new MyLocationConfiguration(LocationMode.NORMAL, false, null);
        }
        m6177a(myLocationData, this.f4229A);
    }

    public final void setMyLocationEnabled(boolean z) {
        this.f4234e.m6562g(z);
    }

    public final void setOnMapClickListener(OnMapClickListener onMapClickListener) {
        this.f4240k = onMapClickListener;
    }

    public final void setOnMapDoubleClickListener(OnMapDoubleClickListener onMapDoubleClickListener) {
        this.f4242m = onMapDoubleClickListener;
    }

    public final void setOnMapDrawFrameCallback(OnMapDrawFrameCallback onMapDrawFrameCallback) {
        this.f4248s = onMapDrawFrameCallback;
    }

    public void setOnMapLoadedCallback(OnMapLoadedCallback onMapLoadedCallback) {
        this.f4241l = onMapLoadedCallback;
    }

    public final void setOnMapLongClickListener(OnMapLongClickListener onMapLongClickListener) {
        this.f4243n = onMapLongClickListener;
    }

    public final void setOnMapStatusChangeListener(OnMapStatusChangeListener onMapStatusChangeListener) {
        this.f4238i = onMapStatusChangeListener;
    }

    public final void setOnMapTouchListener(OnMapTouchListener onMapTouchListener) {
        this.f4239j = onMapTouchListener;
    }

    public final void setOnMarkerClickListener(OnMarkerClickListener onMarkerClickListener) {
        if (onMarkerClickListener != null && !this.f4244o.contains(onMarkerClickListener)) {
            this.f4244o.add(onMarkerClickListener);
        }
    }

    public final void setOnMarkerDragListener(OnMarkerDragListener onMarkerDragListener) {
        this.f4245p = onMarkerDragListener;
    }

    public final void setOnMyLocationClickListener(OnMyLocationClickListener onMyLocationClickListener) {
        this.f4246q = onMyLocationClickListener;
    }

    public final void setTrafficEnabled(boolean z) {
        this.f4234e.m6554c(z);
    }

    public void showInfoWindow(InfoWindow infoWindow) {
        if (infoWindow != null) {
            hideInfoWindow();
            if (infoWindow.f4338b != null) {
                this.f4253x = infoWindow.f4338b;
                this.f4253x.destroyDrawingCache();
                this.f4231a.addView(this.f4253x, new MapViewLayoutParams.Builder().layoutMode(ELayoutMode.mapMode).position(infoWindow.f4339c).yOffset(infoWindow.f4341e).build());
            }
            this.f4251v = infoWindow;
            Overlay a = new MarkerOptions().perspective(false).icon(infoWindow.f4338b != null ? BitmapDescriptorFactory.fromView(infoWindow.f4338b) : infoWindow.f4337a).position(infoWindow.f4339c).zIndex(Integer.MAX_VALUE).m6267a(infoWindow.f4341e).m6268a();
            a.listener = this.f4237h;
            a.f4208o = C0617e.popup;
            Bundle bundle = new Bundle();
            a.m6169a(bundle);
            this.f4234e.m6539a(bundle);
            this.f4235f.add(a);
            this.f4252w = (Marker) a;
        }
    }

    public final void snapshot(SnapshotReadyCallback snapshotReadyCallback) {
        this.f4247r = snapshotReadyCallback;
        this.f4234e.m6546a("anything", null);
    }

    public final void snapshotScope(Rect rect, SnapshotReadyCallback snapshotReadyCallback) {
        this.f4247r = snapshotReadyCallback;
        this.f4234e.m6546a("anything", rect);
    }
}
