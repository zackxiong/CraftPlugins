package com.yf.smart.weloopx.commons;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.yf.gattlib.db.WhiteApp;
import com.yf.smart.weloopx.dist.R;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ProGuard */
public class WhiteListChoiceAppActivity extends Activity {
    Runnable f8802a;
    private String f8803b;
    private ListView f8804c;
    private ProgressBar f8805d;
    private List<ProGuard> f8806e;
    private List<ProGuard> f8807f;
    private int f8808g;
    private ProGuard f8809h;
    private List<WhiteApp> f8810i;
    private ProGuard f8811j;
    private Handler f8812k;

    /* renamed from: com.yf.smart.weloopx.commons.WhiteListChoiceAppActivity.a */
    private class ProGuard extends BaseAdapter {
        final /* synthetic */ WhiteListChoiceAppActivity f8792a;

        private ProGuard(WhiteListChoiceAppActivity whiteListChoiceAppActivity) {
            this.f8792a = whiteListChoiceAppActivity;
        }

        public int getCount() {
            return this.f8792a.f8808g;
        }

        public Object getItem(int i) {
            return Integer.valueOf(i);
        }

        public long getItemId(int i) {
            return (long) i;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            ProGuard proGuard;
            ProGuard proGuard2 = (ProGuard) this.f8792a.f8806e.get(i);
            if (view == null) {
                view = LayoutInflater.from(this.f8792a).inflate(R.layout.app_info_item, null);
                ProGuard proGuard3 = new ProGuard(this.f8792a);
                proGuard3.f8793a = (TextView) view.findViewById(R.id.aii_tv_app_name);
                proGuard3.f8794b = (TextView) view.findViewById(R.id.aii_tv_topline);
                proGuard3.f8795c = (TextView) view.findViewById(R.id.aii_tv_bottom_line);
                proGuard3.f8796d = (TextView) view.findViewById(R.id.aii_tv_bottom_center_line);
                proGuard3.f8797e = (ImageView) view.findViewById(R.id.aii_iv_del);
                proGuard3.f8798f = (ImageView) view.findViewById(R.id.aii_iv_icon);
                proGuard3.f8799g = (RelativeLayout) view.findViewById(R.id.aii_rl_parent);
                view.setTag(proGuard3);
                proGuard = proGuard3;
            } else {
                proGuard = (ProGuard) view.getTag();
            }
            proGuard.f8800h = proGuard2;
            proGuard.f8793a.setText(proGuard2.m10999b());
            if (i == 0) {
                proGuard.f8794b.setVisibility(0);
            } else {
                proGuard.f8794b.setVisibility(8);
            }
            if (i != this.f8792a.f8808g - 1) {
                proGuard.f8795c.setVisibility(8);
                proGuard.f8796d.setVisibility(0);
            } else {
                proGuard.f8795c.setVisibility(0);
                proGuard.f8796d.setVisibility(8);
            }
            if (proGuard2.m11001c()) {
                proGuard.f8797e.setBackgroundResource(R.drawable.app_choice);
            } else {
                proGuard.f8797e.setBackgroundResource(R.drawable.app_unchoice);
            }
            Drawable a = ProGuard.m11002a(this.f8792a, proGuard2.m10996a());
            if (a != null) {
                proGuard.f8798f.setBackground(a);
            } else {
                proGuard.f8798f.setBackgroundResource(R.drawable.default_app_icon);
            }
            return view;
        }
    }

    /* renamed from: com.yf.smart.weloopx.commons.WhiteListChoiceAppActivity.b */
    class ProGuard {
        TextView f8793a;
        TextView f8794b;
        TextView f8795c;
        TextView f8796d;
        ImageView f8797e;
        ImageView f8798f;
        RelativeLayout f8799g;
        ProGuard f8800h;
        final /* synthetic */ WhiteListChoiceAppActivity f8801i;

        ProGuard(WhiteListChoiceAppActivity whiteListChoiceAppActivity) {
            this.f8801i = whiteListChoiceAppActivity;
        }
    }

    public WhiteListChoiceAppActivity() {
        this.f8803b = "WhiteListChoiceAppActivity";
        this.f8808g = 0;
        this.f8812k = new Handler();
        this.f8802a = new ProGuard(this);
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.choice_app);
        m10982a();
        m10987b();
        this.f8812k.post(this.f8802a);
    }

    protected void onDestroy() {
        this.f8812k.removeCallbacks(this.f8802a);
        super.onDestroy();
    }

    private void m10982a() {
        this.f8806e = new ArrayList();
        this.f8807f = new ArrayList();
        this.f8811j = new ProGuard();
    }

    private void m10987b() {
        this.f8804c = (ListView) findViewById(R.id.ca_lv);
        this.f8805d = (ProgressBar) findViewById(R.id.ca_pb);
        this.f8805d.setVisibility(0);
        findViewById(R.id.ca_btn_sure).setOnClickListener(new ProGuard(this));
        findViewById(R.id.ca_btn_cancel).setOnClickListener(new ProGuard(this));
        this.f8804c.setOnItemClickListener(new ProGuard(this));
    }

    private void m10989c() {
        for (ProGuard proGuard : this.f8806e) {
            String a = proGuard.m10996a();
            if (proGuard.m11001c()) {
                com.yf.gattlib.p117p.ProGuard.m8292a(this.f8803b + "\u6211\u662f " + proGuard.m10999b());
                this.f8807f.add(proGuard);
                WhiteApp.addWhiteApp(a);
            } else {
                WhiteApp.removeWhiteApp(a);
            }
        }
        Intent intent = new Intent();
        intent.putExtra("choiceApps", (Serializable) this.f8807f);
        setResult(2014, intent);
        Intent intent2 = new Intent();
        intent2.setAction("com.yf.gattlib.intent.action.ACTION_UPDATE_WHITE_APP");
        com.yf.gattlib.p108a.ProGuard.m7347a().m7360b(intent2);
        finish();
    }

    private ArrayList<ProGuard> m10991d() {
        ArrayList<ProGuard> arrayList = new ArrayList();
        for (PackageInfo packageInfo : getPackageManager().getInstalledPackages(0)) {
            ProGuard proGuard = new ProGuard();
            String charSequence = packageInfo.applicationInfo.loadLabel(getPackageManager()).toString();
            proGuard.m11000b(charSequence);
            String str = packageInfo.packageName;
            com.yf.gattlib.p117p.ProGuard.m8292a(this.f8803b + " app\u540d\u79f0 = " + charSequence + ", packageName = " + str);
            proGuard.m10997a(str);
            proGuard.m10998a(m10984a(str));
            if (!(charSequence.startsWith("com") || this.f8811j.m11004a(str))) {
                arrayList.add(proGuard);
            }
        }
        return arrayList;
    }

    private boolean m10984a(String str) {
        for (WhiteApp whiteApp : this.f8810i) {
            if (whiteApp.pkg.equals(str)) {
                return true;
            }
        }
        return false;
    }
}
