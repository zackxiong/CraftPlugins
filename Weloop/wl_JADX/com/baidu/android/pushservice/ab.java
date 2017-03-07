package com.baidu.android.pushservice;

import android.content.Context;
import android.content.Intent;
import uk.co.chrisjenx.calligraphy.ProGuard;

class ab implements Runnable {
    final /* synthetic */ Intent f2946a;
    final /* synthetic */ Context f2947b;
    final /* synthetic */ RegistrationReceiver f2948c;

    ab(RegistrationReceiver registrationReceiver, Intent intent, Context context) {
        this.f2948c = registrationReceiver;
        this.f2946a = intent;
        this.f2947b = context;
    }

    public void run() {
        if (this.f2946a.hasExtra("r_sync_type")) {
            switch (this.f2946a.getIntExtra("r_sync_type", 0)) {
                case ProGuard.styleable.View_android_theme /*0*/:
                    RegistrationReceiver.handleRegisterSync(this.f2947b, this.f2946a);
                    return;
                case ProGuard.styleable.View_android_focusable /*1*/:
                    RegistrationReceiver.handleRegisterWebSync(this.f2947b, this.f2946a);
                    return;
                case ProGuard.styleable.View_paddingStart /*2*/:
                    RegistrationReceiver.handleRegisterLappSync(this.f2947b, this.f2946a);
                    return;
                case ProGuard.styleable.View_paddingEnd /*3*/:
                    RegistrationReceiver.handleRegisterSDKSync(this.f2947b, this.f2946a);
                    return;
                default:
                    return;
            }
        }
        RegistrationReceiver.handleRegisterSync(this.f2947b, this.f2946a);
    }
}
