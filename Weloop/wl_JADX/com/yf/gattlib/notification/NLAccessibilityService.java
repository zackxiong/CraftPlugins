package com.yf.gattlib.notification;

import android.accessibilityservice.AccessibilityService;
import android.accessibilityservice.AccessibilityServiceInfo;
import android.app.Notification;
import android.os.Parcelable;
import android.text.TextUtils;
import android.view.accessibility.AccessibilityEvent;

/* compiled from: ProGuard */
public class NLAccessibilityService extends AccessibilityService {
    private ProGuard f6272a;
    private boolean f6273b;

    public void onAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (this.f6272a != null && accessibilityEvent.getEventType() == 64 && this.f6272a.m8194a("NLAccessibilityService")) {
            ProGuard a = m8144a(accessibilityEvent);
            if (a != null) {
                ProGuard.m8154a(this.f6272a, a, "posted");
            }
        }
    }

    protected void onServiceConnected() {
        if (!this.f6273b) {
            this.f6272a = ProGuard.m8187a();
            this.f6272a.m8194a("NLAccessibilityService");
            AccessibilityServiceInfo accessibilityServiceInfo = new AccessibilityServiceInfo();
            accessibilityServiceInfo.eventTypes = 64;
            accessibilityServiceInfo.feedbackType = 16;
            setServiceInfo(accessibilityServiceInfo);
            this.f6273b = true;
        }
    }

    private ProGuard m8144a(AccessibilityEvent accessibilityEvent) {
        Parcelable parcelableData = accessibilityEvent.getParcelableData();
        if (parcelableData == null || !(parcelableData instanceof Notification)) {
            return null;
        }
        String charSequence = accessibilityEvent.getPackageName().toString();
        if (TextUtils.isEmpty(charSequence)) {
            return null;
        }
        Notification notification = (Notification) parcelableData;
        ProGuard proGuard = new ProGuard();
        proGuard.m8208a(0);
        proGuard.m8210a(charSequence);
        proGuard.m8209a(notification);
        return proGuard;
    }

    public void onInterrupt() {
        if (this.f6272a != null) {
            this.f6272a.m8195b();
            this.f6272a = null;
        }
        this.f6273b = false;
    }

    public void onDestroy() {
        super.onDestroy();
    }
}
