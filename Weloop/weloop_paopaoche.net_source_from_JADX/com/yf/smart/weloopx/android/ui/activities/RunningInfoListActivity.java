package com.yf.smart.weloopx.android.ui.activities;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnKeyListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.Button;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.gson.Gson;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.yf.smart.weloopx.android.ui.p139c.ah;
import com.yf.smart.weloopx.android.ui.p139c.ah.ProGuard;
import com.yf.smart.weloopx.data.models.RunInfoDetailsModel;
import com.yf.smart.weloopx.dist.R;
import java.util.ArrayList;

/* compiled from: ProGuard */
public class RunningInfoListActivity extends ProGuard implements OnClickListener, OnKeyListener, OnItemClickListener, OnItemLongClickListener, ProGuard {
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558782)
    Button f7593a;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558781)
    Button f7594b;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558766)
    TextView f7595c;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558680)
    PullToRefreshListView f7596d;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558681)
    RelativeLayout f7597e;
    private final String f7598f;
    private ListView f7599g;
    private View f7600h;
    private Gson f7601i;
    private com.yf.smart.weloopx.data.ProGuard f7602j;
    private ArrayList<RunInfoDetailsModel> f7603k;
    private com.yf.smart.weloopx.android.ui.p144a.ProGuard f7604l;
    private int f7605m;
    private int f7606n;
    private String f7607o;
    private String f7608p;
    private com.handmark.pulltorefresh.library.ProGuard.ProGuard f7609q;

    public RunningInfoListActivity() {
        this.f7598f = "RunningInfoListActivity";
        this.f7605m = 1;
        this.f7606n = 0;
        this.f7607o = "delete";
        this.f7608p = "";
        this.f7609q = new ga(this);
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        this.f7600h = View.inflate(this, R.layout.activity_runninginfo_list, null);
        setContentView(this.f7600h);
        com.p038b.p039a.ProGuard.m4086a(this);
        m8794d(getString(R.string.load_me_fragment_dlg));
        m9570a();
        m9573b();
    }

    private void m9570a() {
        this.f7593a.setVisibility(8);
        this.f7594b.setOnClickListener(this);
        this.f7595c.setText(getString(R.string.running_training));
        this.f7599g = (ListView) this.f7596d.getRefreshableView();
        this.f7599g.setOnItemLongClickListener(this);
        this.f7596d.setMode(com.handmark.pulltorefresh.library.ProGuard.ProGuard.BOTH);
        this.f7596d.setOnItemClickListener(this);
        this.f7596d.setOnRefreshListener(this.f7609q);
    }

    private void m9573b() {
        this.f7601i = new Gson();
        this.f7602j = new com.yf.smart.weloopx.data.ProGuard(this);
        m9577c();
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.at_btn_left:
                finish();
            default:
        }
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        RunInfoDetailsModel runInfoDetailsModel = (RunInfoDetailsModel) this.f7603k.get(i - 1);
        Object obj = runInfoDetailsModel.url;
        String str = runInfoDetailsModel.distance;
        if (!"-1".equals(obj)) {
            if (TextUtils.isEmpty(obj)) {
                m8795e(getString(R.string.unget_train_details));
                return;
            }
            Intent intent = new Intent(this, RunningInfoDetailsActivity.class);
            intent.putExtra("URL", obj);
            intent.putExtra("DISTANCE", str);
            startActivity(intent);
        }
    }

    public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.f7608p = ((RunInfoDetailsModel) this.f7603k.get(i - 1)).runid;
        com.yf.gattlib.p117p.ProGuard.m8292a("RunningInfoListActivity \u957f\u6309\u9009\u62e9\u7684runId = " + this.f7608p);
        if (!TextUtils.isEmpty(this.f7608p)) {
            m9585h();
        }
        return true;
    }

    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (i == 66) {
        }
        return false;
    }

    private void m9577c() {
        com.p038b.p039a.p048d.ProGuard proGuard = new com.p038b.p039a.p048d.ProGuard();
        proGuard.m4068a("accessToken", com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10780c());
        proGuard.m4068a("pageNum", String.valueOf(this.f7605m));
        proGuard.m4068a("pageSize", "");
        new com.p038b.p039a.ProGuard().m3956a(com.p038b.p039a.p048d.p050b.ProGuard.ProGuard.POST, com.yf.smart.weloopx.p143f.ProGuard.m11229a().m11238I(), proGuard, new fz(this));
    }

    private void m9579d() {
        int i = 0;
        if (this.f7603k == null || this.f7603k.size() <= 0) {
            this.f7597e.setVisibility(0);
            this.f7596d.setVisibility(8);
            return;
        }
        this.f7604l = new com.yf.smart.weloopx.android.ui.p144a.ProGuard(this, this.f7603k);
        this.f7599g.setAdapter(this.f7604l);
        ListView listView = this.f7599g;
        if (this.f7605m != 1) {
            i = this.f7606n;
        }
        listView.setSelection(i);
    }

    private void m9571a(int i) {
        this.f7603k = this.f7602j.m11114a(com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10781c(com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10780c()));
        m9579d();
        m8795e(getString(i));
    }

    private void m9580e() {
        this.f7596d.post(new gb(this));
    }

    private void m9585h() {
        ah.m10190a(getFragmentManager(), this.f7607o, getString(R.string.is_del_this_runinfo), getString(R.string.cancel), getString(R.string.ok), 0);
    }

    private void m9587i() {
        com.p038b.p039a.p048d.ProGuard proGuard = new com.p038b.p039a.p048d.ProGuard();
        proGuard.m4068a("accessToken", com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10780c());
        proGuard.m4068a("runid", this.f7608p);
        new com.p038b.p039a.ProGuard().m3956a(com.p038b.p039a.p048d.p050b.ProGuard.ProGuard.POST, com.yf.smart.weloopx.p143f.ProGuard.m11229a().m11238I(), proGuard, new gc(this));
    }

    public void m9588a(String str, boolean z) {
        com.yf.gattlib.p117p.ProGuard.m8292a("RunningInfoListActivity \u5bf9\u8bdd\u6846\u8fd4\u56de\u7684tag = " + str + ", isOk = " + z);
        if (this.f7607o.equals(str) && z) {
            m9587i();
        }
    }
}
