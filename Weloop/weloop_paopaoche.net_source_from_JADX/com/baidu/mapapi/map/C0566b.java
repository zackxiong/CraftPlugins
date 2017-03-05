package com.baidu.mapapi.map;

import android.graphics.Bitmap;
import android.graphics.Point;
import android.view.MotionEvent;
import com.baidu.mapapi.map.BaiduMap.OnMarkerClickListener;
import com.baidu.mapapi.map.InfoWindow.OnInfoWindowClickListener;
import com.baidu.mapapi.model.C0579a;
import com.baidu.platform.comapi.map.C0565h;
import com.baidu.platform.comapi.map.C0639z;
import com.baidu.platform.comapi.p086a.C0596b;
import java.util.Iterator;
import javax.microedition.khronos.opengles.GL10;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.baidu.mapapi.map.b */
class C0566b implements C0565h {
    final /* synthetic */ BaiduMap f4488a;

    C0566b(BaiduMap baiduMap) {
        this.f4488a = baiduMap;
    }

    public void m6302a() {
    }

    public void m6303a(Bitmap bitmap) {
        if (this.f4488a.f4247r != null) {
            this.f4488a.f4247r.onSnapshotReady(bitmap);
        }
    }

    public void m6304a(MotionEvent motionEvent) {
        if (this.f4488a.f4239j != null) {
            this.f4488a.f4239j.onTouch(motionEvent);
        }
    }

    public void m6305a(C0596b c0596b) {
        if (this.f4488a.f4240k != null) {
            this.f4488a.f4240k.onMapClick(C0579a.m6356a(c0596b));
        }
    }

    public void m6306a(C0639z c0639z) {
        if (this.f4488a.f4253x != null) {
            this.f4488a.f4253x.setVisibility(4);
        }
        if (this.f4488a.f4238i != null) {
            this.f4488a.f4238i.onMapStatusChangeStart(MapStatus.m6244a(c0639z));
        }
    }

