package com.yf.smart.weloopx.android.broadcasts;

import android.content.Context;
import com.yf.gattlib.notification.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
public class MyCallReceiver extends ProGuard {
    protected String m9034a(Context context) {
        return context.getString(R.string.incoming_call);
    }

    protected String m9035b(Context context) {
        return context.getString(R.string.missed_call);
    }
}
