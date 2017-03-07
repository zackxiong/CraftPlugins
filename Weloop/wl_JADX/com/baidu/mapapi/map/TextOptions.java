package com.baidu.mapapi.map;

import android.graphics.Typeface;
import android.os.Bundle;
import com.baidu.mapapi.model.LatLng;

public final class TextOptions extends OverlayOptions {
    public static final int ALIGN_BOTTOM = 16;
    public static final int ALIGN_CENTER_HORIZONTAL = 4;
    public static final int ALIGN_CENTER_VERTICAL = 32;
    public static final int ALIGN_LEFT = 1;
    public static final int ALIGN_RIGHT = 2;
    public static final int ALIGN_TOP = 8;
    int f4473a;
    boolean f4474b;
    Bundle f4475c;
    private String f4476d;
    private LatLng f4477e;
    private int f4478f;
    private int f4479g;
    private int f4480h;
    private Typeface f4481i;
    private int f4482j;
    private int f4483k;
    private float f4484l;

    public TextOptions() {
        this.f4479g = -16777216;
        this.f4480h = 12;
        this.f4482j = ALIGN_CENTER_HORIZONTAL;
        this.f4483k = ALIGN_CENTER_VERTICAL;
        this.f4474b = true;
    }

    Overlay m6279a() {
        Overlay text = new Text();
        text.q = this.f4474b;
        text.p = this.f4473a;
        text.r = this.f4475c;
        text.f4463a = this.f4476d;
        text.f4464b = this.f4477e;
        text.f4465c = this.f4478f;
        text.f4466d = this.f4479g;
        text.f4467e = this.f4480h;
        text.f4468f = this.f4481i;
        text.f4469g = this.f4482j;
        text.f4470h = this.f4483k;
        text.f4471i = this.f4484l;
        return text;
    }

    public TextOptions align(int i, int i2) {
        this.f4482j = i;
        this.f4483k = i2;
        return this;
    }

    public TextOptions bgColor(int i) {
        this.f4478f = i;
        return this;
    }

    public TextOptions extraInfo(Bundle bundle) {
        this.f4475c = bundle;
        return this;
    }

    public TextOptions fontColor(int i) {
        this.f4479g = i;
        return this;
    }

    public TextOptions fontSize(int i) {
        this.f4480h = i;
        return this;
    }

    public float getAlignX() {
        return (float) this.f4482j;
    }

    public float getAlignY() {
        return (float) this.f4483k;
    }

    public int getBgColor() {
        return this.f4478f;
    }

    public Bundle getExtraInfo() {
        return this.f4475c;
    }

    public int getFontColor() {
        return this.f4479g;
    }

    public int getFontSize() {
        return this.f4480h;
    }

    public LatLng getPosition() {
        return this.f4477e;
    }

    public float getRotate() {
        return this.f4484l;
    }

    public String getText() {
        return this.f4476d;
    }

    public Typeface getTypeface() {
        return this.f4481i;
    }

    public int getZIndex() {
        return this.f4473a;
    }

    public boolean isVisible() {
        return this.f4474b;
    }

    public TextOptions position(LatLng latLng) {
        if (latLng == null) {
            throw new IllegalArgumentException("position can not be null");
        }
        this.f4477e = latLng;
        return this;
    }

    public TextOptions rotate(float f) {
        this.f4484l = f;
        return this;
    }

    public TextOptions text(String str) {
        if (str == null || str.equals("")) {
            throw new IllegalArgumentException("text can not be null or empty");
        }
        this.f4476d = str;
        return this;
    }

    public TextOptions typeface(Typeface typeface) {
        this.f4481i = typeface;
        return this;
    }

    public TextOptions visible(boolean z) {
        this.f4474b = z;
        return this;
    }

    public TextOptions zIndex(int i) {
        this.f4473a = i;
        return this;
    }
}
