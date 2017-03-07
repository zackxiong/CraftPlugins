package com.yf.smart.weloopx.android.ui.activities;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.Intent;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshScrollView;
import com.yf.smart.weloopx.activitys.RegisterPhoneActivity;
import com.yf.smart.weloopx.android.ui.p139c.ProGuard;
import com.yf.smart.weloopx.android.ui.p139c.ah;
import com.yf.smart.weloopx.android.ui.p139c.aw;
import com.yf.smart.weloopx.android.ui.widget.CircularImageView;
import com.yf.smart.weloopx.android.ui.widget.OptionToggleButton;
import com.yf.smart.weloopx.data.models.UserProfileResult;
import com.yf.smart.weloopx.dist.R;
import com.yf.smart.weloopx.dist.wxapi.WXEntryActivity;
import java.text.ParseException;
import java.util.Calendar;

/* compiled from: ProGuard */
public class el extends ProGuard implements OnClickListener, ah.ProGuard {
    public static boolean f7955a;
    private aw f7956A;
    private com.yf.smart.weloopx.p145g.ProGuard f7957B;
    private Context f7958C;
    private OptionToggleButton f7959D;
    private com.yf.gattlib.p110c.ProGuard f7960E;
    private RelativeLayout f7961F;
    private RelativeLayout f7962G;
    private ImageView f7963H;
    private ImageView f7964I;
    private ImageView f7965J;
    private com.yf.smart.weloopx.android.ui.widget.ProGuard f7966K;
    private com.yf.smart.weloopx.android.ui.widget.ProGuard f7967L;
    private com.yf.smart.weloopx.android.ui.widget.ProGuard f7968M;
    private com.yf.smart.weloopx.android.ui.widget.ProGuard f7969N;
    private LinearLayout f7970O;
    private LinearLayout f7971P;
    private LinearLayout f7972Q;
    private LinearLayout f7973R;
    private com.yf.smart.weloopx.p140b.p141b.ProGuard f7974S;
    private boolean f7975T;
    private com.yf.smart.weloopx.android.ui.widget.ProGuard f7976U;
    private OnClickListener f7977V;
    private OnCheckedChangeListener f7978W;
    private String f7979b;
    private UserProfileResult f7980c;
    private boolean f7981d;
    private com.yf.smart.weloopx.android.ui.widget.ProGuard f7982e;
    private boolean f7983f;
    private boolean f7984g;
    private String f7985h;
    private String f7986i;
    private int f7987j;
    private TextView f7988k;
    private TextView f7989l;
    private TextView f7990m;
    private TextView f7991n;
    private TextView f7992o;
    private Button f7993p;
    private View f7994q;
    private View f7995r;
    private View f7996s;
    private View f7997t;
    private View f7998u;
    private View f7999v;
    private View f8000w;
    private View f8001x;
    private CircularImageView f8002y;
    private PullToRefreshScrollView f8003z;

    public el() {
        this.f7979b = "MyFragment";
        this.f7987j = 0;
        this.f7975T = true;
        this.f7977V = new er(this);
        this.f7978W = new ex(this);
    }

    static {
        f7955a = false;
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        m9861a();
        this.f7958C = activity.getApplicationContext();
        this.f7960E = com.yf.gattlib.p108a.ProGuard.m7368a().m7387q();
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        m9862a(layoutInflater);
        m9868b();
        m9872d();
        m9874e();
        m9876f();
        m9879g();
        m9880h();
        m9883i();
        m9885j();
        m9887k();
        m9897p();
        this.f7974S = (com.yf.smart.weloopx.p140b.p141b.ProGuard) m9823c();
        return this.f7994q;
    }

    public void onResume() {
        super.onResume();
        this.f7975T = true;
        m9892n();
        m9899r();
        m9903v();
    }

    private void m9861a() {
    }

