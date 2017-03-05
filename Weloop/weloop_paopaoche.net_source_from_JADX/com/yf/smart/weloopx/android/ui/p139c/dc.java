package com.yf.smart.weloopx.android.ui.p139c;

import android.app.Activity;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.baidu.android.pushservice.PushConstants;
import com.yf.smart.weloopx.activitys.RegisterPhoneActivity1;
import com.yf.smart.weloopx.android.ui.p139c.ax.ProGuard;
import com.yf.smart.weloopx.android.ui.widget.CircularImageView;
import com.yf.smart.weloopx.data.models.ApplyFriendModel;
import com.yf.smart.weloopx.data.models.UserData;
import com.yf.smart.weloopx.data.models.UserProfileResult;
import com.yf.smart.weloopx.dist.R;
import java.text.ParseException;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.dc */
public class dc extends av implements OnClickListener, ProGuard {
    private static final int f8400A;
    private static final int f8401B;
    private static final int f8402C;
    private static final int f8403D;
    private static final int f8404E;
    private static final int f8405F;
    private static final int f8406G;
    private static int f8407z;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131559110)
    CircularImageView f8408b;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131559017)
    TextView f8409c;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131559109)
    ListView f8410d;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558591)
    View f8411e;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131559115)
    TextView f8412f;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131559111)
    CircularImageView f8413g;
    private ProGuard f8414h;
    private UserProfileResult f8415i;
    private com.yf.gattlib.p110c.ProGuard f8416j;
    private aw f8417k;
    private com.yf.smart.weloopx.data.ProGuard f8418l;
    private Typeface f8419m;
    private int f8420n;
    private int f8421o;
    private boolean f8422p;
    private boolean f8423q;
    private boolean f8424r;
    private com.yf.smart.weloopx.p140b.p141b.ProGuard f8425s;
    private String f8426t;
    private com.yf.smart.weloopx.data.ProGuard f8427u;
    private TextView f8428v;
    private TextView f8429w;
    private TextView f8430x;
    private TextView f8431y;

    /* renamed from: com.yf.smart.weloopx.android.ui.c.dc.a */
    private class ProGuard extends BaseAdapter {
        final /* synthetic */ dc f8399a;

        private ProGuard(dc dcVar) {
            this.f8399a = dcVar;
        }

        public int getCount() {
            if (this.f8399a.f8415i == null) {
                return 0;
            }
            return 7;
        }

        public Object getItem(int i) {
            return null;
        }

        public long getItemId(int i) {
            return (long) i;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = LayoutInflater.from(this.f8399a.getActivity()).inflate(R.layout.user_profile_item, viewGroup, false);
            }
            this.f8399a.m10415a(i, com.yf.smart.weloopx.android.ui.widget.ProGuard.m10643a(view.findViewById(R.id.profile_item)));
            return view;
        }
    }

    public dc() {
        this.f8420n = 0;
        this.f8422p = false;
        this.f8423q = false;
        this.f8424r = false;
        this.f8426t = "";
    }

    public static void m10417a(FragmentManager fragmentManager, int i, int i2, boolean z, String str, boolean z2) {
        Bundle bundle = new Bundle();
        bundle.putInt(PushConstants.EXTRA_USER_ID, i);
        bundle.putInt("state", i2);
        bundle.putBoolean("have_interface", z);
        bundle.putBoolean("IS_CAN_DEL_FRIEND", z2);
        bundle.putString("MY_USER_ID", str);
        DialogFragment dcVar = new dc();
        dcVar.setArguments(bundle);
        com.yf.smart.weloopx.android.ui.ProGuard.m10544a(dcVar, fragmentManager, "user_profile");
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        m10431e();
        m10433f();
        m10435g();
    }

    protected void m10444a(Window window) {
        super.m10230a(window);
    }

    protected View m10443a() {
        View inflate = LayoutInflater.from(getActivity()).inflate(R.layout.user_profile, null);
        com.p038b.p039a.ProGuard.m4087a((Object) this, inflate);
        m10418a(inflate);
        m10416a(this.f8421o, true);
        com.yf.smart.weloopx.android.ui.ProGuard.m10543a(this.f8417k);
        return inflate;
    }

    public void onResume() {
        super.onResume();
        if (this.f8422p) {
            com.yf.gattlib.p117p.ProGuard.m8292a("UserProfileFragment \u7f16\u8f91\u4e2a\u4eba\u8d44\u6599\u540e\u91cd\u65b0\u83b7\u5f97\u6570\u636e");
            this.f8422p = false;
            m10435g();
        }
    }

    public void onDestroyView() {
        super.onDestroyView();
    }

    public void onDetach() {
        if (this.f8423q && this.f8425s != null) {
            this.f8425s.m9493c();
        }
        super.onDetach();
    }

    private void m10431e() {
        this.f8427u = new com.yf.smart.weloopx.data.ProGuard(getActivity());
        this.f8418l = new com.yf.smart.weloopx.data.ProGuard(getActivity());
        this.f8416j = com.yf.gattlib.p108a.ProGuard.m7368a().m7387q();
        this.f8419m = Typeface.createFromAsset(getActivity().getAssets(), "fonts/diy.otf");
        if (getArguments().getBoolean("have_interface")) {
            this.f8425s = (com.yf.smart.weloopx.p140b.p141b.ProGuard) m10171c();
        }
        this.f8426t = getArguments().getString("MY_USER_ID");
        this.f8421o = getArguments().getInt("state");
        this.f8420n = getArguments().getInt(PushConstants.EXTRA_USER_ID);
        this.f8424r = getArguments().getBoolean("IS_CAN_DEL_FRIEND");
        com.yf.gattlib.p117p.ProGuard.m8292a("UserProfileFragment \u521d\u59cb\u5316\u674e\u66fc\u7684curState = " + this.f8421o + ", isCanDelFriend = " + this.f8424r + ",userId = " + this.f8420n + ", myUserId = " + this.f8426t);
        if (this.f8426t.equals(String.valueOf(this.f8420n))) {
            this.f8421o = 4007;
        }
    }

    private void m10433f() {
        this.f8417k = new aw();
        if (isAdded()) {
            this.f8417k.m10231e(getString(R.string.pull_to_refresh_refreshing_label));
        }
    }

    private void m10435g() {
        com.yf.smart.weloopx.android.ui.ProGuard.m10544a(this.f8417k, getFragmentManager(), "LoadFrgmentDialog");
        this.f8414h = new ProGuard();
        com.yf.smart.weloopx.p140b.p141b.ProGuard ddVar = new dd(this);
        if (this.f8420n == -1) {
            com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10761a(ddVar);
        } else {
            com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10760a(this.f8420n, ddVar);
        }
    }

    private void m10418a(View view) {
        com.yf.smart.weloopx.android.ui.widget.ProGuard a = com.yf.smart.weloopx.android.ui.widget.ProGuard.m10644a(view, R.id.gold_count);
        a.f8645f.setImageResource(R.drawable.gold);
        this.f8428v = a.f8641b;
        a = com.yf.smart.weloopx.android.ui.widget.ProGuard.m10644a(view, R.id.silver_count);
        a.f8645f.setImageResource(R.drawable.silver);
        this.f8429w = a.f8641b;
        a = com.yf.smart.weloopx.android.ui.widget.ProGuard.m10644a(view, R.id.bronze_count);
        a.f8645f.setImageResource(R.drawable.bronze);
        this.f8430x = a.f8641b;
        a = com.yf.smart.weloopx.android.ui.widget.ProGuard.m10644a(view, R.id.active_point);
        a.f8644e.setVisibility(8);
        a.f8640a.setText(R.string.active_point);
        this.f8431y = a.f8641b;
        this.f8431y.setTypeface(this.f8431y.getTypeface(), 1);
        this.f8431y.setTextColor(getResources().getColor(R.color.ranking_normal));
        a.f8644e.setVisibility(4);
        a.f8640a.setVisibility(4);
        this.f8431y.setVisibility(4);
        this.f8410d.setAdapter(this.f8414h);
        this.f8411e.setOnClickListener(this);
        this.f8412f.setVisibility(8);
        this.f8412f.setOnClickListener(this);
    }

    private void m10416a(int i, boolean z) {
        CharSequence c;
        int i2;
        com.yf.gattlib.p117p.ProGuard.m8292a("UserProfileFragment handleState\u4e2d\u7684updateState = " + i);
        this.f8421o = i;
        this.f8413g.setVisibility(8);
        this.f8412f.setClickable(false);
        if (isAdded()) {
            this.f8412f.setTextColor(getResources().getColor(R.color.gray));
        }
        switch (i) {
            case 4001:
                c = m10172c(R.string.already_send);
                break;
            case 4002:
                c = m10172c(R.string.add_friend);
                this.f8412f.setClickable(true);
                this.f8412f.setTextColor(getResources().getColor(R.color.white));
                break;
            case 4003:
                c = m10172c(R.string.agreed);
                break;
            case 4004:
                c = m10172c(R.string.already_add);
                break;
            case 4005:
                c = m10172c(R.string.refushed);
                break;
            case 4006:
                c = m10172c(R.string.be_rejected);
                break;
            case 4008:
                c = m10172c(R.string.logout);
                this.f8412f.setTextColor(getResources().getColor(R.color.cruze_black));
                this.f8413g.setVisibility(0);
                this.f8413g.setOnClickListener(this);
                this.f8412f.setClickable(true);
                break;
            case 4009:
                c = m10172c(R.string.agree);
                this.f8412f.setClickable(true);
                if (isAdded()) {
                    this.f8412f.setTextColor(getResources().getColor(R.color.white));
                    break;
                }
                break;
            case 4010:
                c = m10172c(R.string.del_friend);
                this.f8412f.setClickable(true);
                this.f8412f.setTextColor(-1);
                break;
            default:
                c = "";
                break;
        }
        this.f8412f.setText(c);
        TextView textView = this.f8412f;
        if (z) {
            i2 = 8;
        } else {
            i2 = 0;
        }
        textView.setVisibility(i2);
        if (String.valueOf(this.f8420n).equals(this.f8426t)) {
            this.f8412f.setVisibility(8);
        }
    }

    public void b_() {
        m10437h();
    }

    public void m10445a(String str) {
        m10437h();
        com.yf.gattlib.p117p.ProGuard.m8298b("UserProfileFragment", str);
    }

    private void m10437h() {
        if (isAdded()) {
            com.yf.smart.weloopx.p145g.ProGuard proGuard = new com.yf.smart.weloopx.p145g.ProGuard();
            proGuard.m11302a(getActivity(), "");
            proGuard.m11311b(getActivity(), "");
            com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10779b("");
            m10166a(new de(this));
        }
    }

    private void m10438i() {
        if (this.f8415i == null) {
            this.f8412f.setVisibility(0);
            return;
        }
        String nickname = this.f8415i.getNickname();
        String headPicUrl = this.f8415i.getHeadPicUrl();
        this.f8409c.setText(nickname);
        this.f8431y.setText("" + this.f8415i.getTotalActivePoint());
        this.f8428v.setText("" + this.f8415i.getGoldCount());
        this.f8429w.setText("" + this.f8415i.getSilverCount());
        this.f8430x.setText("" + this.f8415i.getBronzeCount());
        com.yf.smart.weloopx.p143f.ProGuard.m11184a().m3884a(this.f8408b, this.f8415i.getHeadPicUrl());
        this.f8414h.notifyDataSetChanged();
        this.f8416j.m7413a("NICK_NAME", nickname);
        this.f8416j.m7413a("HEAD_PIC", headPicUrl);
        UserData e = com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10785e(com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10780c());
        e.setHeadPicAddress(this.f8415i.getHeadPicUrl());
        com.yf.gattlib.p117p.ProGuard.m8297b("UserProfileFragment &&&&& updateProfile Save user info");
        com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10764a(e);
        m10427c(this.f8415i.getIsfriend());
    }

    private void m10427c(String str) {
        com.yf.gattlib.p117p.ProGuard.m8297b("UserProfileFragment \u4e2a\u4eba\u8d44\u6599\u8be6\u60c5\u91cc\u9762\u7684\u72b6\u6001  isFriend = " + str + ", isCanDelFriend = " + this.f8424r);
        if (this.f8424r) {
            m10416a(4010, false);
            return;
        }
        this.f8412f.setVisibility(0);
        if (!TextUtils.isEmpty(str)) {
            if (str.equals("4")) {
                m10416a(4009, false);
            } else if (str.equals("2")) {
                m10416a(4001, false);
            } else if (str.equals("1")) {
                m10416a(4003, false);
            }
        }
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.at_back:
                m10167b();
            case R.id.user_edit:
                Intent intent = new Intent(getActivity(), RegisterPhoneActivity1.class);
                intent.putExtra("set_target", false);
                startActivity(intent);
                this.f8422p = true;
            case R.id.at_edit:
                m10439j();
            default:
        }
    }

    private void m10439j() {
        switch (this.f8421o) {
            case 4002:
                m10440k();
            case 4008:
                ax.m10234a(getChildFragmentManager());
            case 4009:
                m10441l();
            case 4010:
                m10432e(String.valueOf(this.f8420n));
            default:
        }
    }

    private void m10440k() {
        com.p038b.p039a.p048d.ProGuard proGuard = new com.p038b.p039a.p048d.ProGuard();
        proGuard.m4068a("accessToken", com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10780c());
        proGuard.m4068a("userId", String.valueOf(this.f8420n));
        new com.p038b.p039a.ProGuard().m3956a(com.p038b.p039a.p048d.p050b.ProGuard.ProGuard.POST, com.yf.smart.weloopx.p143f.ProGuard.m11229a().m11259s(), proGuard, new df(this));
    }

    private void m10441l() {
        com.p038b.p039a.p048d.ProGuard proGuard = new com.p038b.p039a.p048d.ProGuard();
        proGuard.m4068a("accessToken", com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10780c());
        proGuard.m4068a("requestUserId", String.valueOf(this.f8420n));
        proGuard.m4068a("acceptFlag", "1");
        new com.p038b.p039a.ProGuard().m3956a(com.p038b.p039a.p048d.p050b.ProGuard.ProGuard.POST, com.yf.smart.weloopx.p143f.ProGuard.m11229a().m11262v(), proGuard, new dg(this));
    }

    private void m10429d(String str) {
        ApplyFriendModel applyFriendModel = new ApplyFriendModel();
        applyFriendModel.setAccount(com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10778b());
        applyFriendModel.setBeApplyUserId(str);
        applyFriendModel.setMyUserId(this.f8426t);
        this.f8418l.m11036a(applyFriendModel);
    }

    private void m10442m() {
        m10166a(new di(this));
    }

    static {
        f8407z = 0;
        int i = f8407z;
        f8407z = i + 1;
        f8400A = i;
        i = f8407z;
        f8407z = i + 1;
        f8401B = i;
        i = f8407z;
        f8407z = i + 1;
        f8402C = i;
        i = f8407z;
        f8407z = i + 1;
        f8403D = i;
        i = f8407z;
        f8407z = i + 1;
        f8404E = i;
        i = f8407z;
        f8407z = i + 1;
        f8405F = i;
        i = f8407z;
        f8407z = i + 1;
        f8406G = i;
    }

    private void m10415a(int i, com.yf.smart.weloopx.android.ui.widget.ProGuard proGuard) {
        proGuard.f8641b.setTypeface(this.f8419m);
        proGuard.f8642c.setTypeface(this.f8419m);
        if (i == f8400A) {
            proGuard.f8640a.setText(R.string.score);
            proGuard.f8642c.setText("");
            proGuard.f8641b.setText("" + Math.round(this.f8415i.getScore()));
            proGuard.f8645f.setImageResource(R.drawable.tag_score);
            proGuard.f8646g.setImageResource(R.drawable.unit_score);
        } else if (i == f8401B) {
            proGuard.f8640a.setText(getString(R.string.life_calorie) + getString(R.string.unit_calorie));
            proGuard.f8641b.setText("" + Math.round(this.f8415i.getTotalCalorie()));
            proGuard.f8645f.setImageResource(R.drawable.tag_life_calorie);
            proGuard.f8646g.setImageResource(R.drawable.unit_calorie);
        } else if (i == f8402C) {
            proGuard.f8640a.setText(getString(R.string.average_calorie) + getString(R.string.unit_calorie));
            proGuard.f8641b.setText("" + Math.round(this.f8415i.getAverageCalorie()));
            proGuard.f8645f.setImageResource(R.drawable.tag_avg_calorie);
            proGuard.f8646g.setImageResource(R.drawable.unit_calorie);
        } else if (i == f8403D) {
            r0 = " ";
            try {
                r1 = com.yf.smart.weloopx.p145g.ProGuard.m11350a(this.f8415i.getBestDay(), "yyyy-MM-dd");
                r0 = r0 + (r1.get(2) + 1) + "/" + r1.get(5) + ", " + r1.get(1);
            } catch (ParseException e) {
                com.yf.gattlib.p117p.ProGuard.m8293a("UserProfileFragment", "err day=" + this.f8415i.getBestDay());
            }
            proGuard.f8640a.setText(getString(R.string.best_date) + r0);
            proGuard.f8641b.setText("" + Math.round(this.f8415i.getBestDayCalorie()));
            proGuard.f8645f.setImageResource(R.drawable.tag_best_date);
            proGuard.f8646g.setImageResource(R.drawable.unit_calorie);
        } else if (i == f8404E) {
            r0 = " ";
            try {
                r1 = com.yf.smart.weloopx.p145g.ProGuard.m11350a(this.f8415i.getBestWeekBeginDate(), "yyyy-MM-dd");
                r0 = r0 + (r1.get(2) + 1) + "/" + r1.get(5) + "-" + com.yf.smart.weloopx.p145g.ProGuard.m11350a(this.f8415i.getBestWeekEndDate(), "yyyy-MM-dd").get(5) + ", " + r1.get(1);
            } catch (ParseException e2) {
                com.yf.gattlib.p117p.ProGuard.m8293a("UserProfileFragment", "err day=" + this.f8415i.getBestDay());
            }
            proGuard.f8640a.setText(getString(R.string.best_week) + r0);
            proGuard.f8641b.setText("" + Math.round(this.f8415i.getBestWeekCalorie()));
            proGuard.f8645f.setImageResource(R.drawable.tag_best_week);
            proGuard.f8646g.setImageResource(R.drawable.unit_calorie);
        } else if (i == f8405F) {
            proGuard.f8640a.setText(R.string.standard_reaching_days);
            proGuard.f8642c.setText("");
            proGuard.f8641b.setText("" + this.f8415i.getStandardDays());
            proGuard.f8645f.setImageResource(R.drawable.tag_standard_days);
            proGuard.f8646g.setImageResource(R.drawable.unit_standard_days);
            proGuard.f8641b.setTypeface(this.f8419m);
            proGuard.f8642c.setTypeface(this.f8419m);
        } else if (i == f8406G) {
            proGuard.f8640a.setText(R.string.active_days);
            proGuard.f8642c.setText("");
            proGuard.f8641b.setText("" + this.f8415i.getActiveDays());
            proGuard.f8645f.setImageResource(R.drawable.tag_active_days);
            proGuard.f8646g.setImageResource(R.drawable.unit_active_days);
        }
    }

    private void m10432e(String str) {
        this.f8417k.m10231e(getResources().getString(R.string.delete));
        com.yf.gattlib.p117p.ProGuard.m8292a("UserProfileFragment \u771f\u6b63\u6267\u884c\u5220\u9664\u7684userID = " + str);
        com.p038b.p039a.p048d.ProGuard proGuard = new com.p038b.p039a.p048d.ProGuard();
        proGuard.m4068a("accessToken", com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10780c());
        proGuard.m4068a("userId", str);
        new com.p038b.p039a.ProGuard().m3956a(com.p038b.p039a.p048d.p050b.ProGuard.ProGuard.POST, com.yf.smart.weloopx.p143f.ProGuard.m11229a().m11265y(), proGuard, new dj(this, str));
    }

    private void m10434f(String str) {
        this.f8427u.m11077a(com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10778b(), str);
    }

    private void m10436g(String str) {
        com.yf.gattlib.p117p.ProGuard.m8292a("UserProfileFragment \u5220\u9664\u6dfb\u52a0\u597d\u53cb\u6570\u636e\u5e93\u4e2d\u7684\u6570\u636e\u7ed3\u679c = " + new com.yf.smart.weloopx.data.ProGuard(getActivity()).m11037a(str));
    }
}
