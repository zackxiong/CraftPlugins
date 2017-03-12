package cn.sharesdk.framework.utils;

import android.os.Handler.Callback;
import android.os.Message;

/* renamed from: cn.sharesdk.framework.utils.j */
final class C0080j implements Callback {
    C0080j() {
    }

    public boolean handleMessage(Message message) {
        UIHandler.handleMessage(message);
        return false;
    }
}