    private void m9862a(LayoutInflater layoutInflater) {
        this.f7994q = layoutInflater.inflate(R.layout.my, null);
        this.f7961F = (RelativeLayout) this.f7994q.findViewById(R.id.my_rl_bind);
        this.f7962G = (RelativeLayout) this.f7994q.findViewById(R.id.my_rl_bind_info);
        this.f7961F.setOnClickListener(this);
        this.f7963H = (ImageView) this.f7994q.findViewById(R.id.my_iv_wechat);
        this.f7963H.setOnClickListener(this);
        this.f7965J = (ImageView) this.f7994q.findViewById(R.id.my_iv_bind_go);
        this.f7964I = (ImageView) this.f7994q.findViewById(R.id.my_iv_phone);
        this.f7964I.setOnClickListener(this);
        this.f7991n = (TextView) this.f7994q.findViewById(R.id.at_tv_title);
        this.f7991n.setText(R.string.me);
        this.f7992o = (TextView) this.f7994q.findViewById(R.id.my_tv_bind_msg);
        this.f7994q.findViewById(R.id.at_btn_left).setVisibility(8);
        this.f7997t = this.f7994q.findViewById(R.id.at_view_point);
        this.f7993p = (Button) this.f7994q.findViewById(R.id.at_btn_right);
        this.f7993p.setBackgroundResource(R.drawable.msg_noti_icon);
        this.f7993p.setVisibility(0);
        this.f7993p.setOnClickListener(this);
        this.f7993p.setPadding(0, 0, 0, 5);
        this.f7993p.getPaint().setTypeface(Typeface.DEFAULT_BOLD);
        View findViewById = this.f7994q.findViewById(R.id.best_day);
        View findViewById2 = this.f7994q.findViewById(R.id.best_week);
        View findViewById3 = this.f7994q.findViewById(R.id.carrer_sum);
        View findViewById4 = this.f7994q.findViewById(R.id.series_finish_day);
        this.f7966K = com.yf.smart.weloopx.android.ui.widget.ProGuard.m10643a(findViewById);
        this.f7967L = com.yf.smart.weloopx.android.ui.widget.ProGuard.m10643a(findViewById2);
        this.f7968M = com.yf.smart.weloopx.android.ui.widget.ProGuard.m10643a(findViewById3);
        this.f7969N = com.yf.smart.weloopx.android.ui.widget.ProGuard.m10643a(findViewById4);
        this.f7957B = new com.yf.smart.weloopx.p145g.ProGuard();
        this.f8003z = (PullToRefreshScrollView) this.f7994q.findViewById(R.id.pull_refresh_scrollview);
        this.f8003z.getLoadingLayoutProxy().setLastUpdatedLabel(this.f7960E.getString("KEY_USER_TIME_LABEL", ""));
        this.f8003z.setOnRefreshListener(new em(this));
        this.f7976U = com.yf.smart.weloopx.android.ui.widget.ProGuard.m10644a(this.f7994q, R.id.sync_swich);
        this.f7976U.f8640a.setText(m9825d(R.string.auto_sync_data));
        this.f7976U.f8647h.setCheckedFromCode(com.yf.gattlib.p108a.ProGuard.m7368a().m7387q().getBoolean("KEY_AUTO_SYNC_DATA", false));
        this.f7976U.f8647h.setOnCheckedChangeListener(this.f7978W);
    }

    private void m9868b() {
        this.f7970O = (LinearLayout) this.f7994q.findViewById(R.id.my_message_filter);
        this.f7970O.setOnClickListener(new ey(this));
        this.f7971P = (LinearLayout) this.f7994q.findViewById(R.id.my_reminders);
        this.f7971P.setOnClickListener(new ez(this));
        this.f7972Q = (LinearLayout) this.f7994q.findViewById(R.id.my_alarm);
        this.f7972Q.setOnClickListener(new fa(this));
        this.f7973R = (LinearLayout) this.f7994q.findViewById(R.id.my_anti_disturb);
        this.f7973R.setOnClickListener(new fb(this));
    }