    public void m6307a(String str) {
        try {
            JSONObject optJSONObject = new JSONObject(str).optJSONArray("dataset").optJSONObject(0);
            int optInt = optJSONObject.optInt("ty");
            if (optInt == 17) {
                if (this.f4488a.f4240k != null) {
                    MapPoi mapPoi = new MapPoi();
                    mapPoi.m6243a(optJSONObject);
                    this.f4488a.f4240k.onMapPoiClick(mapPoi);
                }
            } else if (optInt == 18) {
                if (this.f4488a.f4246q != null) {
                    this.f4488a.f4246q.onMyLocationClick();
                }
            } else if (optInt == 19) {
                C0639z p = this.f4488a.f4234e.m6577p();
                p.f4884c = 0;
                p.f4883b = 0;
                this.f4488a.f4234e.m6545a(p, 300);
            } else if (optInt == 90909) {
                String optString = optJSONObject.optString("marker_id");
                if (this.f4488a.f4251v == null || !optString.equals(this.f4488a.f4252w.n)) {
                    for (Overlay overlay : this.f4488a.f4235f) {
                        if ((overlay instanceof Marker) && overlay.f4207n.equals(optString) && this.f4488a.f4244o != null) {
                            Iterator it = this.f4488a.f4244o.iterator();
                            while (it.hasNext()) {
                                ((OnMarkerClickListener) it.next()).onMarkerClick((Marker) overlay);
                            }
                            return;
                        }
                    }
                    return;
                }
                OnInfoWindowClickListener onInfoWindowClickListener = this.f4488a.f4251v.f4340d;
                if (onInfoWindowClickListener != null) {
                    onInfoWindowClickListener.onInfoWindowClick();
                }
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public void m6308a(GL10 gl10, C0639z c0639z) {
        if (this.f4488a.f4248s != null) {
            this.f4488a.f4248s.onMapDrawFrame(gl10, MapStatus.m6244a(c0639z));
        }
    }

    public void m6309b() {
        this.f4488a.f4232c = new Projection(this.f4488a.f4234e);
        this.f4488a.f4230B = true;
        if (this.f4488a.f4241l != null) {
            this.f4488a.f4241l.onMapLoaded();
        }
    }

    public void m6310b(C0596b c0596b) {
        if (this.f4488a.f4242m != null) {
            this.f4488a.f4242m.onMapDoubleClick(C0579a.m6356a(c0596b));
        }
    }

    public void m6311b(C0639z c0639z) {
        if (this.f4488a.f4238i != null) {
            this.f4488a.f4238i.onMapStatusChange(MapStatus.m6244a(c0639z));
        }
    }

    public boolean m6312b(String str) {
        try {
            JSONObject optJSONObject = new JSONObject(str).optJSONArray("dataset").optJSONObject(0);
            if (optJSONObject.optInt("ty") == 90909) {
                String optString = optJSONObject.optString("marker_id");
                if (this.f4488a.f4252w == null || !optString.equals(this.f4488a.f4252w.n)) {
                    for (Overlay overlay : this.f4488a.f4235f) {
                        if ((overlay instanceof Marker) && overlay.f4207n.equals(optString)) {
                            Marker marker = (Marker) overlay;
                            if (marker.f4405f) {
                                this.f4488a.f4254y = marker;
                                Point toScreenLocation = this.f4488a.f4232c.toScreenLocation(this.f4488a.f4254y.f4400a);
                                this.f4488a.f4254y.setPosition(this.f4488a.f4232c.fromScreenLocation(new Point(toScreenLocation.x, toScreenLocation.y - 60)));
                                if (this.f4488a.f4245p != null) {
                                    this.f4488a.f4245p.onMarkerDragStart(this.f4488a.f4254y);
                                }
                                return true;
                            }
                        }
                    }
                }
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return false;
    }

    public void m6313c() {
        this.f4488a.f4250u.lock();
        try {
            if (this.f4488a.f4249t != null) {
                this.f4488a.f4249t.m6240a();
            }
            this.f4488a.f4250u.unlock();
        } catch (Throwable th) {
            this.f4488a.f4250u.unlock();
        }
    }

    public void m6314c(C0596b c0596b) {
        if (this.f4488a.f4243n != null) {
            this.f4488a.f4243n.onMapLongClick(C0579a.m6356a(c0596b));
        }
    }

    public void m6315c(C0639z c0639z) {
        if (this.f4488a.f4253x != null) {
            this.f4488a.f4253x.setVisibility(0);
        }
        if (this.f4488a.f4238i != null) {
            this.f4488a.f4238i.onMapStatusChangeFinish(MapStatus.m6244a(c0639z));
        }
    }

    public void m6316d() {
        this.f4488a.f4250u.lock();
        try {
            if (this.f4488a.f4249t != null) {
                this.f4488a.f4249t.m6240a();
                this.f4488a.f4234e.m6581t();
            }
            this.f4488a.f4250u.unlock();
        } catch (Throwable th) {
            this.f4488a.f4250u.unlock();
        }
    }

    public void m6317d(C0596b c0596b) {
        if (this.f4488a.f4254y != null && this.f4488a.f4254y.f4405f) {
            Point toScreenLocation = this.f4488a.f4232c.toScreenLocation(C0579a.m6356a(c0596b));
            this.f4488a.f4254y.setPosition(this.f4488a.f4232c.fromScreenLocation(new Point(toScreenLocation.x, toScreenLocation.y - 60)));
            if (this.f4488a.f4245p != null && this.f4488a.f4254y.f4405f) {
                this.f4488a.f4245p.onMarkerDrag(this.f4488a.f4254y);
            }
        }
    }

    public void m6318e() {
        this.f4488a.f4234e.m6548a(false);
        this.f4488a.f4250u.lock();
        try {
            if (this.f4488a.f4249t != null) {
                this.f4488a.m6200a(this.f4488a.f4249t);
            }
            this.f4488a.f4250u.unlock();
        } catch (Throwable th) {
            this.f4488a.f4250u.unlock();
        }
    }

    public void m6319e(C0596b c0596b) {
        if (this.f4488a.f4254y != null && this.f4488a.f4254y.f4405f) {
            Point toScreenLocation = this.f4488a.f4232c.toScreenLocation(C0579a.m6356a(c0596b));
            this.f4488a.f4254y.setPosition(this.f4488a.f4232c.fromScreenLocation(new Point(toScreenLocation.x, toScreenLocation.y - 60)));
            if (this.f4488a.f4245p != null && this.f4488a.f4254y.f4405f) {
                this.f4488a.f4245p.onMarkerDragEnd(this.f4488a.f4254y);
            }
            this.f4488a.f4254y = null;
        }
    }
}
