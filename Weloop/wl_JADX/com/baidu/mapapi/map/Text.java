package com.baidu.mapapi.map;

import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Bundle;
import com.baidu.mapapi.model.C0579a;
import com.baidu.mapapi.model.LatLng;
import com.baidu.platform.comapi.map.C0617e;
import com.baidu.platform.comapi.p086a.C0596b;
import com.umeng.update.UpdateConfig;
import uk.co.chrisjenx.calligraphy.ProGuard;
import vi.com.gdi.bgl.android.java.EnvDrawText;

public final class Text extends Overlay {
    private static final String f4462k;
    String f4463a;
    LatLng f4464b;
    int f4465c;
    int f4466d;
    int f4467e;
    Typeface f4468f;
    int f4469g;
    int f4470h;
    float f4471i;
    int f4472j;

    static {
        f4462k = Text.class.getSimpleName();
    }

    Text() {
        this.o = C0617e.text;
    }

    Bundle m6277a() {
        if (this.f4468f != null) {
            EnvDrawText.removeFontCache(this.f4468f.hashCode());
        }
        return super.m6168a();
    }

    Bundle m6278a(Bundle bundle) {
        float f = 0.5f;
        super.m6169a(bundle);
        if (this.f4464b == null) {
            throw new IllegalStateException("when you add a text overlay, you must provide text and the position info.");
        }
        float f2;
        bundle.putString("text", this.f4463a);
        C0596b a = C0579a.m6359a(this.f4464b);
        bundle.putInt("location_x", a.m6426b());
        bundle.putInt("location_y", a.m6424a());
        int i = (this.f4466d >> 8) & 255;
        bundle.putInt("font_color", Color.argb(this.f4466d >>> 24, this.f4466d & 255, i, (this.f4466d >> 16) & 255));
        i = (this.f4465c >> 8) & 255;
        bundle.putInt("bg_color", Color.argb(this.f4465c >>> 24, this.f4465c & 255, i, (this.f4465c >> 16) & 255));
        bundle.putInt("font_size", this.f4467e);
        if (this.f4468f != null) {
            EnvDrawText.registFontCache(this.f4468f.hashCode(), this.f4468f);
            bundle.putInt("type_face", this.f4468f.hashCode());
        }
        switch (this.f4469g) {
            case ProGuard.styleable.View_android_focusable /*1*/:
                f2 = 0.0f;
                break;
            case ProGuard.styleable.View_paddingStart /*2*/:
                f2 = 1.0f;
                break;
            case ProGuard.styleable.View_theme /*4*/:
                f2 = 0.5f;
                break;
            default:
                f2 = 0.5f;
                break;
        }
        bundle.putFloat("align_x", f2);
        switch (this.f4470h) {
            case ProGuard.styleable.Toolbar_popupTheme /*8*/:
                f = 0.0f;
                break;
            case ProGuard.styleable.Toolbar_maxButtonHeight /*16*/:
                f = 1.0f;
                break;
        }
        bundle.putFloat("align_y", f);
        bundle.putFloat("rotate", this.f4471i);
        bundle.putInt(UpdateConfig.f5440a, this.f4472j);
        return bundle;
    }

    public float getAlignX() {
        return (float) this.f4469g;
    }

    public float getAlignY() {
        return (float) this.f4470h;
    }

    public int getBgColor() {
        return this.f4465c;
    }

    public int getFontColor() {
        return this.f4466d;
    }

    public int getFontSize() {
        return this.f4467e;
    }

    public LatLng getPosition() {
        return this.f4464b;
    }

    public float getRotate() {
        return this.f4471i;
    }

    public String getText() {
        return this.f4463a;
    }

    public Typeface getTypeface() {
        return this.f4468f;
    }

    public void setAlign(int i, int i2) {
        this.f4469g = i;
        this.f4470h = i2;
        this.f4472j = 1;
        this.listener.m6270b(this);
    }

    public void setBgColor(int i) {
        this.f4465c = i;
        this.f4472j = 1;
        this.listener.m6270b(this);
    }

    public void setFontColor(int i) {
        this.f4466d = i;
        this.f4472j = 1;
        this.listener.m6270b(this);
    }

    public void setFontSize(int i) {
        this.f4467e = i;
        this.f4472j = 1;
        this.listener.m6270b(this);
    }

    public void setPosition(LatLng latLng) {
        if (latLng == null) {
            throw new IllegalArgumentException("position can not be null");
        }
        this.f4464b = latLng;
        this.f4472j = 1;
        this.listener.m6270b(this);
    }

    public void setRotate(float f) {
        this.f4471i = f;
        this.f4472j = 1;
        this.listener.m6270b(this);
    }

    public void setText(String str) {
        if (str == null || str.equals("")) {
            throw new IllegalArgumentException("text can not be null or empty");
        }
        this.f4463a = str;
        this.f4472j = 1;
        this.listener.m6270b(this);
    }

    public void setTypeface(Typeface typeface) {
        this.f4468f = typeface;
        this.f4472j = 1;
        this.listener.m6270b(this);
    }
}
