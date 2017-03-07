package android.support.v4.view.p016a;

import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.List;

/* renamed from: android.support.v4.view.a.k */
final class ProGuard extends AccessibilityNodeProvider {
    final /* synthetic */ ProGuard f488a;

    ProGuard(ProGuard proGuard) {
        this.f488a = proGuard;
    }

    public AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
        return (AccessibilityNodeInfo) this.f488a.m815a(i);
    }

    public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String str, int i) {
        return this.f488a.m816a(str, i);
    }

    public boolean performAction(int i, int i2, Bundle bundle) {
        return this.f488a.m817a(i, i2, bundle);
    }

    public AccessibilityNodeInfo findFocus(int i) {
        return (AccessibilityNodeInfo) this.f488a.m818b(i);
    }
}
