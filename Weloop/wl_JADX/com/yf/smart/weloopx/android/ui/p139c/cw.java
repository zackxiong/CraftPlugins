package com.yf.smart.weloopx.android.ui.p139c;

import android.app.Activity;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.DialogInterface;
import android.os.Bundle;
import com.yf.smart.weloopx.android.ui.ProGuard;
import com.yf.smart.weloopx.dist.R;
import com.yf.smart.weloopx.event.SyncDataExitEvent;
import com.yf.smart.weloopx.event.SyncDataProgressEvent;
import com.yf.smart.weloopx.event.SyncDataUploadingMsgEvent;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.cw */
public class cw extends ProGuard {
    private ProGuard f8387b;
    private String f8388c;

    /* renamed from: com.yf.smart.weloopx.android.ui.c.cw.a */
    public interface ProGuard {
        void m10244a(int i, int i2);

        void m10245a(int i, String str);
    }

    public static DialogFragment m10397a(FragmentManager fragmentManager, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("happen_date", str);
        DialogFragment cwVar = new cw();
        cwVar.setArguments(bundle);
        ProGuard.m10544a(cwVar, fragmentManager, "synchronizing data");
        return cwVar;
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.f8388c = getArguments().getString("happen_date", "2015-01-01");
        this.f8387b = (ProGuard) m10171c();
        com.yf.lib.p135a.ProGuard.m8508a().m8608a((Object) this);
        m10403e();
    }

    public void onDetach() {
        com.yf.lib.p135a.ProGuard.m8508a().m8611b((Object) this);
        super.onDetach();
    }

    @com.yf.lib.squareup.otto.ProGuard
    public void onSyncDataExitEvent(SyncDataExitEvent syncDataExitEvent) {
        com.yf.smart.weloopx.p146c.ProGuard.f8755a = 0;
        m10166a(new cx(this, syncDataExitEvent));
    }

    @com.yf.lib.squareup.otto.ProGuard
    public void onSyncDataProgressEvent(SyncDataProgressEvent syncDataProgressEvent) {
        this.f8387b.m10244a(syncDataProgressEvent.sumSteps, syncDataProgressEvent.curStep);
    }

    @com.yf.lib.squareup.otto.ProGuard
    public void onSyncDataUploadingMsgEvent(SyncDataUploadingMsgEvent syncDataUploadingMsgEvent) {
        m10201d(m10172c(syncDataUploadingMsgEvent.msgId));
    }

    public void m10403e() {
        m10201d(m10172c(R.string.checking_state));
        com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10775a(com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10780c(), new cy(this));
    }

    private void m10399a(int i, String str) {
        m10400a(i, str, "");
    }

    private void m10400a(int i, String str, String str2) {
        m10166a(new cz(this, i, str, str2));
    }

    public void m10404f() {
        if (com.yf.smart.weloopx.p146c.ProGuard.f8755a != 0) {
            com.yf.gattlib.p117p.ProGuard.m8292a("SyncDataFragment currentState = " + m10172c(com.yf.smart.weloopx.p146c.ProGuard.f8755a));
            m10201d(m10172c(com.yf.smart.weloopx.p146c.ProGuard.f8755a));
            return;
        }
        com.yf.smart.weloopx.p146c.ProGuard.m10923a().m10962a(this.f8388c, false);
    }

    public void onCancel(DialogInterface dialogInterface) {
        super.onCancel(dialogInterface);
    }
}
