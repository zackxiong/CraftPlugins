package com.yf.smart.weloopx.android.ui.activities;

import android.os.Bundle;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnKeyListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.google.gson.Gson;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.p038b.p039a.p056g.p057a.ProGuard;
import com.yf.smart.weloopx.android.ui.p139c.dc;
import com.yf.smart.weloopx.data.models.Friendmodel;
import com.yf.smart.weloopx.data.models.Friendmodels;
import com.yf.smart.weloopx.dist.R;
import java.util.ArrayList;

/* compiled from: ProGuard */
public class FriendSearchActivity extends ProGuard implements OnClickListener, OnKeyListener, OnItemClickListener, OnItemLongClickListener {
    @ProGuard(a = 2131558782)
    Button f7467a;
    @ProGuard(a = 2131558781)
    Button f7468b;
    @ProGuard(a = 2131558766)
    TextView f7469c;
    @ProGuard(a = 2131558629)
    ImageView f7470d;
    @ProGuard(a = 2131558631)
    PullToRefreshListView f7471e;
    @ProGuard(a = 2131558630)
    EditText f7472f;
    private final String f7473g;
    private ListView f7474h;
    private View f7475i;
    private ArrayList<Friendmodel> f7476j;
    private com.yf.smart.weloopx.android.ui.p144a.ProGuard f7477k;
    private int f7478l;
    private boolean f7479m;
    private String f7480n;
    private TextWatcher f7481o;
    private com.handmark.pulltorefresh.library.ProGuard.ProGuard<ListView> f7482p;

    public FriendSearchActivity() {
        this.f7473g = "FriendSearchActivity";
        this.f7476j = new ArrayList();
        this.f7478l = 1;
        this.f7479m = false;
        this.f7480n = "";
        this.f7481o = new dc(this);
        this.f7482p = new dd(this);
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        this.f7475i = View.inflate(this, R.layout.activity_friend_search, null);
        setContentView(this.f7475i);
        com.p038b.p039a.ProGuard.m4086a(this);
        m9422a();
        m9430b();
    }

    private void m9422a() {
        this.f7467a.setVisibility(8);
        this.f7468b.setOnClickListener(this);
        this.f7470d.setOnClickListener(this);
        this.f7469c.setText(getString(R.string.friend_title));
        this.f7472f.addTextChangedListener(this.f7481o);
        this.f7472f.setOnKeyListener(this);
        this.f7471e.setMode(com.handmark.pulltorefresh.library.ProGuard.ProGuard.PULL_FROM_END);
        this.f7471e.getLoadingLayoutProxy().setLastUpdatedLabel("");
        this.f7471e.getLoadingLayoutProxy().setPullLabel(getString(R.string.pull_up_more));
        this.f7471e.getLoadingLayoutProxy().setReleaseLabel(getString(R.string.release_show_more));
        this.f7474h = (ListView) this.f7471e.getRefreshableView();
        this.f7471e.setOnRefreshListener(this.f7482p);
        this.f7474h.setOnItemClickListener(this);
        m8794d(getString(R.string.searching));
    }

    private void m9430b() {
        this.f7471e.setMode(com.handmark.pulltorefresh.library.ProGuard.ProGuard.DISABLED);
        m9423a(0);
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.fs_iv_search:
                m9428a(false);
            case R.id.at_btn_left:
                finish();
            default:
        }
    }

    private void m9428a(boolean z) {
        boolean z2 = true;
        String trim = this.f7472f.getText().toString().trim();
        if (TextUtils.isEmpty(trim)) {
            m8795e(getString(R.string.please_input_search_key));
            return;
        }
        if (!z) {
            this.f7478l = 1;
        }
        m9433c();
        if (z) {
            z2 = false;
        }
        m9427a(trim, z2);
    }

    private void m9433c() {
        ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 2);
    }

    private void m9427a(String str, boolean z) {
        this.v.m10231e(getString(R.string.searching));
        this.f7471e.setMode(com.handmark.pulltorefresh.library.ProGuard.ProGuard.PULL_FROM_END);
        com.p038b.p039a.p048d.ProGuard proGuard = new com.p038b.p039a.p048d.ProGuard();
        proGuard.m4068a("accessToken", com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10780c());
        proGuard.m4068a("searchKey", str);
        int i = this.f7478l;
        this.f7478l = i + 1;
        proGuard.m4068a("pageNum", String.valueOf(i));
        proGuard.m4068a("pageSize", "10");
        new com.p038b.p039a.ProGuard().m3956a(com.p038b.p039a.p048d.p050b.ProGuard.ProGuard.POST, com.yf.smart.weloopx.p143f.ProGuard.m11229a().m11258r(), proGuard, new de(this, z));
    }

    private void m9431b(String str, boolean z) {
        if (z) {
            this.f7476j.clear();
        }
        Friendmodels friendmodels = (Friendmodels) new Gson().fromJson(str, Friendmodels.class);
        this.f7480n = friendmodels.getUserId();
        int size = this.f7476j.size();
        Object userList = friendmodels.getUserList();
        this.f7476j.addAll(size > 1 ? size : 0, userList);
        this.f7479m = true;
        m9423a(size);
        if (userList == null || userList.size() == 0) {
            m8795e("\u65e0\u5339\u914d\u6b64\u5173\u952e\u8bcd\u7684\u7528\u6237");
        }
    }

    private void m9423a(int i) {
        runOnUiThread(new dg(this, i));
    }

    private void m9434d() {
        this.f7471e.post(new dh(this));
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        try {
            int parseInt = Integer.parseInt(((Friendmodel) this.f7476j.get(i - 1)).getUserId());
            com.yf.gattlib.p117p.ProGuard.m8292a("FriendSearchActivity \u9009\u4e2d\u7684userId = " + parseInt + ", \u5f53\u524d\u7528\u6237\u7684userId = " + this.f7480n);
            dc.m10417a(getFragmentManager(), parseInt, this.f7479m ? 4002 : 4007, false, this.f7480n, false);
        } catch (Exception e) {
            com.yf.gattlib.p117p.ProGuard.m8297b("FriendSearchActivity Maybe get userID faield");
        }
    }

    public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
        if (!this.f7479m) {
            try {
                Friendmodel friendmodel = (Friendmodel) this.f7476j.get(i - 1);
                String userId = friendmodel.getUserId();
                com.yf.gattlib.p117p.ProGuard.m8292a("FriendSearchActivity \u5220\u9664\u65f6\u9009\u4e2d\u7684userId = " + userId + ", \u540d\u79f0 = " + friendmodel.getNickname());
            } catch (Exception e) {
                com.yf.gattlib.p117p.ProGuard.m8297b("FriendSearchActivity Maybe get userID faield");
            }
        }
        return true;
    }

    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (i == 66) {
        }
        return false;
    }
}
