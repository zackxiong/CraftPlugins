package com.yf.smart.weloopx.android.ui.activities;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import com.google.gson.Gson;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.yf.smart.weloopx.android.ui.p139c.dc;
import com.yf.smart.weloopx.data.models.MessageNotificationModel;
import com.yf.smart.weloopx.data.models.MessageNotificationModels;
import com.yf.smart.weloopx.dist.R;
import com.yf.smart.weloopx.p140b.p141b.ProGuard;
import java.util.ArrayList;

/* compiled from: ProGuard */
public class MessageNotification extends ProGuard implements OnClickListener, OnItemClickListener, OnItemLongClickListener, ProGuard {
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558782)
    Button f7518a;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558781)
    Button f7519b;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558766)
    TextView f7520c;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558640)
    PullToRefreshListView f7521d;
    private String f7522e;
    private ListView f7523f;
    private ArrayList<MessageNotificationModel> f7524g;
    private com.yf.smart.weloopx.android.ui.p144a.ProGuard f7525h;
    private com.yf.smart.weloopx.data.ProGuard f7526i;

    public MessageNotification() {
        this.f7522e = "MessageNotification";
        this.f7524g = new ArrayList();
    }

    protected void onCreate(Bundle bundle) {
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f7522e + " onCreate");
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.activity_message_notification);
        com.p038b.p039a.ProGuard.m4086a(this);
        m8794d(getString(R.string.downloading));
        m9506d();
        m9507e();
        m9513b();
    }

    protected void onResume() {
        super.onResume();
        m9510i();
    }

    protected void onStart() {
        super.onStart();
    }

    protected void onRestart() {
        super.onRestart();
    }

    protected void onPause() {
        super.onPause();
    }

    protected void onStop() {
        super.onStop();
    }

    protected void onDestroy() {
        super.onDestroy();
        m9512a();
    }

    private void m9506d() {
        this.f7518a.setVisibility(8);
        this.f7519b.setOnClickListener(this);
        this.f7520c.setText(getString(R.string.msg_noti));
        this.f7521d.setMode(com.handmark.pulltorefresh.library.ProGuard.ProGuard.DISABLED);
        this.f7523f = (ListView) this.f7521d.getRefreshableView();
    }

    private void m9507e() {
        this.f7526i = new com.yf.smart.weloopx.data.ProGuard(this);
        m9509h();
    }

    private void m9509h() {
        this.f7524g = this.f7526i.m11090a(com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10780c());
        this.f7525h = new com.yf.smart.weloopx.android.ui.p144a.ProGuard(this, this.f7524g);
        this.f7523f.setAdapter(this.f7525h);
        this.f7523f.setOnItemClickListener(this);
        this.f7523f.setOnItemLongClickListener(this);
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.at_btn_left:
                startActivity(new Intent(this, MainActivity.class));
                finish();
            default:
        }
    }

    private void m9510i() {
        com.yf.smart.weloopx.android.ui.ProGuard.m10544a(this.v, getFragmentManager(), this.f7522e);
        com.p038b.p039a.p048d.ProGuard proGuard = new com.p038b.p039a.p048d.ProGuard();
        proGuard.m4068a("accessToken", com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10780c());
        new com.p038b.p039a.ProGuard().m3956a(com.p038b.p039a.p048d.p050b.ProGuard.ProGuard.POST, com.yf.smart.weloopx.p143f.ProGuard.m11229a().m11260t(), proGuard, new ed(this));
    }

    private void m9497a(String str) {
        this.f7526i.m11091a((MessageNotificationModels) new Gson().fromJson(str, MessageNotificationModels.class), com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10780c());
        this.f7524g = this.f7526i.m11090a(com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10780c());
        if (this.f7524g == null || this.f7524g.size() == 0) {
            m8795e(getString(R.string.no_msg_noti));
        }
        m9511j();
    }

    public void m9512a() {
        com.yf.smart.weloopx.android.ui.ProGuard.m10543a(this.v);
    }

    private void m9511j() {
        runOnUiThread(new ee(this));
    }

    private boolean m9500a(MessageNotificationModel messageNotificationModel) {
        String userId = messageNotificationModel.getUserId();
        String toUserId = messageNotificationModel.getToUserId();
        String state = messageNotificationModel.getState();
        if (state == null) {
            state = "-1";
        }
        if (state.equals("0")) {
            return !userId.equals(toUserId);
        } else {
            return true;
        }
    }

    private String m9501b(MessageNotificationModel messageNotificationModel) {
        String userId = messageNotificationModel.getUserId();
        String requestUserId = messageNotificationModel.getRequestUserId();
        return userId.equals(requestUserId) ? messageNotificationModel.getToUserId() : requestUserId;
    }

    private void m9498a(String str, MessageNotificationModel messageNotificationModel, boolean z) {
        AlertDialog create = new Builder(this).create();
        create.show();
        Window window = create.getWindow();
        window.setBackgroundDrawable(new ColorDrawable(0));
        window.setContentView(R.layout.alert_dialog);
        Button button = (Button) window.findViewById(R.id.ad_btn_sure);
        if (z) {
            button.setText(getString(R.string.sure));
        } else {
            button.setText(R.string.ignore);
        }
        button.setOnClickListener(new ef(this, messageNotificationModel, z, create));
        window.findViewById(R.id.ad_view_ver_line).setVisibility(0);
        button = (Button) window.findViewById(R.id.ad_btn_cancel);
        button.setVisibility(0);
        button.setOnClickListener(new eg(this, create));
        TextView textView = (TextView) window.findViewById(R.id.ad_tv_description);
        textView.setText(str);
        textView.setVisibility(0);
        ((TextView) window.findViewById(R.id.ad_tv_description_title)).setVisibility(8);
        ((TextView) window.findViewById(R.id.ad_tv_msg)).setVisibility(8);
    }

    private void m9499a(String str, String str2, boolean z) {
        this.v.m10231e(z ? "\u5220\u9664\u4e2d..." : "\u5ffd\u7565\u4e2d");
        com.yf.smart.weloopx.android.ui.ProGuard.m10544a(this.v, getFragmentManager(), this.f7522e);
        com.p038b.p039a.p048d.ProGuard proGuard = new com.p038b.p039a.p048d.ProGuard();
        proGuard.m4068a("accessToken", com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10780c());
        proGuard.m4068a("userId", str);
        proGuard.m4068a("requestUserId", str2);
        new com.p038b.p039a.ProGuard().m3956a(com.p038b.p039a.p048d.p050b.ProGuard.ProGuard.POST, com.yf.smart.weloopx.p143f.ProGuard.m11229a().m11263w(), proGuard, new eh(this, str, str2, z));
    }

    public void m9513b() {
        com.p038b.p039a.p048d.ProGuard proGuard = new com.p038b.p039a.p048d.ProGuard();
        proGuard.m4068a("accessToken", com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10780c());
        new com.p038b.p039a.ProGuard().m3956a(com.p038b.p039a.p048d.p050b.ProGuard.ProGuard.POST, com.yf.smart.weloopx.p143f.ProGuard.m11229a().m11266z(), proGuard, new ei(this));
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        try {
            MessageNotificationModel messageNotificationModel = (MessageNotificationModel) this.f7525h.getItem(i);
            String type = messageNotificationModel.getType();
            if (type.equals("2")) {
                com.yf.gattlib.p117p.ProGuard.m8292a(this.f7522e + " \u662f\u63d0\u9192\u6d88\u606f\uff0c\u6240\u4ee5\u4e0d\u80fd\u70b9\u51fb");
                return;
            }
            if (type.equals("1")) {
                int parseInt = Integer.parseInt(m9501b(messageNotificationModel));
                com.yf.gattlib.p117p.ProGuard.m8292a(this.f7522e + " \u6d88\u606f\u901a\u77e5\u4e2d\u7684 = " + parseInt + ", \u540d\u5b57 = " + messageNotificationModel.getNickname());
                dc.m10417a(getFragmentManager(), parseInt, m9503c(messageNotificationModel), true, "", false);
            }
            if (type.equals("3")) {
                com.yf.gattlib.p117p.ProGuard.m8292a(this.f7522e + " \u6267\u884c\u8df3\u8f6c");
                Intent intent = new Intent(this, MsgDetailActivity.class);
                intent.putExtra("URL", messageNotificationModel.getPageUrl());
                startActivity(intent);
            }
        } catch (Exception e) {
            com.yf.gattlib.p117p.ProGuard.m8297b(this.f7522e + " Maybe get userID failed");
        }
    }

    public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
        MessageNotificationModel messageNotificationModel = (MessageNotificationModel) this.f7525h.getItem(i);
        if (messageNotificationModel != null && messageNotificationModel.getType().equals("1")) {
            if (m9500a(messageNotificationModel)) {
                m9498a(getString(R.string.is_del_this_msg_noti), messageNotificationModel, true);
            } else {
                m9498a(getString(R.string.is_reflush_friend_request), messageNotificationModel, false);
            }
        }
        return true;
    }

    private int m9503c(MessageNotificationModel messageNotificationModel) {
        int i = 4007;
        String userId = messageNotificationModel.getUserId();
        String toUserId = messageNotificationModel.getToUserId();
        String state = messageNotificationModel.getState();
        if (state == null) {
            state = "-1";
        }
        if (state.equals("0")) {
            i = userId.equals(toUserId) ? 4009 : 4001;
        }
        if (state.equals("1")) {
            i = userId.equals(toUserId) ? 4004 : 4003;
        }
        int i2 = state.equals("2") ? userId.equals(toUserId) ? 4005 : 4006 : i;
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f7522e + " \u5904\u7406\u4e4b\u540e\u4f20\u9012\u7684\u72b6\u6001 = " + i2);
        return i2;
    }

    public void m9514c() {
        com.yf.gattlib.p117p.ProGuard.m8297b(this.f7522e + " \u63a5\u6536\u5230\u597d\u53cb\u540c\u610f\u7684\u6570\u636e\u5237\u65b0");
        m9510i();
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4) {
            return false;
        }
        startActivity(new Intent(this, MainActivity.class));
        finish();
        return true;
    }
}
