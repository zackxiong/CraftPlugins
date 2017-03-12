package com.baidu.vi;

import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: com.baidu.vi.c */
public class C0653c {
    public String f4925a;
    public int f4926b;
    public int f4927c;

    /* renamed from: com.baidu.vi.c.1 */
    static /* synthetic */ class C06521 {
        static final /* synthetic */ int[] f4924a;

        static {
            f4924a = new int[State.values().length];
            try {
                f4924a[State.CONNECTED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f4924a[State.CONNECTING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f4924a[State.DISCONNECTED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f4924a[State.DISCONNECTING.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f4924a[State.SUSPENDED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    public C0653c(NetworkInfo networkInfo) {
        this.f4925a = networkInfo.getTypeName();
        this.f4926b = networkInfo.getType();
        switch (C06521.f4924a[networkInfo.getState().ordinal()]) {
            case ProGuard.styleable.View_android_focusable /*1*/:
                this.f4927c = 2;
            case ProGuard.styleable.View_paddingStart /*2*/:
                this.f4927c = 1;
            default:
                this.f4927c = 0;
        }
    }
}
