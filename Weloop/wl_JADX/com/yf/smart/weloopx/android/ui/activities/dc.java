package com.yf.smart.weloopx.android.ui.activities;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;

/* compiled from: ProGuard */
class dc implements TextWatcher {
    final /* synthetic */ FriendSearchActivity f7893a;

    dc(FriendSearchActivity friendSearchActivity) {
        this.f7893a = friendSearchActivity;
    }

    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void afterTextChanged(Editable editable) {
        if (TextUtils.isEmpty(this.f7893a.f7472f.getText().toString())) {
            this.f7893a.f7476j.clear();
            this.f7893a.m9423a(0);
        }
    }
}