    private void m9872d() {
        this.f7966K.f8645f.setImageResource(R.drawable.my_best_day);
        this.f7966K.f8640a.setText(R.string.best_date);
        this.f7966K.f8640a.setTextSize(20.0f);
        this.f7966K.f8640a.setTextColor(getResources().getColor(R.color.ranking_normal));
        this.f7966K.f8642c.setTextColor(getResources().getColor(R.color.ranking_normal));
        this.f7967L.f8645f.setImageResource(R.drawable.my_best_week);
        this.f7967L.f8640a.setText(R.string.best_week);
        this.f7967L.f8640a.setTextSize(20.0f);
        this.f7967L.f8640a.setTextColor(getResources().getColor(R.color.ranking_normal));
        this.f7967L.f8642c.setTextColor(getResources().getColor(R.color.ranking_normal));
        this.f7968M.f8645f.setImageResource(R.drawable.my_carrer_sum);
        this.f7968M.f8640a.setText(R.string.life_calorie);
        this.f7968M.f8640a.setTextSize(20.0f);
        this.f7968M.f8640a.setTextColor(getResources().getColor(R.color.ranking_normal));
        this.f7968M.f8642c.setText(R.string.total);
        this.f7968M.f8642c.setTextSize(20.0f);
        this.f7968M.f8642c.setTextColor(getResources().getColor(R.color.ranking_normal));
        this.f7969N.f8645f.setImageResource(R.drawable.my_series_finish_day);
        this.f7969N.f8640a.setText(R.string.series_finish_day);
        this.f7969N.f8640a.setTextSize(20.0f);
        this.f7969N.f8640a.setTextColor(getResources().getColor(R.color.ranking_normal));
        this.f7969N.f8642c.setText(R.string.record_day);
        this.f7969N.f8642c.setTextSize(20.0f);
        this.f7969N.f8642c.setTextColor(getResources().getColor(R.color.ranking_normal));
        this.f7969N.f8646g.setImageResource(R.drawable.unit_standard_days);
    }

    private void m9874e() {
        this.f7995r = this.f7994q.findViewById(R.id.profile);
        this.f7995r.setOnClickListener(new fc(this));
        this.f7988k = (TextView) this.f7995r.findViewById(R.id.nick_name);
        this.f8002y = (CircularImageView) this.f7995r.findViewById(R.id.portrait);
        this.f7982e = com.yf.smart.weloopx.android.ui.widget.ProGuard.m10644a(this.f7995r, R.id.standard_reaching_rate);
        this.f7982e.f8640a.setTextColor(getResources().getColor(R.color.black));
        this.f7989l = this.f7982e.f8641b;
        this.f7982e = com.yf.smart.weloopx.android.ui.widget.ProGuard.m10644a(this.f7995r, R.id.active_point);
        this.f7982e.f8640a.setText(R.string.active_days);
        this.f7982e.f8640a.setTextColor(getResources().getColor(R.color.black));
        this.f7990m = this.f7982e.f8641b;
        this.f7990m.setVisibility(0);
        this.f7982e.f8640a.setVisibility(0);
    }

    private void m9876f() {
        this.f7996s = this.f7994q.findViewById(R.id.set_target);
        this.f7996s.setOnClickListener(new fd(this));
        this.f7982e = com.yf.smart.weloopx.android.ui.widget.ProGuard.m10643a(this.f7996s);
        this.f7982e.f8641b.setVisibility(8);
        this.f7982e.f8640a.setText(R.string.targetSetting);
    }

    private void m9879g() {
        this.f8000w = this.f7994q.findViewById(R.id.my_rl_download_history_data);
        this.f8000w.setOnClickListener(this.f7977V);
        this.f7982e = com.yf.smart.weloopx.android.ui.widget.ProGuard.m10643a(this.f8000w);
        this.f7982e.f8641b.setVisibility(8);
        this.f7982e.f8640a.setText(R.string.download_histroy_data);
        this.f8000w.setVisibility(8);
    }

