package cn.sharesdk.framework;

import android.os.Handler.Callback;
import android.os.Message;

/* renamed from: cn.sharesdk.framework.b */
class C0020b implements Callback {
    final /* synthetic */ Runnable f1946a;
    final /* synthetic */ FakeActivity f1947b;

    C0020b(FakeActivity fakeActivity, Runnable runnable) {
        this.f1947b = fakeActivity;
        this.f1946a = runnable;
    }

    public boolean handleMessage(Message message) {
        this.f1946a.run();
        return false;
    }
}
