package uk.co.chrisjenx.calligraphy;

import android.graphics.Typeface;
import android.text.Editable;
import android.text.TextWatcher;

/* renamed from: uk.co.chrisjenx.calligraphy.i */
final class ProGuard implements TextWatcher {
    final /* synthetic */ Typeface f9821a;

    ProGuard(Typeface typeface) {
        this.f9821a = typeface;
    }

    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void afterTextChanged(Editable editable) {
        ProGuard.m12371a(editable, this.f9821a);
    }
}
