package cn.sharesdk.framework;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Handler.Callback;
import android.os.Message;

/* renamed from: cn.sharesdk.framework.a */
class C0010a implements Callback {
    final /* synthetic */ FakeActivity f1926a;

    C0010a(FakeActivity fakeActivity) {
        this.f1926a = fakeActivity;
    }

    public boolean handleMessage(Message message) {
        Object[] objArr = (Object[]) message.obj;
        Context context = (Context) objArr[0];
        Intent intent = (Intent) objArr[1];
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        context.startActivity(intent);
        return false;
    }
}
