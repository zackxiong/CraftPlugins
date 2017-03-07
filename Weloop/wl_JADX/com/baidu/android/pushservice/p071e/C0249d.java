package com.baidu.android.pushservice.p071e;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;

/* renamed from: com.baidu.android.pushservice.e.d */
public class C0249d {
    protected String f3099a;
    protected String f3100b;
    protected String f3101c;
    protected byte[] f3102d;
    protected String f3103e;
    protected String f3104f;
    protected String f3105g;
    protected String f3106h;
    protected String f3107i;
    protected String f3108j;
    protected boolean f3109k;

    public C0249d(String str, String str2) {
        this.f3099a = "";
        this.f3100b = "";
        this.f3101c = "";
        this.f3103e = "";
        this.f3104f = "";
        this.f3105g = "";
        this.f3106h = "";
        this.f3107i = "";
        this.f3108j = "";
        this.f3109k = true;
        this.f3100b = str;
        this.f3099a = str2;
    }

    public Bitmap m4690a() {
        return this.f3102d != null ? BitmapFactory.decodeByteArray(this.f3102d, 0, this.f3102d.length, null) : null;
    }

    public void m4691a(String str) {
        this.f3101c = str;
    }

    public void m4692a(boolean z) {
        this.f3109k = z;
    }

    public void m4693a(byte[] bArr) {
        this.f3102d = bArr;
    }

    public String m4694b() {
        return this.f3099a;
    }

    public void m4695b(String str) {
        this.f3099a = str;
    }

    public String m4696c() {
        return this.f3100b;
    }

    public void m4697c(String str) {
        this.f3100b = str;
    }

    public String m4698d() {
        return this.f3101c;
    }

    public void m4699d(String str) {
        this.f3103e = str;
    }

    public String m4700e() {
        return this.f3103e;
    }

    public void m4701e(String str) {
        this.f3104f = str;
    }

    public String m4702f() {
        return this.f3104f;
    }

    public void m4703f(String str) {
        this.f3105g = str;
    }

    public void m4704g(String str) {
        this.f3106h = str;
    }

    public boolean m4705g() {
        return this.f3109k;
    }

    public void m4706h(String str) {
        this.f3107i = str;
    }

    public void m4707i(String str) {
        this.f3108j = str;
    }
}