    private void m9880h() {
        this.f7999v = this.f7994q.findViewById(R.id.my_rl_version_info);
        this.f7982e = com.yf.smart.weloopx.android.ui.widget.ProGuard.m10643a(this.f7999v);
        this.f7982e.f8641b.setText(com.yf.gattlib.p117p.ProGuard.m8224a(getActivity()));
        this.f7982e.f8644e.setVisibility(8);
        this.f7982e.f8640a.setText(R.string.version);
    }

    private void m9883i() {
        this.f7998u = this.f7994q.findViewById(R.id.my_rl_evaluation);
        this.f7998u.setOnClickListener(this.f7977V);
        this.f7982e = com.yf.smart.weloopx.android.ui.widget.ProGuard.m10643a(this.f7998u);
        this.f7982e.f8641b.setVisibility(8);
        this.f7982e.f8640a.setText(R.string.evaluation);
        this.f7998u.setVisibility(8);
    }

    private void m9885j() {
        this.f8001x = this.f7994q.findViewById(R.id.my_rl_goal_notification);
        this.f8001x.setOnClickListener(this.f7977V);
        this.f7982e = com.yf.smart.weloopx.android.ui.widget.ProGuard.m10643a(this.f8001x);
        this.f7982e.f8641b.setVisibility(8);
        this.f7982e.f8640a.setText(R.string.goal_notification);
        this.f8001x.setVisibility(8);
    }

    private void m9887k() {
        this.f7959D = (OptionToggleButton) this.f7994q.findViewById(R.id.my_otb_location);
        this.f7959D.setChecked(this.f7960E.getBoolean("KEY_TRAJECTORY_SWITCH", false));
        this.f7959D.setOnCheckedChangeListener(new fe(this));
    }

    private void m9889l() {
        AlertDialog create = new Builder(getActivity()).create();
        create.show();
        Window window = create.getWindow();
        window.setContentView(R.layout.alert_dialog);
        ((TextView) window.findViewById(R.id.ad_tv_description)).setVisibility(8);
        TextView textView = (TextView) window.findViewById(R.id.ad_tv_description_title);
        textView.setText(R.string.open_location);
        textView.setVisibility(0);
        textView = (TextView) window.findViewById(R.id.ad_tv_msg);
        textView.setText(R.string.location_msg);
        textView.setVisibility(0);
        window.findViewById(R.id.ad_btn_sure).setOnClickListener(new ff(this, create));
        window.findViewById(R.id.ad_btn_cancel).setOnClickListener(new eo(this, create));
    }

    private synchronized void m9891m() {
        if (this.f7956A != null) {
            com.yf.smart.weloopx.android.ui.ProGuard.m10543a(this.f7956A);
        }
        this.f7956A = new aw();
        this.f7956A.m10231e(getString(R.string.load_me_fragment_dlg));
        com.yf.smart.weloopx.android.ui.ProGuard.m10544a(this.f7956A, getFragmentManager(), "LoadFrgmentDialog");
    }

    private void m9892n() {
        m9891m();
        if (this.f7981d) {
            m9895o();
            return;
        }
        this.f7981d = true;
        com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10761a(new ep(this));
    }

    private void m9895o() {
        this.f7981d = false;
        try {
            com.yf.gattlib.p108a.ProGuard.m7368a().m7371a(new eq(this), 500);
        } catch (Exception e) {
            com.yf.gattlib.p117p.ProGuard.m8297b(this.f7979b + " stopRefresh\u51fa\u9519 = " + e.toString());
        }
    }

