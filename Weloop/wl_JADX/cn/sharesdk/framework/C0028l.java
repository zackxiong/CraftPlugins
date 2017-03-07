package cn.sharesdk.framework;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.HandlerThread;
import android.os.Message;
import com.tencent.mm.sdk.modelbase.BaseResp.ErrCode;
import com.tencent.mm.sdk.modelpay.PayReq.Options;

/* renamed from: cn.sharesdk.framework.l */
public abstract class C0028l implements Callback {
    protected final Handler f1973a;

    public C0028l(String str) {
        HandlerThread handlerThread = new HandlerThread(str);
        handlerThread.start();
        this.f1973a = new Handler(handlerThread.getLooper(), this);
    }

    public void m2969a() {
        m2970a(0, 0, null);
    }

    public void m2970a(int i, int i2, Object obj) {
        Message message = new Message();
        message.what = -1;
        message.arg1 = i;
        message.arg2 = i2;
        message.obj = obj;
        this.f1973a.sendMessage(message);
    }

    protected void m2971a(Message message) {
    }

    public void m2972b() {
        m2973b(0, 0, null);
    }

    public void m2973b(int i, int i2, Object obj) {
        Message message = new Message();
        message.what = -2;
        message.arg1 = i;
        message.arg2 = i2;
        message.obj = obj;
        this.f1973a.sendMessage(message);
    }

    protected void m2974b(Message message) {
    }

    protected abstract void m2975c(Message message);

    public final boolean handleMessage(Message message) {
        switch (message.what) {
            case ErrCode.ERR_USER_CANCEL /*-2*/:
                m2974b(message);
                break;
            case Options.INVALID_FLAGS /*-1*/:
                m2971a(message);
                break;
            default:
                m2975c(message);
                break;
        }
        return false;
    }
}
