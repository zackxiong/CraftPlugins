package com.yf.smart.weloopx.android.ui.activities;

import android.app.Activity;
import android.app.DialogFragment;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothAdapter.LeScanCallback;
import android.bluetooth.BluetoothDevice;
import android.content.Intent;
import android.graphics.drawable.AnimationDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.baidu.location.BDLocationStatusCodes;
import com.yf.gattlib.client.p113b.am;
import com.yf.gattlib.client.p113b.an;
import com.yf.gattlib.client.p113b.ao;
import com.yf.gattlib.client.p113b.ar;
import com.yf.gattlib.db.daliy.modes.AlarmModel;
import com.yf.smart.weloopx.android.ui.p139c.ah;
import com.yf.smart.weloopx.android.ui.p139c.ak;
import com.yf.smart.weloopx.android.ui.p139c.az;
import com.yf.smart.weloopx.android.ui.p139c.ca;
import com.yf.smart.weloopx.android.ui.widget.DeviceTitle;
import com.yf.smart.weloopx.android.ui.widget.OptionToggleButton;
import com.yf.smart.weloopx.dist.R;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

/* renamed from: com.yf.smart.weloopx.android.ui.activities.z */
public class ProGuard extends com.yf.smart.weloopx.android.ui.p139c.ProGuard implements OnClickListener, com.yf.smart.weloopx.android.ui.p139c.ah.ProGuard, com.yf.smart.weloopx.android.ui.p139c.ca.ProGuard, com.yf.smart.weloopx.android.ui.p139c.cc.ProGuard, com.yf.smart.weloopx.p143f.ProGuard.ProGuard, com.yf.smart.weloopx.p145g.ProGuard.ProGuard {
    public static boolean f8123c;
    public static boolean f8124d;
    private byte[] f8125A;
    private byte[] f8126B;
    private byte[] f8127C;
    private DialogFragment f8128D;
    private com.yf.smart.weloopx.p146c.ProGuard f8129E;
    private com.yf.gattlib.client.ProGuard f8130F;
    private com.yf.smart.weloopx.p140b.ProGuard f8131G;
    private com.yf.smart.weloopx.data.ProGuard f8132H;
    private final int f8133I;
    private final int f8134J;
    private final int f8135K;
    private final int f8136L;
    private final int f8137M;
    private boolean f8138N;
    private boolean f8139O;
    private ProGuard f8140P;
    private View f8141Q;
    private View f8142R;
    private View f8143S;
    private RelativeLayout f8144T;
    private com.yf.gattlib.p127m.p128a.ProGuard f8145U;
    private String f8146V;
    private String f8147W;
    private AnimationDrawable f8148X;
    private RelativeLayout f8149Y;
    private RelativeLayout f8150Z;
    protected p023b.p024a.p025a.p026a.p027a.ProGuard f8151a;
    private OnClickListener aA;
    private OnClickListener aB;
    private OnClickListener aC;
    private OnClickListener aD;
    private OnClickListener aE;
    private Runnable aF;
    private LeScanCallback aG;
    private OnCheckedChangeListener aH;
    private RelativeLayout aa;
    private View ab;
    private View ac;
    private OptionToggleButton ad;
    private OptionToggleButton ae;
    private byte af;
    private boolean ag;
    private Handler ah;
    private com.yf.smart.weloopx.data.ProGuard ai;
    private com.yf.smart.weloopx.p143f.ProGuard aj;
    private com.yf.smart.weloopx.p143f.ProGuard ak;
    private int al;
    private com.yf.gattlib.p118d.ProGuard.ProGuard am;
    private com.yf.gattlib.client.ProGuard an;
    private String ao;
    private com.yf.gattlib.p108a.ProGuard ap;
    private ProGuard aq;
    private RadioGroup.OnCheckedChangeListener ar;
    private OnCheckedChangeListener as;
    private OnClickListener at;
    private OnClickListener au;
    private OnCheckedChangeListener av;
    private OnCheckedChangeListener aw;
    private OnCheckedChangeListener ax;
    private OnCheckedChangeListener ay;
    private OnClickListener az;
    protected com.yf.gattlib.p108a.ProGuard f8152b;
    private String f8153e;
    private View f8154f;
    private View f8155g;
    private View f8156h;
    private View f8157i;
    private View f8158j;
    private ImageView f8159k;
    private ImageView f8160l;
    private TextView f8161m;
    private TextView f8162n;
    private TextView f8163o;
    private TextView f8164p;
    private OptionToggleButton f8165q;
    private OptionToggleButton f8166r;
    private OptionToggleButton f8167s;
    private OptionToggleButton f8168t;
    private OptionToggleButton f8169u;
    private OptionToggleButton f8170v;
    private ImageView f8171w;
    private DeviceTitle f8172x;
    private com.yf.smart.weloopx.p146c.ProGuard f8173y;
    private Activity f8174z;

    /* renamed from: com.yf.smart.weloopx.android.ui.activities.z.c */
    private abstract class ProGuard implements OnClickListener {
        final /* synthetic */ ProGuard f7784b;

        public abstract void m9780a(View view);

        private ProGuard(ProGuard proGuard) {
            this.f7784b = proGuard;
        }

        public void onClick(View view) {
            if (this.f7784b.m10080l()) {
                m9780a(view);
            }
        }
    }