    private void m9897p() {
        if (this.f7987j > 0) {
            m9898q();
        }
        if (this.f7980c != null) {
            Calendar a;
            com.yf.smart.weloopx.p143f.ProGuard.m11184a().m3884a(this.f8002y, this.f7980c.getHeadPicUrl());
            this.f7989l.setText(this.f7980c.getStandardRate() + "%");
            this.f7990m.setText("" + this.f7980c.getActiveDays());
            this.f7988k.setText(this.f7980c.getNickname());
            String str = "";
            try {
                a = com.yf.smart.weloopx.p145g.ProGuard.m11350a(this.f7980c.getBestDay(), "yyyy-MM-dd");
                str = str + (a.get(2) + 1) + "/" + a.get(5) + ", " + a.get(1);
            } catch (ParseException e) {
                e.printStackTrace();
            }
            this.f7966K.f8642c.setText("  " + str);
            this.f7966K.f8641b.setText("" + Math.round(this.f7980c.getBestDayCalorie()));
            str = "";
            try {
                a = com.yf.smart.weloopx.p145g.ProGuard.m11350a(this.f7980c.getBestWeekBeginDate(), "yyyy-MM-dd");
                str = str + (a.get(2) + 1) + "/" + a.get(5) + "-" + com.yf.smart.weloopx.p145g.ProGuard.m11350a(this.f7980c.getBestWeekEndDate(), "yyyy-MM-dd").get(5) + ", " + a.get(1);
            } catch (ParseException e2) {
                e2.printStackTrace();
            }
            this.f7967L.f8642c.setText("  " + str);
            this.f7967L.f8641b.setText("" + Math.round(this.f7980c.getBestWeekCalorie()));
            this.f7968M.f8641b.setText("" + Math.round(this.f7980c.getTotalCalorie()));
            this.f7969N.f8641b.setText(this.f7980c.getDbcount());
        }
    }

    public void onClick(View view) {
        int i = 0;
        switch (view.getId()) {
            case R.id.at_btn_right:
                getActivity().startActivity(new Intent(getActivity(), MessageNotification.class));
                this.f7997t.setVisibility(8);
                this.f7993p.setText("");
                this.f7974S.m9442j();
            case R.id.my_rl_bind:
                int i2;
                if (this.f7962G.getVisibility() == 0) {
                    i2 = 1;
                } else {
                    i2 = 0;
                }
                RelativeLayout relativeLayout = this.f7962G;
                if (i2 != 0) {
                    i = 8;
                }
                relativeLayout.setVisibility(i);
                this.f7965J.setImageResource(i2 != 0 ? R.drawable.arrow : R.drawable.arrow_down);
            case R.id.my_iv_wechat:
                m9902u();
            case R.id.my_iv_phone:
                m9901t();
            default:
        }
    }

    private void m9898q() {
        m9821a(new es(this));
    }

    private void m9899r() {
        boolean z = true;
        if (isAdded()) {
            this.f7962G.setVisibility(8);
            this.f7985h = this.f7957B.m11318e(getActivity());
            this.f7986i = this.f7957B.m11316d(getActivity());
            com.yf.gattlib.p117p.ProGuard.m8292a(this.f7979b + " \u6211\u7684\u754c\u9762\u7684openID = " + this.f7985h + ", mobile = " + this.f7986i);
            this.f7983f = !TextUtils.isEmpty(this.f7986i);
            if (TextUtils.isEmpty(this.f7985h)) {
                z = false;
            }
            this.f7984g = z;
            this.f7964I.setImageResource(this.f7983f ? R.drawable.phone_bind : R.drawable.phone_unbind);
            this.f7963H.setImageResource(this.f7984g ? R.drawable.wechat_bind : R.drawable.wechat_unbind);
            if (this.f7984g && !this.f7983f) {
                m9900s();
            }
            if (this.f7983f && this.f7984g) {
                this.f7992o.setText(m9825d(R.string.binded));
                this.f7992o.setTextColor(-16777216);
                return;
            }
            this.f7992o.setText(m9825d(R.string.unbind));
            this.f7992o.setTextColor(-65536);
        }
    }

