package cn.sharesdk.framework;

import android.os.Handler.Callback;
import android.os.Message;

/* renamed from: cn.sharesdk.framework.c */
class C0021c implements Callback {
    final /* synthetic */ Runnable f1948a;
    final /* synthetic */ FakeActivity f1949b;

    C0021c(FakeActivity fakeActivity, Runnable runnable) {
        this.f1949b = fakeActivity;
        this.f1948a = runnable;
    }

    public boolean handleMessage(Message message) {
        this.f1948a.run();
        return false;
    }
}
