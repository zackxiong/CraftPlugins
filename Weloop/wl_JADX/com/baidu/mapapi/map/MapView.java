package com.baidu.mapapi.map;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.NinePatch;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.NinePatchDrawable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.ZoomControls;
import com.baidu.android.pushservice.db.LightAppTableDefine;
import com.baidu.location.LocationClientOption;
import com.baidu.mapapi.C0556a;
import com.baidu.mapapi.map.MapViewLayoutParams.ELayoutMode;
import com.baidu.mapapi.model.C0579a;
import com.baidu.platform.comapi.map.C0565h;
import com.baidu.platform.comapi.map.C0620f;
import com.baidu.platform.comapi.p088c.C0607c;
import java.io.IOException;
import java.io.InputStream;

public final class MapView extends ViewGroup {
    private static final String f4371a;
    private static final SparseArray<Integer> f4372m;
    private C0620f f4373b;
    private BaiduMap f4374c;
    private ImageView f4375d;
    private Bitmap f4376e;
    private ZoomControls f4377f;
    private Point f4378g;
    private Point f4379h;
    private RelativeLayout f4380i;
    private TextView f4381j;
    private TextView f4382k;
    private ImageView f4383l;
    private float f4384n;
    private C0565h f4385o;

    static {
        f4371a = MapView.class.getSimpleName();
        f4372m = new SparseArray();
        f4372m.append(3, Integer.valueOf(2000000));
        f4372m.append(4, Integer.valueOf(1000000));
        f4372m.append(5, Integer.valueOf(500000));
        f4372m.append(6, Integer.valueOf(200000));
        f4372m.append(7, Integer.valueOf(100000));
        f4372m.append(8, Integer.valueOf(50000));
        f4372m.append(9, Integer.valueOf(25000));
        f4372m.append(10, Integer.valueOf(20000));
        f4372m.append(11, Integer.valueOf(10000));
        f4372m.append(12, Integer.valueOf(5000));
        f4372m.append(13, Integer.valueOf(LightAppTableDefine.Msg_Need_Clean_COUNT));
        f4372m.append(14, Integer.valueOf(LocationClientOption.MIN_SCAN_SPAN));
        f4372m.append(15, Integer.valueOf(500));
        f4372m.append(16, Integer.valueOf(200));
        f4372m.append(17, Integer.valueOf(100));
        f4372m.append(18, Integer.valueOf(50));
        f4372m.append(19, Integer.valueOf(20));
        f4372m.append(20, Integer.valueOf(10));
    }

    public MapView(Context context) {
        super(context);
        m6254a(context, null);
    }

