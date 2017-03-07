package com.yf.smart.weloopx.android.ui.activities;

import android.app.Activity;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.baidu.location.BDLocationListener;
import com.baidu.location.C0452e;
import com.baidu.mapapi.SDKInitializer;
import com.baidu.mapapi.map.BaiduMap;
import com.baidu.mapapi.map.BitmapDescriptorFactory;
import com.baidu.mapapi.map.MapStatusUpdateFactory;
import com.baidu.mapapi.map.MapView;
import com.baidu.mapapi.map.MarkerOptions;
import com.baidu.mapapi.map.MyLocationData.Builder;
import com.baidu.mapapi.map.PolylineOptions;
import com.baidu.mapapi.map.TextOptions;
import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.utils.CoordinateConverter;
import com.baidu.mapapi.utils.CoordinateConverter.CoordType;
import com.yf.smart.weloopx.data.models.GDPData;
import com.yf.smart.weloopx.data.models.LocationModel;
import com.yf.smart.weloopx.dist.R;
import com.yf.smart.weloopx.p143f.ProGuard.ProGuard;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ProGuard */
public class TrajectoryActivity extends Activity implements OnClickListener, ProGuard, ProGuard {
    private String f7671A;
    private String f7672B;
    private String f7673C;
    private String f7674D;
    private String f7675E;
    private String f7676F;
    private String f7677G;
    private int f7678H;
    private BaiduMap f7679I;
    private CoordinateConverter f7680J;
    private int f7681K;
    private BDLocationListener f7682L;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558743)
    Button f7683a;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558744)
    Button f7684b;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558781)
    Button f7685c;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558782)
    Button f7686d;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558766)
    TextView f7687e;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558745)
    TextView f7688f;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558739)
    RelativeLayout f7689g;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558741)
    RelativeLayout f7690h;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558740)
    RelativeLayout f7691i;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558742)
    RelativeLayout f7692j;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558737)
    MapView f7693k;
    ArrayList<GDPData> f7694l;
    String f7695m;
    private String f7696n;
    private TextView f7697o;
    private TextView f7698p;
    private TextView f7699q;
    private TextView f7700r;
    private TextView f7701s;
    private TextView f7702t;
    private TextView f7703u;
    private TextView f7704v;
    private Typeface f7705w;
    private com.yf.smart.weloopx.data.ProGuard f7706x;
    private List<LocationModel> f7707y;
    private com.yf.smart.weloopx.p143f.ProGuard f7708z;

    public TrajectoryActivity() {
        this.f7696n = "TrajectoryActivity";
        this.f7707y = new ArrayList();
        this.f7671A = "";
        this.f7672B = "";
        this.f7673C = "0";
        this.f7674D = "0";
        this.f7675E = "0";
        this.f7676F = "0";
        this.f7677G = "0";
        this.f7678H = 0;
        this.f7694l = new ArrayList();
        this.f7681K = 1;
        this.f7695m = "";
        this.f7682L = new gl(this);
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        SDKInitializer.initialize(getApplicationContext());
        setContentView(R.layout.activity_trajectory);
        com.p038b.p039a.ProGuard.m4086a(this);
        this.f7680J = new CoordinateConverter();
        this.f7680J.from(CoordType.GPS);
        m9648e();
        m9649f();
        m9651g();
        m9646d();
    }

    protected void onResume() {
        super.onResume();
        if (this.f7693k != null) {
            this.f7693k.onResume();
        }
    }

    protected void onPause() {
        super.onPause();
        if (this.f7693k != null) {
            this.f7693k.onPause();
        }
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
    }

    protected void onDestroy() {
        super.onDestroy();
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f7696n + " onDestroy ");
        if (this.f7693k != null) {
            this.f7693k.onDestroy();
        }
        this.f7693k = null;
    }

    private void m9646d() {
        new gk(this).execute(new Void[0]);
    }

    private void m9648e() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.f7671A = extras.getString("startTime");
            this.f7672B = extras.getString("endTime");
            this.f7673C = String.valueOf(extras.getDouble("Calories"));
            this.f7675E = String.format("%.2f", new Object[]{Double.valueOf(extras.getDouble("Distance"))});
            this.f7674D = String.format("%.2f", new Object[]{Double.valueOf(extras.getDouble("Distance") / 1000.0d)});
            this.f7676F = String.valueOf(extras.getInt("Steps"));
            this.f7678H = extras.getInt("subtype");
            int i = (int) (3600.0d / extras.getDouble("Speed"));
            int i2 = i / 60;
            String str = "";
            if (i2 > 0) {
                str = i2 + "'" + str;
            }
            i %= 60;
            if (i > 0) {
                str = str + i + "\"";
            }
            this.f7677G = str;
            com.yf.gattlib.p117p.ProGuard.m8292a(this.f7696n + " Bundle params: startTime = " + this.f7671A + ", endTime = " + this.f7672B + ", calories = " + this.f7673C + ", distance = " + this.f7674D + ", steps = " + this.f7676F + ", speed = " + this.f7677G);
        }
        this.f7706x = new com.yf.smart.weloopx.data.ProGuard(this);
        this.f7708z = new com.yf.smart.weloopx.p143f.ProGuard(this);
    }

    private void m9649f() {
        this.f7705w = Typeface.createFromAsset(getAssets(), "fonts/diy.otf");
        this.f7697o = (TextView) this.f7689g.findViewById(R.id.ti_value);
        this.f7698p = (TextView) this.f7690h.findViewById(R.id.ti_value);
        this.f7699q = (TextView) this.f7691i.findViewById(R.id.ti_value);
        this.f7700r = (TextView) this.f7692j.findViewById(R.id.ti_value);
        this.f7701s = (TextView) this.f7689g.findViewById(R.id.ti_msg);
        this.f7702t = (TextView) this.f7690h.findViewById(R.id.ti_msg);
        this.f7703u = (TextView) this.f7691i.findViewById(R.id.ti_msg);
        this.f7704v = (TextView) this.f7692j.findViewById(R.id.ti_msg);
        this.f7697o.setTypeface(this.f7705w);
        this.f7698p.setTypeface(this.f7705w);
        this.f7699q.setTypeface(this.f7705w);
        this.f7700r.setTypeface(this.f7705w);
        this.f7701s.setText(getString(R.string.tarjectory_calories));
        this.f7702t.setText(getString(R.string.tarjectory_distance));
        this.f7703u.setText(getString(R.string.tarjectory_steps));
        this.f7704v.setText(getString(R.string.tarjectory_speed));
        this.f7697o.setText(this.f7673C);
        this.f7698p.setText(this.f7674D);
        this.f7699q.setText(this.f7676F);
        this.f7700r.setText(this.f7677G);
        this.f7687e.setText(R.string.trajectory);
        this.f7685c.setVisibility(0);
        this.f7685c.setOnClickListener(this);
        this.f7686d.setText(R.string.delete);
        this.f7686d.setTextColor(-1);
        this.f7686d.setOnClickListener(this);
        this.f7686d.setVisibility(8);
        this.f7683a.setOnClickListener(this);
        this.f7683a.setVisibility(8);
        this.f7684b.setOnClickListener(this);
        this.f7684b.setVisibility(8);
        this.f7688f.setVisibility(8);
        if (this.f7678H == 10) {
            this.f7691i.setVisibility(8);
            this.f7701s.setText(getString(R.string.tarjectory_cruze_mileage));
            this.f7702t.setText(getString(R.string.tarjectory_cruze_distance));
            this.f7704v.setText(getString(R.string.tarjectory_cruze_speed));
            int a = com.yf.smart.weloopx.p145g.ProGuard.m11364a(this.f7671A, this.f7672B) + 1;
            this.f7700r.setText(String.format("%.1f", new Object[]{Double.valueOf((Double.valueOf(this.f7675E).doubleValue() / ((double) a)) * 60.0d)}));
        }
    }

    private void m9651g() {
        this.f7679I = this.f7693k.getMap();
        this.f7679I.setMaxAndMinZoomLevel(19.0f, 16.0f);
        this.f7679I.setMapType(1);
    }

    private void m9652h() {
        if (!this.f7707y.isEmpty()) {
            List i;
            if (this.f7707y.size() < 2) {
                i = m9653i();
                this.f7679I.addOverlay(new MarkerOptions().position((LatLng) i.get(0)).icon(BitmapDescriptorFactory.fromResource(R.drawable.location_icon)));
                m9642a((LatLng) i.get(0), getString(R.string.start_point), -65536);
                m9641a(((LatLng) i.get(0)).latitude, ((LatLng) i.get(0)).longitude);
                return;
            }
            i = m9653i();
            this.f7679I.addOverlay(new PolylineOptions().points(i).color(Color.argb(125, 0, C0452e.f3841h, 157)));
            m9642a((LatLng) i.get(0), getString(R.string.start_point), -65536);
            m9642a((LatLng) i.get(i.size() - 1), getString(R.string.end_point), -16776961);
            m9641a(((LatLng) i.get(0)).latitude, ((LatLng) i.get(0)).longitude);
        }
    }

    private void m9642a(LatLng latLng, String str, int i) {
        this.f7679I.addOverlay(new TextOptions().bgColor(-1426063616).fontSize(32).fontColor(i).text(str).position(latLng));
    }

    private void m9641a(double d, double d2) {
        if (this.f7693k != null) {
            this.f7679I.setMyLocationData(new Builder().accuracy(100.0f).direction(100.0f).latitude(d).longitude(d2).build());
            this.f7679I.animateMapStatus(MapStatusUpdateFactory.newLatLng(new LatLng(d, d2)));
        }
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.trajectory_btn_upload:
                this.f7708z.m11201a(this, com.yf.gattlib.p117p.ProGuard.m8238e());
            case R.id.trajectory_btn_download:
                this.f7708z.m11200a(this, com.yf.gattlib.p117p.ProGuard.m8238e(), false);
            case R.id.at_btn_left:
                finish();
            case R.id.at_btn_right:
                m9654j();
            default:
        }
    }

    private List<LatLng> m9653i() {
        List<LatLng> arrayList = new ArrayList();
        String str = "";
        str = "";
        if (this.f7707y == null || this.f7707y.size() == 0) {
            return arrayList;
        }
        CoordinateConverter coordinateConverter = this.f7680J;
        for (LocationModel locationModel : this.f7707y) {
            double d;
            String location_lat = locationModel.getLOCATION_LAT();
            if (TextUtils.isEmpty(location_lat)) {
                location_lat = "0";
            }
            double parseDouble = Double.parseDouble(location_lat);
            str = locationModel.getLOCATION_LON();
            if (TextUtils.isEmpty(str)) {
                str = "0";
            }
            double parseDouble2 = Double.parseDouble(str);
            if (com.yf.smart.weloopx.p145g.ProGuard.m11354a(parseDouble2)) {
                d = parseDouble / ((double) com.yf.smart.weloopx.p145g.ProGuard.f8963c);
                parseDouble = parseDouble2 / ((double) com.yf.smart.weloopx.p145g.ProGuard.f8963c);
            } else {
                d = parseDouble / ((double) com.yf.smart.weloopx.p145g.ProGuard.f8962b);
                parseDouble = parseDouble2 / ((double) com.yf.smart.weloopx.p145g.ProGuard.f8962b);
            }
            coordinateConverter.coord(new LatLng(d, parseDouble));
            arrayList.add(coordinateConverter.convert());
        }
        return arrayList;
    }

    private void m9654j() {
    }

    public void m9655a() {
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f7696n + " onDownloadStart");
    }

    public void m9656a(String str) {
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f7696n + " onDownloadFailed");
    }

    public void m9657b() {
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f7696n + " onDownloadSuccess");
    }

    public void m9659c() {
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f7696n + " onUploadStart");
    }

    public void m9658b(String str) {
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f7696n + " onUploadFailed");
    }

    public void m9660c(String str) {
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f7696n + " onUploadSuccess  date = " + str);
        this.f7706x.m11088b(str);
    }
}
