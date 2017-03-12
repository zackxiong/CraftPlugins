package com.yf.smart.weloopx.commons;

import android.app.Activity;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.yf.gattlib.db.WhiteApp;
import com.yf.smart.weloopx.dist.R;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ProGuard */
public class WhiteListActivity extends Activity {
    private static final String f8787a;
    private ListView f8788b;
    private List<ProGuard> f8789c;
    private ProGuard f8790d;
    private ProGuard f8791e;

    /* renamed from: com.yf.smart.weloopx.commons.WhiteListActivity.a */
    private class ProGuard extends BaseAdapter {
        final /* synthetic */ WhiteListActivity f8779a;

        private ProGuard(WhiteListActivity whiteListActivity) {
            this.f8779a = whiteListActivity;
        }

        public int getCount() {
            return this.f8779a.f8789c.size();
        }

        public Object getItem(int i) {
            return Integer.valueOf(i);
        }

        public long getItemId(int i) {
            return (long) i;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            ProGuard proGuard;
            ProGuard proGuard2 = (ProGuard) this.f8779a.f8789c.get(i);
            if (view == null) {
                view = LayoutInflater.from(this.f8779a).inflate(R.layout.app_item, null);
                ProGuard proGuard3 = new ProGuard(this.f8779a);
                proGuard3.f8780a = (TextView) view.findViewById(R.id.ai_tv_app_name);
                proGuard3.f8781b = (TextView) view.findViewById(R.id.ai_tv_topline);
                proGuard3.f8782c = (TextView) view.findViewById(R.id.ai_tv_bottom_line);
                proGuard3.f8783d = (TextView) view.findViewById(R.id.ai_tv_bottom_center_line);
                proGuard3.f8784e = (ImageView) view.findViewById(R.id.ai_iv_del);
                proGuard3.f8785f = (ImageView) view.findViewById(R.id.ai_iv_icon);
                view.setTag(proGuard3);
                proGuard = proGuard3;
            } else {
                proGuard = (ProGuard) view.getTag();
            }
            proGuard.f8780a.setText(proGuard2.m10999b());
            if (i == 0) {
                proGuard.f8781b.setVisibility(8);
            } else {
                proGuard.f8781b.setVisibility(8);
            }
            if (i != this.f8779a.f8789c.size() - 1) {
                proGuard.f8782c.setVisibility(8);
                proGuard.f8783d.setVisibility(8);
            } else {
                proGuard.f8782c.setVisibility(8);
                proGuard.f8783d.setVisibility(8);
            }
            proGuard.f8784e.setOnClickListener(new ProGuard(this, proGuard2, i));
            Drawable a = ProGuard.m11002a(this.f8779a, proGuard2.m10996a());
            if (a != null) {
                proGuard.f8785f.setBackground(a);
            } else {
                proGuard.f8785f.setBackgroundResource(R.drawable.default_app_icon);
            }
            return view;
        }
    }

    /* renamed from: com.yf.smart.weloopx.commons.WhiteListActivity.b */
    class ProGuard {
        TextView f8780a;
        TextView f8781b;
        TextView f8782c;
        TextView f8783d;
        ImageView f8784e;
        ImageView f8785f;
        final /* synthetic */ WhiteListActivity f8786g;

        ProGuard(WhiteListActivity whiteListActivity) {
            this.f8786g = whiteListActivity;
        }
    }

    static {
        f8787a = WhiteListActivity.class.getSimpleName();
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.white_list_activity);
        this.f8791e = new ProGuard();
        m10976a();
        this.f8788b = (ListView) findViewById(R.id.wlf_lv);
        this.f8790d = new ProGuard();
        this.f8788b.setAdapter(this.f8790d);
    }

    private void m10976a() {
        this.f8789c = new ArrayList();
        for (WhiteApp whiteApp : WhiteApp.obtainAllWhiteApp()) {
            String str = whiteApp.pkg;
            Object b = ProGuard.m11003b(this, str);
            com.yf.gattlib.p117p.ProGuard.m8292a(f8787a + " loadWhiteAppList2, app = " + whiteApp.pkg + ", " + whiteApp.id + ", " + b);
            if (!(TextUtils.isEmpty(b) || this.f8791e.m11004a(str))) {
                ProGuard proGuard = new ProGuard();
                proGuard.m11000b(b);
                proGuard.m10997a(str);
                proGuard.m10998a(true);
                this.f8789c.add(proGuard);
            }
        }
    }

    private void m10978a(String str) {
        WhiteApp.removeWhiteApp(str);
        Intent intent = new Intent();
        intent.setAction("com.yf.gattlib.intent.action.ACTION_UPDATE_WHITE_APP");
        com.yf.gattlib.p108a.ProGuard.m7347a().m7360b(intent);
    }

    public void add(View view) {
        startActivityForResult(new Intent(this, WhiteListChoiceAppActivity.class), 2013);
    }

    public void back(View view) {
        finish();
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (2014 == i2) {
            m10976a();
            this.f8790d = new ProGuard();
            this.f8788b.setAdapter(this.f8790d);
        }
    }
}