    public MapView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m6254a(context, null);
    }

    public MapView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m6254a(context, null);
    }

    public MapView(Context context, BaiduMapOptions baiduMapOptions) {
        super(context);
        m6254a(context, baiduMapOptions);
    }

    private void m6253a(Context context) {
        try {
            AssetManager assets = context.getAssets();
            int j = C0607c.m6489j();
            InputStream open = j >= 180 ? assets.open("logo_h.png") : assets.open("logo_l.png");
            if (open != null) {
                Bitmap decodeStream = BitmapFactory.decodeStream(open);
                Matrix matrix;
                if (j > 480) {
                    matrix = new Matrix();
                    matrix.postScale(2.0f, 2.0f);
                    this.f4376e = Bitmap.createBitmap(decodeStream, 0, 0, decodeStream.getWidth(), decodeStream.getHeight(), matrix, true);
                } else if (j <= 320 || j > 480) {
                    this.f4376e = decodeStream;
                } else {
                    matrix = new Matrix();
                    matrix.postScale(1.5f, 1.5f);
                    this.f4376e = Bitmap.createBitmap(decodeStream, 0, 0, decodeStream.getWidth(), decodeStream.getHeight(), matrix, true);
                }
                if (this.f4376e != null) {
                    this.f4375d = new ImageView(context);
                    this.f4375d.setImageBitmap(this.f4376e);
                    addView(this.f4375d);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void m6254a(Context context, BaiduMapOptions baiduMapOptions) {
        C0556a.m6153a().m6159b();
        m6259b(context, baiduMapOptions);
        this.f4374c = new BaiduMap(this.f4373b);
        m6253a(context);
        m6258b(context);
        if (!(baiduMapOptions == null || baiduMapOptions.f4263h)) {
            this.f4377f.setVisibility(4);
        }
        m6261c(context);
        if (baiduMapOptions != null && !baiduMapOptions.f4264i) {
            this.f4380i.setVisibility(4);
        }
    }

    private void m6255a(View view) {
        LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new LayoutParams(-2, -2);
        }
        int i = layoutParams.width;
        i = i > 0 ? MeasureSpec.makeMeasureSpec(i, 1073741824) : MeasureSpec.makeMeasureSpec(0, 0);
        int i2 = layoutParams.height;
        view.measure(i, i2 > 0 ? MeasureSpec.makeMeasureSpec(i2, 1073741824) : MeasureSpec.makeMeasureSpec(0, 0));
    }

    private void m6257b() {
        boolean z = false;
        float f = this.f4373b.m6577p().f4882a;
        this.f4377f.setIsZoomOutEnabled(f > this.f4373b.f4804b);
        ZoomControls zoomControls = this.f4377f;
        if (f < this.f4373b.f4803a) {
            z = true;
        }
        zoomControls.setIsZoomInEnabled(z);
    }

    private void m6258b(Context context) {
        this.f4377f = new ZoomControls(context);
        this.f4377f.setOnZoomOutClickListener(new C0572g(this));
        this.f4377f.setOnZoomInClickListener(new C0573h(this));
        addView(this.f4377f);
    }

    private void m6259b(Context context, BaiduMapOptions baiduMapOptions) {
        if (baiduMapOptions == null) {
            this.f4373b = new C0620f(context, null);
        } else {
            this.f4373b = new C0620f(context, baiduMapOptions.m6201a());
        }
        addView(this.f4373b);
        this.f4385o = new C0571f(this);
        this.f4373b.m6541a(this.f4385o);
    }

    private void m6261c(Context context) {
        this.f4380i = new RelativeLayout(context);
        this.f4380i.setLayoutParams(new LayoutParams(-2, -2));
        this.f4381j = new TextView(context);
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(14);
        this.f4381j.setTextColor(Color.parseColor("#FFFFFF"));
        this.f4381j.setTextSize(2, 11.0f);
        this.f4381j.setTypeface(this.f4381j.getTypeface(), 1);
        this.f4381j.setLayoutParams(layoutParams);
        this.f4381j.setId(Integer.MAX_VALUE);
        this.f4380i.addView(this.f4381j);
        this.f4382k = new TextView(context);
        layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.addRule(14);
        this.f4382k.setTextColor(Color.parseColor("#000000"));
        this.f4382k.setTextSize(2, 11.0f);
        this.f4382k.setLayoutParams(layoutParams);
        this.f4380i.addView(this.f4382k);
        this.f4383l = new ImageView(context);
        layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.addRule(14);
        layoutParams.addRule(3, this.f4381j.getId());
        this.f4383l.setLayoutParams(layoutParams);
        try {
            Bitmap decodeStream = BitmapFactory.decodeStream(context.getAssets().open("icon_scale.9.png"));
            byte[] ninePatchChunk = decodeStream.getNinePatchChunk();
            NinePatch.isNinePatchChunk(ninePatchChunk);
            this.f4383l.setBackgroundDrawable(new NinePatchDrawable(decodeStream, ninePatchChunk, new Rect(), null));
        } catch (IOException e) {
            e.printStackTrace();
        }
        this.f4380i.addView(this.f4383l);
        addView(this.f4380i);
    }

    public void addView(View view, LayoutParams layoutParams) {
        if (layoutParams instanceof MapViewLayoutParams) {
            super.addView(view, layoutParams);
        }
    }

    public final BaiduMap getMap() {
        this.f4374c.f4231a = this;
        return this.f4374c;
    }

    public final void onDestroy() {
        this.f4373b.m6576o();
        this.f4376e.recycle();
        C0556a.m6153a().m6161d();
    }

    protected final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt == this.f4373b) {
                this.f4373b.layout(0, 0, getWidth(), getHeight());
            } else if (childAt == this.f4375d) {
                m6255a(this.f4375d);
                r1 = getHeight() - 5;
                r5 = r1 - this.f4375d.getMeasuredHeight();
                this.f4375d.layout(5, r5, this.f4375d.getMeasuredWidth() + 5, r1);
            } else if (childAt == this.f4377f) {
                m6255a(this.f4377f);
                if (this.f4379h == null) {
                    r0 = getHeight() - 5;
                    r1 = getWidth() - 5;
                    this.f4377f.layout(r1 - this.f4377f.getMeasuredWidth(), r0 - this.f4377f.getMeasuredHeight(), r1, r0);
                } else {
                    this.f4377f.layout(this.f4379h.x, this.f4379h.y, this.f4379h.x + this.f4377f.getMeasuredWidth(), this.f4379h.y + this.f4377f.getMeasuredHeight());
                }
            } else if (childAt == this.f4380i) {
                m6255a(this.f4380i);
                if (this.f4378g == null) {
                    r0 = this.f4380i.getMeasuredWidth();
                    this.f4380i.layout(5, ((i4 - i2) - this.f4380i.getMeasuredHeight()) - 56, r0 + 5, (i4 - i2) - 56);
                } else {
                    this.f4380i.layout(this.f4378g.x, this.f4378g.y, this.f4378g.x + this.f4380i.getMeasuredWidth(), this.f4378g.y + this.f4380i.getMeasuredHeight());
                }
            } else {
                LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof MapViewLayoutParams) {
                    Point point;
                    MapViewLayoutParams mapViewLayoutParams = (MapViewLayoutParams) layoutParams;
                    if (mapViewLayoutParams.f4396c == ELayoutMode.absoluteMode) {
                        point = mapViewLayoutParams.f4395b;
                    } else {
                        point = this.f4373b.m6535a(C0579a.m6359a(mapViewLayoutParams.f4394a));
                    }
                    m6255a(childAt);
                    r5 = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    float f = mapViewLayoutParams.f4397d;
                    int i6 = (int) (((float) point.x) - (f * ((float) r5)));
                    r0 = mapViewLayoutParams.f4399f + ((int) (((float) point.y) - (mapViewLayoutParams.f4398e * ((float) measuredHeight))));
                    childAt.layout(i6, r0, i6 + r5, r0 + measuredHeight);
                }
            }
        }
    }

    public final void onPause() {
        this.f4373b.onPause();
    }

    public final void onResume() {
        this.f4373b.onResume();
    }

    public void removeView(View view) {
        if (view != this.f4375d) {
            super.removeView(view);
        }
    }

    public void setScaleControlPosition(Point point) {
        if (point != null && point.x >= 0 && point.y >= 0 && point.x <= getWidth() && point.y <= getHeight()) {
            this.f4378g = point;
            requestLayout();
        }
    }

    public void setZoomControlsPosition(Point point) {
        if (point != null && point.x >= 0 && point.y >= 0 && point.x <= getWidth() && point.y <= getHeight()) {
            this.f4379h = point;
            requestLayout();
        }
    }

    public void showScaleControl(boolean z) {
        this.f4380i.setVisibility(z ? 0 : 8);
    }

    public void showZoomControls(boolean z) {
        this.f4377f.setVisibility(z ? 0 : 8);
    }
}