    private void m9900s() {
        if (isAdded() && this.f7960E.getBoolean("KEY_WAR_BIND_PHONE", true)) {
            AlertDialog create = new Builder(getActivity()).create();
            create.show();
            Window window = create.getWindow();
            window.setBackgroundDrawable(new ColorDrawable(0));
            window.setContentView(R.layout.alert_dialog);
            Button button = (Button) window.findViewById(R.id.ad_btn_sure);
            button.setText(m9825d(R.string.bind_now));
            button.setOnClickListener(new et(this, create));
            window.findViewById(R.id.ad_view_ver_line).setVisibility(0);
            button = (Button) window.findViewById(R.id.ad_btn_cancel);
            button.setVisibility(0);
            button.setText(m9825d(R.string.refused));
            button.setOnClickListener(new eu(this, create));
            TextView textView = (TextView) window.findViewById(R.id.ad_tv_description);
            textView.setVisibility(0);
            textView.setText("\u60a8\u7684\u8d26\u53f7\u6682\u672a\u4e0e\u624b\u673a\u53f7\u7ed1\u5b9a\uff0c\u7ed1\u5b9a\u540e\u53ef\u5feb\u901f\u767b\u5f55\u5b98\u65b9\u5546\u57ce\uff0c\u4f7f\u7528\u79ef\u5206\u7545\u4eab\u66f4\u591a\u4f18\u60e0!");
            ((TextView) window.findViewById(R.id.ad_tv_description_title)).setVisibility(8);
            ((TextView) window.findViewById(R.id.ad_tv_msg)).setVisibility(8);
            this.f7960E.m7414a("KEY_WAR_BIND_PHONE", false);
        }
    }

    private void m9901t() {
        if (this.f7983f) {
            m9822a(m9825d(R.string.binded));
        } else if (isAdded()) {
            Intent intent = new Intent(getActivity(), RegisterPhoneActivity.class);
            intent.putExtra("OPEN_ID", this.f7985h);
            intent.putExtra("IS_BIND_PHONE", true);
            startActivity(intent);
        } else {
            com.yf.gattlib.p117p.ProGuard.m8297b(this.f7979b + " \u8df3\u8f6c\u7684\u51fa\u9519");
        }
    }

    private void m9902u() {
        if (this.f7984g) {
            m9822a(m9825d(R.string.binded));
        } else if (isAdded() && this.f7975T) {
            WXEntryActivity.f8889a = true;
            com.yf.gattlib.p117p.ProGuard.m8292a(this.f7979b + " \u5c06\u8981\u7ed1\u5b9a\u7684\u624b\u673a\u53f7 = " + this.f7957B.m11316d(getActivity()));
            this.f7957B.m11301a(getActivity(), 10261026);
            this.f7957B.m11310b(getActivity());
            this.f7975T = false;
        }
    }

    private void m9903v() {
        com.p038b.p039a.p048d.ProGuard proGuard = new com.p038b.p039a.p048d.ProGuard();
        proGuard.m4068a("accessToken", com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10780c());
        new com.p038b.p039a.ProGuard().m3956a(com.p038b.p039a.p048d.p050b.ProGuard.ProGuard.POST, com.yf.smart.weloopx.p143f.ProGuard.m11229a().m11261u(), proGuard, new ev(this));
    }

    public void m9904a(String str, boolean z) {
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f7979b + " \u63a5\u6536\u5230\u5bf9\u8bdd\u6846\u7684\u6267\u884c isOk = " + z + ", tag = " + str);
        if ("auto_sync".equals(str) && isAdded() && z) {
            com.yf.gattlib.p117p.ProGuard.m8292a(this.f7979b + " \u6253\u5f00\u540c\u6b65");
            com.yf.gattlib.p108a.ProGuard.m7368a().m7387q().m7414a("KEY_AUTO_SYNC_DATA", true);
            com.yf.smart.weloopx.p146c.ProGuard.m10923a().m10967f();
        }
    }
}
