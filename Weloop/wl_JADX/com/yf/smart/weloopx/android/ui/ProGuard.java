package com.yf.smart.weloopx.android.ui;

import android.app.AlertDialog;
import android.view.View;
import android.view.View.OnClickListener;

/* renamed from: com.yf.smart.weloopx.android.ui.d */
class ProGuard implements OnClickListener {
    final /* synthetic */ AlertDialog f8508a;
    final /* synthetic */ ProGuard f8509b;

    ProGuard(ProGuard proGuard, AlertDialog alertDialog) {
        this.f8509b = proGuard;
        this.f8508a = alertDialog;
    }

    public void onClick(View view) {
        this.f8508a.cancel();
    }
}
gFragment)) {
                if (findFragmentByTag == dialogFragment) {
                    return true;
                }
                ProGuard.m10543a((DialogFragment) findFragmentByTag);
            }
            dialogFragment.show(fragmentManager, str);
            return true;
        } catch (Throwable th) {
            com.yf.gattlib.p117p.ProGuard.m8293a("UIHelper", Log.getStackTraceString(th));
            return false;
        }
    }

    public static boolean m10543a(DialogFragment dialogFragment) {
        if (dialogFragment == null) {
            return true;
        }
        try {
            dialogFragment.dismissAllowingStateLoss();
            return true;
        } catch (Throwable th) {
            com.yf.gattlib.p117p.ProGuard.m8293a("UIHelper", Log.getStackTraceString(th));
            return false;
        }
    }
}
