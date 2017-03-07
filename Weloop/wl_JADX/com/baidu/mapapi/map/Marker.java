package com.baidu.mapapi.map;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Parcelable;
import com.baidu.mapapi.model.C0579a;
import com.baidu.mapapi.model.LatLng;
import com.baidu.platform.comapi.map.C0617e;
import com.baidu.platform.comapi.p086a.C0596b;
import com.baidu.platform.comjni.tools.ParcelItem;
import com.umeng.update.util.ProGuard;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;

public final class Marker extends Overlay {
    LatLng f4400a;
    BitmapDescriptor f4401b;
    float f4402c;
    float f4403d;
    boolean f4404e;
    boolean f4405f;
    float f4406g;
    String f4407h;
    int f4408i;
    boolean f4409j;
    boolean f4410k;
    ArrayList<BitmapDescriptor> f4411l;
    int f4412m;

    Marker() {
        this.f4409j = false;
        this.f4410k = false;
        this.f4412m = 20;
        this.o = C0617e.marker;
    }

    private void m6265a(ArrayList<BitmapDescriptor> arrayList, Bundle bundle) {
        int i = 0;
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            BitmapDescriptor bitmapDescriptor = (BitmapDescriptor) it.next();
            ParcelItem parcelItem = new ParcelItem();
            Bundle bundle2 = new Bundle();
            Bitmap bitmap = bitmapDescriptor.f4265a;
            Buffer allocate = ByteBuffer.allocate((bitmap.getWidth() * bitmap.getHeight()) * 4);
            bitmap.copyPixelsToBuffer(allocate);
            byte[] array = allocate.array();
            bundle2.putByteArray("image_data", array);
            bundle2.putInt("image_width", bitmap.getWidth());
            bundle2.putInt("image_height", bitmap.getHeight());
            MessageDigest messageDigest = null;
            try {
                messageDigest = MessageDigest.getInstance("MD5");
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
            }
            messageDigest.update(array, 0, array.length);
            byte[] digest = messageDigest.digest();
            StringBuilder stringBuilder = new StringBuilder("");
            for (byte b : digest) {
                stringBuilder.append(Integer.toString((b & 255) + ProGuard.f5669b, 16).substring(1));
            }
            bundle2.putString("image_hashcode", stringBuilder.toString());
            parcelItem.setBundle(bundle2);
            arrayList2.add(parcelItem);
        }
        if (arrayList2.size() > 0) {
            Parcelable[] parcelableArr = new ParcelItem[arrayList2.size()];
            while (i < arrayList2.size()) {
                parcelableArr[i] = (ParcelItem) arrayList2.get(i);
                i++;
            }
            bundle.putParcelableArray("icons", parcelableArr);
        }
    }

    Bundle m6266a(Bundle bundle) {
        int i = 1;
        super.m6169a(bundle);
        Bundle bundle2 = new Bundle();
        if (this.f4401b != null) {
            bundle.putBundle("image_info", this.f4401b.m6204b());
        }
        C0596b a = C0579a.m6359a(this.f4400a);
        bundle.putInt("location_x", a.m6426b());
        bundle.putInt("location_y", a.m6424a());
        bundle.putInt("perspective", this.f4404e ? 1 : 0);
        bundle.putFloat("anchor_x", this.f4402c);
        bundle.putFloat("anchor_y", this.f4403d);
        bundle.putFloat("rotate", this.f4406g);
        bundle.putInt("y_offset", this.f4408i);
        bundle.putInt("isflat", this.f4409j ? 1 : 0);
        String str = "istop";
        if (!this.f4410k) {
            i = 0;
        }
        bundle.putInt(str, i);
        bundle.putInt("period", this.f4412m);
        if (this.f4411l != null && this.f4411l.size() > 0) {
            m6265a(this.f4411l, bundle);
        }
        bundle2.putBundle("param", bundle);
        return bundle;
    }

    public float getAnchorX() {
        return this.f4402c;
    }

    public float getAnchorY() {
        return this.f4403d;
    }

    public BitmapDescriptor getIcon() {
        return this.f4401b;
    }

    public ArrayList<BitmapDescriptor> getIcons() {
        return this.f4411l;
    }

    public int getPeriod() {
        return this.f4412m;
    }

    public LatLng getPosition() {
        return this.f4400a;
    }

    public float getRotate() {
        return this.f4406g;
    }

    public String getTitle() {
        return this.f4407h;
    }

    public boolean isDraggable() {
        return this.f4405f;
    }

    public boolean isFlat() {
        return this.f4409j;
    }

    public boolean isPerspective() {
        return this.f4404e;
    }

    public void setAnchor(float f, float f2) {
        if (f >= 0.0f && f <= 1.0f && f2 >= 0.0f && f2 <= 1.0f) {
            this.f4402c = f;
            this.f4403d = f2;
            this.listener.m6270b(this);
        }
    }

    public void setDraggable(boolean z) {
        this.f4405f = z;
        this.listener.m6270b(this);
    }

    public void setFlat(boolean z) {
        this.f4409j = z;
        this.listener.m6270b(this);
    }

    public void setIcon(BitmapDescriptor bitmapDescriptor) {
        if (bitmapDescriptor == null) {
            throw new IllegalArgumentException("marker's icon can not be null");
        }
        this.f4401b = bitmapDescriptor;
        this.listener.m6270b(this);
    }

    public void setIcons(ArrayList<BitmapDescriptor> arrayList) {
        if (arrayList == null) {
            throw new IllegalArgumentException("marker's icons can not be null");
        } else if (arrayList.size() != 0) {
            int i = 0;
            while (i < arrayList.size()) {
                if (arrayList.get(i) != null && ((BitmapDescriptor) arrayList.get(i)).f4265a != null) {
                    i++;
                } else {
                    return;
                }
            }
            this.f4411l = arrayList;
            this.listener.m6270b(this);
        }
    }

    public void setPeriod(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("marker's period must be greater than zero ");
        }
        this.f4412m = i;
        this.listener.m6270b(this);
    }

    public void setPerspective(boolean z) {
        this.f4404e = z;
        this.listener.m6270b(this);
    }

    public void setPosition(LatLng latLng) {
        if (latLng == null) {
            throw new IllegalArgumentException("marker's position can not be null");
        }
        this.f4400a = latLng;
        this.listener.m6270b(this);
    }

    public void setRotate(float f) {
        while (f < 0.0f) {
            f += 360.0f;
        }
        this.f4406g = f % 360.0f;
        this.listener.m6270b(this);
    }

    public void setTitle(String str) {
        this.f4407h = str;
    }

    public void setToTop() {
        this.f4410k = true;
        this.listener.m6270b(this);
    }
}