    /* renamed from: com.yf.smart.weloopx.android.ui.activities.z.b */
    private abstract class ProGuard implements OnCheckedChangeListener {
        final /* synthetic */ ProGuard f7787b;

        public abstract void m9782a(CompoundButton compoundButton, boolean z);

        private ProGuard(ProGuard proGuard) {
            this.f7787b = proGuard;
        }

        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (this.f7787b.m10080l()) {
                m9782a(compoundButton, z);
            }
        }
    }

    /* renamed from: com.yf.smart.weloopx.android.ui.activities.z.1 */
    static /* synthetic */ class ProGuard {
        static final /* synthetic */ int[] f8121a;

        static {
            f8121a = new int[com.yf.smart.weloopx.p146c.ProGuard.values().length];
            try {
                f8121a[com.yf.smart.weloopx.p146c.ProGuard.WN02B01.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f8121a[com.yf.smart.weloopx.p146c.ProGuard.WN08B08.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f8121a[com.yf.smart.weloopx.p146c.ProGuard.BN01L02.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f8121a[com.yf.smart.weloopx.p146c.ProGuard.BN01SH02.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f8121a[com.yf.smart.weloopx.p146c.ProGuard.MYLINK.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* renamed from: com.yf.smart.weloopx.android.ui.activities.z.a */
    private class ProGuard extends com.yf.gattlib.p127m.p128a.ProGuard {
        final /* synthetic */ ProGuard f8122b;

        private ProGuard(ProGuard proGuard) {
            this.f8122b = proGuard;
        }

        public void notifyDataSetChanged() {
            Collections.sort(this.a, new cd(this));
            super.notifyDataSetChanged();
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = this.f8122b.getActivity().getLayoutInflater().inflate(R.layout.device_scan_item, null);
            }
            TextView textView = (TextView) view.findViewById(R.id.option_name);
            TextView textView2 = (TextView) view.findViewById(R.id.option_value);
            ImageView imageView = (ImageView) view.findViewById(R.id.option_more);
            ImageView imageView2 = (ImageView) view.findViewById(R.id.option_tag_icon);
            com.yf.gattlib.p127m.p128a.ProGuard a = m8135a(i);
            String b = this.f8122b.m10004a(a);
            if (TextUtils.isEmpty(b)) {
                b = a.f6258a.getAddress();
            }
            com.yf.smart.weloopx.p146c.ProGuard a2 = com.yf.smart.weloopx.p146c.ProGuard.m10901a(com.yf.smart.weloopx.p146c.ProGuard.m10914e(b));
            String[] split = b.split(" ");
            boolean c = this.f8122b.m10025b(a);
            int color = c ? this.f8122b.getResources().getColor(R.color.all_title_bg2) : this.f8122b.getResources().getColor(R.color.ranking_gray);
            textView.setTextColor(color);
            textView.setText(a2.m10903b());
            textView2.setTextColor(color);
            textView2.setText(split[split.length - 1]);
            imageView.setImageResource(a2.m10904c());
            imageView2.setImageResource(c ? R.drawable.device_link : R.drawable.device_unlink);
            view.setTag(a);
            return view;
        }
    }

    public ProGuard() {
        this.f8153e = "DeviceFragment";
        this.f8173y = com.yf.smart.weloopx.p146c.ProGuard.NULL;
        this.f8130F = com.yf.gattlib.client.ProGuard.m7829a();
        this.f8133I = BDLocationStatusCodes.GEOFENCE_TOO_MANY_GEOFENCES;
        this.f8134J = BDLocationStatusCodes.GEOFENCE_SERVICE_NO_ALIVIABLE;
        this.f8135K = 1003;
        this.f8136L = 104564;
        this.f8137M = 91034;
        this.f8138N = false;
        this.f8139O = false;
        this.af = (byte) 1;
        this.ag = true;
        this.am = new aa(this);
        this.an = new au(this);
        this.ao = "new_firmware";
        this.ap = new bi(this);
        this.aq = new ad(this);
        this.ar = new ae(this);
        this.as = new af(this);
        this.at = new aj(this);
        this.au = new ak(this);
        this.av = new al(this);
        this.aw = new ao(this);
        this.ax = new ar(this);
        this.ay = new aw(this);
        this.az = new az(this);
        this.aA = new bb(this);
        this.aB = new bc(this);
        this.aC = new bd(this);
        this.aD = new be(this);
        this.aE = new bf(this);
        this.aF = new bm(this);
        this.aG = new bo(this);
        this.aH = new bs(this);
    }

    static {
        f8123c = false;
        f8124d = false;
    }

    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        if (this.f8158j != null && this.f8158j.getVisibility() == 0) {
            if (z) {
                m10054g();
            } else {
                this.f8131G.m10724c();
            }
        }
    }

    public void onAttach(Activity activity) {
        this.f8174z = activity;
        super.onAttach(activity);
        Log.e(this.f8153e, "onAttach");
        this.f8152b = com.yf.gattlib.p108a.ProGuard.m7368a();
        this.f8151a = ((hg) m9823c()).m9441i();
        this.ah = new Handler();
        this.f8132H = new com.yf.smart.weloopx.data.ProGuard(getActivity());
        this.f8131G = com.yf.smart.weloopx.p140b.ProGuard.m10712a();
        this.ai = new com.yf.smart.weloopx.data.ProGuard(getActivity());
        this.aj = new com.yf.smart.weloopx.p143f.ProGuard();
        this.ak = new com.yf.smart.weloopx.p143f.ProGuard();
    }

    public void onDetach() {
        this.f8130F.m7851b(this.an);
        this.f8131G.m10722b(this.am);
        this.ah.removeCallbacks(this.aF);
        Log.e(this.f8153e, "onDetach");
        super.onDetach();
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Log.e(this.f8153e, "onCreateView");
        View inflate = getActivity().getLayoutInflater().inflate(R.layout.device, null);
        this.f8172x = (DeviceTitle) inflate.findViewById(R.id.device_title);
        if (this.f8172x != null) {
            this.f8172x.setLeftOnClickListener(this);
            this.f8172x.m10552b();
        }
        this.f8144T = (RelativeLayout) inflate.findViewById(R.id.rl_bluetooth);
        ((Button) inflate.findViewById(R.id.btn_turn_on_bluetooth)).setOnClickListener(new bv(this));
        this.f8141Q = inflate.findViewById(R.id.device_searching);
        this.f8171w = (ImageView) inflate.findViewById(R.id.iv_device_search);
        this.f8148X = (AnimationDrawable) this.f8171w.getBackground();
        this.f8142R = this.f8141Q.findViewById(R.id.device_animation);
        this.f8143S = this.f8141Q.findViewById(R.id.device_searchFail);
        com.yf.smart.weloopx.android.ui.widget.ProGuard a = com.yf.smart.weloopx.android.ui.widget.ProGuard.m10644a(inflate, R.id.device_searchFail);
        a.f8640a.setTextColor(getResources().getColor(R.color.all_title_bg));
        a.f8641b.setBackground(getResources().getDrawable(R.drawable.btn_register1));
        a.f8641b.setTextColor(getResources().getColor(R.color.white));
        a.f8641b.setTextSize(17.0f);
        a.f8641b.setOnClickListener(this);
        a.f8645f.setVisibility(8);
        View findViewById = inflate.findViewById(R.id.device_header);
        this.f8159k = (ImageView) findViewById.findViewById(R.id.device_icon);
        this.f8162n = (TextView) findViewById.findViewById(R.id.device_id);
        this.f8161m = (TextView) findViewById.findViewById(R.id.device_name);
        this.f8160l = (ImageView) findViewById.findViewById(R.id.connect_status);
        this.f8155g = inflate.findViewById(R.id.device_frame);
        this.f8156h = inflate.findViewById(R.id.device_now);
        this.f8149Y = (RelativeLayout) this.f8156h.findViewById(R.id.rl_motion_display);
        this.f8150Z = (RelativeLayout) this.f8156h.findViewById(R.id.rl_vertical_srceen);
        this.aa = (RelativeLayout) this.f8156h.findViewById(R.id.rlItemsVertical);
        this.ab = this.f8156h.findViewById(R.id.vertical_screen_mode_up);
        this.ac = this.f8156h.findViewById(R.id.vertical_screen_mode_down);
        this.f8149Y.setVisibility(8);
        this.f8150Z.setVisibility(8);
        m10009a(this.f8156h, true);
        this.f8157i = inflate.findViewById(R.id.device_watch);
        m10020b(this.f8157i, true);
        this.f8158j = inflate.findViewById(R.id.device_empty);
        m10042e(m10082m());
        this.f8130F.m7846a(this.an);
        this.f8131G.m10718a(this.am);
        this.f8129E = new com.yf.smart.weloopx.p146c.ProGuard();
        com.yf.gattlib.p108a.ProGuard.m7347a().m7356a(this.ao, this.ap);
        m10041e();
        return inflate;
    }

    private void m10009a(View view, boolean z) {
        this.f8138N = false;
        com.yf.gattlib.client.ProGuard proGuard = this.f8130F;
        if (!z && this.f8152b.m7376f().m8078h()) {
            this.f8125A = proGuard.m7871n();
            this.f8126B = proGuard.m7872o();
            this.f8127C = proGuard.m7873p();
            m10015a(this.f8125A, (int) BDLocationStatusCodes.GEOFENCE_TOO_MANY_GEOFENCES, 104564);
            m10015a(this.f8126B, (int) BDLocationStatusCodes.GEOFENCE_SERVICE_NO_ALIVIABLE, 104564);
            m10015a(this.f8127C, 1003, 104564);
        }
        view.findViewById(R.id.disconnect_device).setOnClickListener(this.aC);
        view.findViewById(R.id.rl_vertical_srceen).setOnClickListener(this.az);
        com.yf.smart.weloopx.android.ui.widget.ProGuard a = com.yf.smart.weloopx.android.ui.widget.ProGuard.m10644a(view, R.id.real_time_display);
        a.f8640a.setText(m9825d(R.string.real_time_display));
        a.f8647h.setCheckedFromCode(proGuard.m7869l());
        a.f8647h.setOnCheckedChangeListener(this.as);
        this.f8165q = a.f8647h;
        a = com.yf.smart.weloopx.android.ui.widget.ProGuard.m10644a(view, R.id.anti_lost);
        a.f8640a.setText(m9825d(R.string.anti_lost));
        a.f8647h.setCheckedFromCode(proGuard.m7865h());
        a.f8647h.setOnCheckedChangeListener(this.ax);
        this.f8166r = a.f8647h;
        a = com.yf.smart.weloopx.android.ui.widget.ProGuard.m10644a(view, R.id.motion_display);
        a.f8640a.setText(m9825d(R.string.motion_display));
        a.f8647h.setCheckedFromCode(proGuard.m7861d());
        a.f8647h.setOnCheckedChangeListener(this.ay);
        this.f8167s = a.f8647h;
        a = com.yf.smart.weloopx.android.ui.widget.ProGuard.m10644a(view, R.id.vertical_screen);
        a.f8640a.setText(m9825d(R.string.vertical_screen));
        a.f8647h.setCheckedFromCode(proGuard.m7862e());
        a.f8647h.setOnCheckedChangeListener(this.aH);
        this.f8170v = a.f8647h;
        com.yf.smart.weloopx.android.ui.widget.ProGuard a2 = com.yf.smart.weloopx.android.ui.widget.ProGuard.m10644a(view, R.id.vertical_screen_mode_up);
        a2.f8640a.setText(m9825d(R.string.reversal_motion_up));
        a2.f8647h.setBackground(getResources().getDrawable(R.drawable.icon_check));
        a2.f8647h.setVisibility(4);
        this.ad = a2.f8647h;
        this.ab.setOnClickListener(this.az);
        a2 = com.yf.smart.weloopx.android.ui.widget.ProGuard.m10644a(view, R.id.vertical_screen_mode_down);
        a2.f8640a.setText(m9825d(R.string.reversal_motion_down));
        a2.f8647h.setBackground(getResources().getDrawable(R.drawable.icon_check));
        a2.f8647h.setVisibility(4);
        this.ae = a2.f8647h;
        this.ac.setOnClickListener(this.az);
        this.aa.setVisibility(8);
        View findViewById = view.findViewById(R.id.frequent_question);
        findViewById.setOnClickListener(this.aB);
        a2 = com.yf.smart.weloopx.android.ui.widget.ProGuard.m10643a(findViewById);
        a2.f8640a.setText(m9825d(R.string.problem_diagnosis));
        a2.f8641b.setVisibility(4);
        view.findViewById(R.id.recovery_device).setOnClickListener(this.aE);
        findViewById = view.findViewById(R.id.upgrade_firmware);
        findViewById.setOnClickListener(this.aA);
        a = com.yf.smart.weloopx.android.ui.widget.ProGuard.m10643a(findViewById);
        a.f8640a.setText(m9825d(R.string.firmware_upgrade));
        a.f8641b.setText("");
        this.f8154f = findViewById;
        if (this.f8151a == null) {
            this.f8150Z.setVisibility(8);
            this.f8149Y.setVisibility(8);
        } else {
            String b = this.f8151a.m2791b();
            if ("V 2.19".compareToIgnoreCase(b) > 0) {
                this.f8150Z.setVisibility(8);
            } else {
                this.f8150Z.setVisibility(0);
            }
            if ("V 2.16".compareToIgnoreCase(b) > 0) {
                this.f8149Y.setVisibility(8);
            } else {
                this.f8149Y.setVisibility(0);
            }
        }
        m10041e();
    }

    private void m10041e() {
        if ("V 2.20".compareToIgnoreCase(this.f8151a.m2791b()) > 0) {
            this.ad.setVisibility(4);
            this.ae.setVisibility(4);
            this.aa.setVisibility(8);
            return;
        }
        byte f = this.f8130F.m7863f();
        if (f == (byte) 2) {
            this.ae.setVisibility(0);
            this.ad.setVisibility(4);
            this.aa.setVisibility(0);
            this.af = (byte) 2;
        } else if (f == (byte) 1) {
            this.ad.setVisibility(0);
            this.ae.setVisibility(4);
            this.aa.setVisibility(0);
            this.af = (byte) 1;
        } else {
            this.ad.setVisibility(4);
            this.ae.setVisibility(4);
            this.aa.setVisibility(8);
        }
    }

    private void m10020b(View view, boolean z) {
        boolean z2 = true;
        this.f8138N = true;
        com.yf.gattlib.client.ProGuard proGuard = this.f8130F;
        if (!z && com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10711o()) {
            this.f8125A = proGuard.m7871n();
            this.f8126B = proGuard.m7872o();
            this.f8127C = proGuard.m7873p();
            m10015a(this.f8125A, (int) BDLocationStatusCodes.GEOFENCE_TOO_MANY_GEOFENCES, 91034);
            m10015a(this.f8126B, (int) BDLocationStatusCodes.GEOFENCE_SERVICE_NO_ALIVIABLE, 91034);
            m10015a(this.f8127C, 1003, 91034);
        }
        view.findViewById(R.id.disconnect_device).setOnClickListener(this.aC);
        com.yf.smart.weloopx.android.ui.widget.ProGuard a = com.yf.smart.weloopx.android.ui.widget.ProGuard.m10644a(view, R.id.anti_lost);
        a.f8640a.setText(m9825d(R.string.anti_lost));
        a.f8647h.setCheckedFromCode(proGuard.m7865h());
        a.f8647h.setOnCheckedChangeListener(this.ax);
        this.f8166r = a.f8647h;
        View findViewById = view.findViewById(R.id.vibration_mode);
        View findViewById2 = view.findViewById(R.id.motion_display_tommy2_line);
        com.yf.smart.weloopx.android.ui.widget.ProGuard a2 = com.yf.smart.weloopx.android.ui.widget.ProGuard.m10643a(findViewById);
        this.f8169u = a2.f8647h;
        if (com.yf.smart.weloopx.p146c.ProGuard.m10913d() && m10051f()) {
            findViewById2.setVisibility(0);
            findViewById.setVisibility(0);
            a2.f8640a.setText(m9825d(R.string.motion_strong));
            a2.f8647h.setCheckedFromCode((proGuard.m7854c() >> 4) == 1);
            a2.f8647h.setOnCheckedChangeListener(this.av);
        } else {
            findViewById2.setVisibility(8);
            findViewById.setVisibility(8);
        }
        findViewById = view.findViewById(R.id.music_control);
        findViewById.setOnClickListener(this.aD);
        a = com.yf.smart.weloopx.android.ui.widget.ProGuard.m10643a(findViewById);
        a.f8640a.setText(m9825d(R.string.music_player));
        a.f8641b.setVisibility(4);
        findViewById = view.findViewById(R.id.frequent_question);
        findViewById.setOnClickListener(this.aB);
        a = com.yf.smart.weloopx.android.ui.widget.ProGuard.m10643a(findViewById);
        a.f8640a.setText(m9825d(R.string.problem_diagnosis));
        a.f8641b.setVisibility(4);
        view.findViewById(R.id.recovery_device).setOnClickListener(this.aE);
        findViewById = view.findViewById(R.id.back_light);
        findViewById2 = view.findViewById(R.id.gray_line_tommy);
        if (com.yf.smart.weloopx.p146c.ProGuard.WN02B01 == this.f8173y) {
            findViewById.setVisibility(0);
            findViewById2.setVisibility(0);
            findViewById.setOnClickListener(this.at);
            a = com.yf.smart.weloopx.android.ui.widget.ProGuard.m10643a(findViewById);
            a.f8640a.setText(m9825d(R.string.back_light));
            a.f8641b.setVisibility(0);
            a.f8641b.setText(com.yf.smart.weloopx.p146c.ProGuard.m10906a(getActivity(), proGuard.m7849b()));
            this.f8164p = a.f8641b;
            view.findViewById(R.id.motion_display_tommy2).setVisibility(8);
            findViewById = view.findViewById(R.id.motion_display);
            findViewById.setVisibility(0);
            findViewById.setOnClickListener(this.au);
            a = com.yf.smart.weloopx.android.ui.widget.ProGuard.m10643a(findViewById);
            a.f8640a.setText(m9825d(R.string.motion_display_tommy));
            a.f8641b.setVisibility(0);
            a.f8641b.setText(com.yf.smart.weloopx.p146c.ProGuard.m10906a(getActivity(), proGuard.m7854c()));
            this.f8163o = a.f8641b;
        } else {
            findViewById.setVisibility(8);
            findViewById2.setVisibility(8);
            view.findViewById(R.id.motion_display).setVisibility(8);
            view.findViewById(R.id.motion_display_tommy2).setVisibility(0);
            a = com.yf.smart.weloopx.android.ui.widget.ProGuard.m10644a(view, R.id.motion_display_tommy2);
            a.f8640a.setText(m9825d(R.string.motion_display));
            this.f8168t = a.f8647h;
            byte c = proGuard.m7854c();
            OptionToggleButton optionToggleButton;
            if (m10051f()) {
                int i = c & 15;
                optionToggleButton = this.f8168t;
                if (i != 1) {
                    z2 = false;
                }
                optionToggleButton.setCheckedFromCode(z2);
            } else {
                optionToggleButton = a.f8647h;
                if (c != (byte) 1) {
                    z2 = false;
                }
                optionToggleButton.setCheckedFromCode(z2);
            }
            a.f8647h.setOnCheckedChangeListener(this.aw);
        }
        m10008a(view.findViewById(R.id.watch_big_options));
        this.f8154f = view;
    }

    private void m10008a(View view) {
        view.findViewById(R.id.option_camera).setOnClickListener(this.aq);
        view.findViewById(R.id.option_watchface).setOnClickListener(this.aq);
        view.findViewById(R.id.option_upgrade).setOnClickListener(this.aq);
    }

    private boolean m10051f() {
        Object m = com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10709m();
        return !TextUtils.isEmpty(m) && "V 4.04".compareToIgnoreCase(m) <= 0;
    }

    private void m10019b(View view) {
        m9821a(new bw(this, view));
    }

    public void onResume() {
        super.onResume();
        this.f8150Z.setVisibility(8);
        this.f8149Y.setVisibility(8);
        Log.e(this.f8153e, "onResume");
        if (m10111s()) {
            this.f8171w.post(new bx(this));
        }
        m10054g();
        m10041e();
    }

    private void m10054g() {
        m9821a(new by(this));
    }

    private void m10059h() {
        this.ak.m11212a((com.yf.smart.weloopx.p143f.ProGuard.ProGuard) this);
    }

    private void m10064i() {
        if (com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10730i() && com.yf.gattlib.p108a.ProGuard.m7368a().m7376f().m8082l()) {
            startActivity(new Intent(getActivity(), DfuActivity.class));
        }
    }

    private void m10042e(int i) {
        int i2 = 0;
        switch (i) {
            case R.id.device_empty:
                this.f8155g.setVisibility(8);
                this.f8156h.setVisibility(8);
                this.f8157i.setVisibility(8);
                this.f8158j.setVisibility(0);
                boolean i3 = com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10730i();
                if (!i3) {
                    i2 = 1;
                }
                this.al = i2;
                if (this.f8172x != null) {
                    if (i3) {
                        this.f8172x.m10551a();
                    } else {
                        this.f8172x.m10552b();
                    }
                }
                m10019b(this.f8158j);
            case R.id.device_now:
                com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10724c();
                this.f8155g.setVisibility(0);
                this.f8156h.setVisibility(0);
                this.f8157i.setVisibility(8);
                this.f8158j.setVisibility(8);
                if (this.f8172x != null) {
                    this.f8172x.m10552b();
                }
                this.al = 1;
                this.f8141Q.setVisibility(8);
                m10009a(this.f8156h, false);
                m10094o();
            case R.id.device_watch:
                com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10724c();
                this.f8155g.setVisibility(0);
                this.f8156h.setVisibility(8);
                this.f8157i.setVisibility(0);
                this.f8158j.setVisibility(8);
                if (this.f8172x != null) {
                    this.f8172x.m10552b();
                }
                this.al = 1;
                this.f8141Q.setVisibility(8);
                m10020b(this.f8157i, false);
                m10094o();
            default:
        }
    }

    public void m10131a(String str, boolean z) {
        if ("activation_time".equals(str) && z) {
            Intent intent = new Intent(getActivity(), RunningInfoDetailsActivity.class);
            intent.putExtra("URL", "http://www.weloop.cn/connect/index.html");
            intent.putExtra("ACTICATION_TERMS", true);
            startActivity(intent);
            return;
        }
        if ("onConnect".equals(str) && z) {
            com.yf.gattlib.p117p.ProGuard.m8245a("connect device name " + this.f8147W);
            com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10720a(this.f8146V, this.f8147W, "");
            ak.m10203a(getActivity(), this.f8145U.f6258a);
        }
        if ("openAntLost".equals(str) && z) {
            m10024b(m9825d(R.string.synchronizing));
            new am(true).m7492b(new bz(this));
        } else {
            this.f8130F.m7845a(14, new Object[0]);
        }
        if ("openMotionDisplayTommy2".equals(str) && z) {
            intent = new Intent(getActivity(), MoreProductActivity.class);
            intent.putExtra("url", "http://www.weloop.cn/help/691.html");
            this.f8130F.m7845a(19, new Object[0]);
            startActivity(intent);
        } else if ("openMotionDisplayTommy2".equals(str) && !z) {
            m10024b(m9825d(R.string.synchronizing));
            m10014a(true);
        }
        if ("openMotionDisplay".equals(str) && z) {
            intent = new Intent(getActivity(), MoreProductActivity.class);
            intent.putExtra("url", "http://www.weloop.cn/help/691.html");
            this.f8130F.m7845a(18, new Object[0]);
            startActivity(intent);
        } else if ("openMotionDisplay".equals(str) && !z) {
            m10024b(m9825d(R.string.synchronizing));
            new an(true).m7492b(new cb(this));
        }
        if ("openVerticalScreen".equals(str) && z) {
            m10024b(m9825d(R.string.synchronizing));
            new ar((byte) 1).m7492b(new ab(this));
        }
        if (z) {
            if ("restart".equals(str)) {
                ca.m10346a(getChildFragmentManager(), false);
            } else if ("recover".equals(str)) {
                this.f8139O = true;
                ca.m10346a(getChildFragmentManager(), true);
            }
            if ("disconnect".equals(str)) {
                com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10721b();
                m10054g();
            }
        }
    }

    public void m10133a(boolean z, boolean z2) {
        if (z2 && z) {
            m10106r();
        } else if (!z) {
            m9822a(z2 ? m9825d(R.string.recover_fail) : m9825d(R.string.restart_fail));
        }
    }

    private void m10024b(String str) {
        m10069j();
        this.f8128D = az.m10242a(getChildFragmentManager(), str);
    }

    private void m10069j() {
        if (isAdded()) {
            com.yf.smart.weloopx.android.ui.ProGuard.m10543a(this.f8128D);
            if (this.f8128D != null) {
                com.yf.smart.weloopx.android.ui.ProGuard.m10543a(this.f8128D);
                this.f8128D = null;
            }
        }
    }

    private void m10014a(boolean z) {
        byte b;
        byte b2;
        boolean f = m10051f();
        byte c = this.f8130F.m7854c();
        if (z) {
            b = (byte) (((c >> 4) << 4) | 1);
        } else {
            b = (byte) (((c >> 4) << 4) | 2);
        }
        int i = z ? 1 : 2;
        if (f) {
            b2 = b;
        } else {
            b2 = (byte) i;
        }
        new ao(b2).m7492b(new ap(this, f, b, i));
    }

    private void m10074k() {
        com.yf.gattlib.client.ProGuard proGuard = this.f8130F;
        m9821a(new ba(this));
    }

    private boolean m10080l() {
        if (com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10711o()) {
            return true;
        }
        m9822a(m9825d(R.string.disconnect_str));
        return false;
    }

    public void onClick(View view) {
        Intent intent;
        switch (view.getId()) {
            case R.id.option_value:
                com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10724c();
                intent = new Intent(getActivity(), MoreProductActivity.class);
                intent.putExtra("title", m9825d(R.string.question_and_help));
                intent.putExtra("url", "http://www.weloop.cn/help/634.html");
                startActivity(intent);
            case R.id.title_more:
                com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10724c();
                if (this.al == 1) {
                    intent = new Intent(getActivity(), MoreProductActivity.class);
                    intent.putExtra("title", m9825d(R.string.device_weloop_product));
                    intent.putExtra("url", "http://www.weloop.cn/app/index.html");
                    startActivity(intent);
                    return;
                }
                m10042e(m10082m());
                this.ah.removeCallbacks(this.aF);
            case R.id.switch_device:
                if (com.yf.gattlib.p109b.ProGuard.m7398b(getActivity())) {
                    m10042e((int) R.id.device_empty);
                } else {
                    com.yf.smart.weloopx.android.ui.ProGuard.m10155a().m10160a(getActivity());
                }
            default:
        }
    }

    public void m10136d() {
    }

    public void m10130a() {
        CharSequence k = com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10707k();
        String h = com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10729h();
        if (!TextUtils.isEmpty(k)) {
            String format = String.format(com.yf.gattlib.p108a.ProGuard.m7368a().m7374d().getString(R.string.activation_msg), new Object[]{h, k});
            new com.yf.smart.weloopx.p145g.ProGuard().m11305a("", format);
            ah.m10191a(getChildFragmentManager(), "activation_time", format, "\u4e86\u89e3\u66f4\u591a", "\u77e5\u9053\u4e86", 0, true);
        }
    }

    public void m10134b() {
    }

    public void m10132a(boolean z, byte b) {
        if (z) {
            this.f8130F.m7858d(b);
            this.f8130F.m7845a(20, new Object[0]);
            return;
        }
        m9822a(m9825d(R.string.reversal_fail));
    }

    private int m10082m() {
        switch (ProGuard.f8121a[this.f8173y.ordinal()]) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                return R.id.device_watch;
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_theme /*4*/:
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTint /*5*/:
                return R.id.device_now;
            default:
                return R.id.device_empty;
        }
    }

    private void m10015a(byte[] bArr, int i, int i2) {
        int i3 = 0;
        if (!this.f8152b.m7376f().m8087q()) {
            return;
        }
        byte[] bArr2;
        com.yf.gattlib.client.ProGuard a;
        if (this.f8139O) {
            if (i == 1003) {
                bArr2 = new byte[15];
                Arrays.fill(bArr2, (byte) -1);
                a = com.yf.gattlib.client.ProGuard.m7829a();
                a.m7853b(bArr2);
                a.m7857c(bArr2);
                a.m7860d(bArr2);
                this.f8132H.m11026c();
                this.f8139O = false;
            }
        } else if (!f8123c) {
            String str = "";
            int length = bArr.length / 2;
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            for (int i7 = 0; i7 < length; i7++) {
                byte b = bArr[i7 * 2];
                byte b2 = bArr[(i7 * 2) + 1];
                if (b != (byte) -1 || b2 != (byte) -1) {
                    str = str + String.valueOf(i7 + 1);
                    i6 = 1;
                    i5 = b & 255;
                    i4 = b2 & 255;
                    if (i5 == 255 && i4 == 255) {
                        i3++;
                    }
                }
            }
            if (f8124d && i == 1003 && this.f8131G.m10711o()) {
                m10089n();
            }
            if (TextUtils.isEmpty(str) || i3 == 7) {
                switch (i) {
                    case BDLocationStatusCodes.GEOFENCE_TOO_MANY_GEOFENCES /*1001*/:
                        this.f8132H.m11031f();
                        return;
                    case BDLocationStatusCodes.GEOFENCE_SERVICE_NO_ALIVIABLE /*1002*/:
                        this.f8132H.m11033h();
                        return;
                    case 1003:
                        this.f8132H.m11035j();
                        return;
                    default:
                        return;
                }
            }
            AlarmModel alarmModel = new AlarmModel();
            alarmModel.m8028e(String.valueOf(i5));
            alarmModel.m8030f(String.valueOf(i4));
            alarmModel.m8032g(i6 != 0 ? "1" : "0");
            alarmModel.m8026d(m10129a(i5) + ":" + m10129a(i4));
            alarmModel.m8020a(str);
            switch (i) {
                case BDLocationStatusCodes.GEOFENCE_TOO_MANY_GEOFENCES /*1001*/:
                    this.f8132H.m11023a(alarmModel);
                    com.yf.gattlib.p117p.ProGuard.m8292a(this.f8153e + " \u95f9\u949f1 " + alarmModel.m8027e() + ":" + alarmModel.m8029f() + " \u91cd\u590d\u5468\u671f " + str);
                    com.yf.gattlib.p117p.ProGuard.m8245a(this.f8153e + " \u95f9\u949f1 " + alarmModel.m8027e() + ":" + alarmModel.m8029f() + " \u91cd\u590d\u5468\u671f " + str);
                case BDLocationStatusCodes.GEOFENCE_SERVICE_NO_ALIVIABLE /*1002*/:
                    this.f8132H.m11025b(alarmModel);
                    com.yf.gattlib.p117p.ProGuard.m8292a(this.f8153e + " \u95f9\u949f2 " + alarmModel.m8027e() + ":" + alarmModel.m8029f() + " \u91cd\u590d\u5468\u671f " + str);
                    com.yf.gattlib.p117p.ProGuard.m8245a(this.f8153e + " \u95f9\u949f2 " + alarmModel.m8027e() + ":" + alarmModel.m8029f() + " \u91cd\u590d\u5468\u671f " + str);
                case 1003:
                    this.f8132H.m11027c(alarmModel);
                    com.yf.gattlib.p117p.ProGuard.m8292a(this.f8153e + " \u95f9\u949f3 " + alarmModel.m8027e() + ":" + alarmModel.m8029f() + " \u91cd\u590d\u5468\u671f " + str);
                    com.yf.gattlib.p117p.ProGuard.m8245a(this.f8153e + " \u95f9\u949f3 " + alarmModel.m8027e() + ":" + alarmModel.m8029f() + " \u91cd\u590d\u5468\u671f " + str);
                default:
            }
        } else if (i == 1003) {
            bArr2 = new byte[15];
            Arrays.fill(bArr2, (byte) -1);
            a = com.yf.gattlib.client.ProGuard.m7829a();
            switch (i2) {
                case 91034:
                    a.m7860d(bArr2);
                    this.f8132H.m11030e();
                    break;
                case 104564:
                    a.m7857c(bArr2);
                    a.m7860d(bArr2);
                    this.f8132H.m11028d();
                    break;
            }
            f8123c = false;
        }
    }

    public String m10129a(int i) {
        return i < 10 ? "0" + i : String.valueOf(i);
    }

    private void m10089n() {
        new com.yf.smart.weloopx.p145g.ProGuard(getActivity(), this).m11285a();
    }

    private void m10094o() {
        if (this.f8154f != null) {
            switch (m10082m()) {
                case R.id.device_now:
                    m10101q();
                case R.id.device_watch:
                    m10098p();
                default:
            }
        }
    }

    private void m10098p() {
        m9821a(new bg(this));
        if (this.f8174z != null) {
            ((MainActivity) this.f8174z).m9489h();
        }
    }

    private void m10101q() {
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f8153e + "  updateNowView()");
        m9821a(new bh(this));
    }

    private void m10106r() {
        m9821a(new bk(this));
    }

    private void m10028c(View view) {
        this.f8131G.m10724c();
        ListView listView = (ListView) view.findViewById(R.id.listViewScanner);
        this.f8140P = new ProGuard();
        BluetoothDevice n = this.f8131G.m10710n();
        if (n != null) {
            String k = this.f8131G.m10707k();
            if (m10033c(k)) {
                this.f8140P.m8136a(new com.yf.gattlib.p127m.p128a.ProGuard(n, -60, System.currentTimeMillis(), new com.yf.gattlib.p109b.ProGuard(new ArrayList(), k)));
            }
        }
        listView.setAdapter(this.f8140P);
        com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10716a(this.aG);
        this.ah.postDelayed(this.aF, 15000);
        listView.setOnItemClickListener(new bl(this));
    }

    private String m10004a(com.yf.gattlib.p127m.p128a.ProGuard proGuard) {
        String a = this.f8131G.m10713a(proGuard.f6258a.getAddress());
        if (TextUtils.isEmpty(a)) {
            return proGuard.m8137a();
        }
        return a;
    }

    private boolean m10025b(com.yf.gattlib.p127m.p128a.ProGuard proGuard) {
        return com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10723b(proGuard.f6258a);
    }

    private boolean m10031c(com.yf.gattlib.p127m.p128a.ProGuard proGuard) {
        return m10033c(m10004a(proGuard));
    }

    private boolean m10033c(String str) {
        com.yf.smart.weloopx.p146c.ProGuard c = com.yf.smart.weloopx.p146c.ProGuard.m10911c(str);
        com.yf.gattlib.p117p.ProGuard.m8293a(this.f8153e, str + ", " + c);
        return com.yf.smart.weloopx.p149d.ProGuard.m11006b().m11008a(c);
    }

    private void m10036d(com.yf.gattlib.p127m.p128a.ProGuard proGuard) {
        m9821a(new bq(this, proGuard));
    }

    public void onDestroy() {
        Log.e(this.f8153e, "onDestroy");
        com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10724c();
        this.ah.removeCallbacks(this.aF);
        super.onDestroy();
    }

    public boolean m10135b(int i) {
        if (i != 4 || !com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10730i() || (this.f8141Q.getVisibility() != 0 && this.f8158j.getVisibility() != 0)) {
            return false;
        }
        com.yf.smart.weloopx.p140b.ProGuard.m10712a().m10724c();
        m10042e(m10082m());
        return true;
    }

    public void onPause() {
        Log.e(this.f8153e, "onPause");
        if (m10111s()) {
            this.f8171w.post(new br(this));
        }
        this.f8131G.m10724c();
        super.onPause();
    }

    private boolean m10111s() {
        return BluetoothAdapter.getDefaultAdapter().isEnabled();
    }

    public void onDestroyView() {
        Log.e(this.f8153e, "onDestroyView");
        com.yf.gattlib.p108a.ProGuard.m7347a().m7361b(this.ao, this.ap);
        this.f8131G.m10724c();
        this.ah.removeCallbacks(this.aF);
        super.onDestroyView();
    }
}
