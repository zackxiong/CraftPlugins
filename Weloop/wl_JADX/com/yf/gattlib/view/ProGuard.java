package com.yf.gattlib.view;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.os.Bundle;

@SuppressLint({"ValidFragment"})
/* renamed from: com.yf.gattlib.view.a */
public abstract class ProGuard extends ProGuard {
    private int f6496a;

    public Dialog onCreateDialog(Bundle bundle) {
        this.f6496a = getArguments().getInt("KEY_CONTENT_ID", -1);
        return super.onCreateDialog(bundle);
    }
}
