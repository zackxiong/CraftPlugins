package android.support.v4.view;

import android.view.View;
import android.view.ViewParent;

/* compiled from: ProGuard */
public class ac {
    private final View f491a;
    private ViewParent f492b;
    private boolean f493c;
    private int[] f494d;

    public void m871a(boolean z) {
        if (this.f493c) {
            ak.m1044o(this.f491a);
        }
        this.f493c = z;
    }

    public boolean m872a() {
        return this.f493c;
    }

    public boolean m878b() {
        return this.f492b != null;
    }

    public boolean m875a(int i) {
        if (m878b()) {
            return true;
        }
        if (m872a()) {
            View view = this.f491a;
            for (ViewParent parent = this.f491a.getParent(); parent != null; parent = parent.getParent()) {
                if (bc.m1139a(parent, view, this.f491a, i)) {
                    this.f492b = parent;
                    bc.m1140b(parent, view, this.f491a, i);
                    return true;
                }
                if (parent instanceof View) {
                    view = (View) parent;
                }
            }
        }
        return false;
    }

    public void m879c() {
        if (this.f492b != null) {
            bc.m1134a(this.f492b, this.f491a);
            this.f492b = null;
        }
    }

    public boolean m876a(int i, int i2, int i3, int i4, int[] iArr) {
        if (!m872a() || this.f492b == null) {
            return false;
        }
        if (i != 0 || i2 != 0 || i3 != 0 || i4 != 0) {
            int i5;
            int i6;
            if (iArr != null) {
                this.f491a.getLocationInWindow(iArr);
                int i7 = iArr[0];
                i5 = iArr[1];
                i6 = i7;
            } else {
                i5 = 0;
                i6 = 0;
            }
            bc.m1135a(this.f492b, this.f491a, i, i2, i3, i4);
            if (iArr != null) {
                this.f491a.getLocationInWindow(iArr);
                iArr[0] = iArr[0] - i6;
                iArr[1] = iArr[1] - i5;
            }
            return true;
        } else if (iArr == null) {
            return false;
        } else {
            iArr[0] = 0;
            iArr[1] = 0;
            return false;
        }
    }

    public boolean m877a(int i, int i2, int[] iArr, int[] iArr2) {
        if (!m872a() || this.f492b == null) {
            return false;
        }
        if (i != 0 || i2 != 0) {
            int i3;
            int i4;
            if (iArr2 != null) {
                this.f491a.getLocationInWindow(iArr2);
                i3 = iArr2[0];
                i4 = iArr2[1];
            } else {
                i4 = 0;
                i3 = 0;
            }
            if (iArr == null) {
                if (this.f494d == null) {
                    this.f494d = new int[2];
                }
                iArr = this.f494d;
            }
            iArr[0] = 0;
            iArr[1] = 0;
            bc.m1136a(this.f492b, this.f491a, i, i2, iArr);
            if (iArr2 != null) {
                this.f491a.getLocationInWindow(iArr2);
                iArr2[0] = iArr2[0] - i3;
                iArr2[1] = iArr2[1] - i4;
            }
            if (iArr[0] == 0 && iArr[1] == 0) {
                return false;
            }
            return true;
        } else if (iArr2 == null) {
            return false;
        } else {
            iArr2[0] = 0;
            iArr2[1] = 0;
            return false;
        }
    }

    public boolean m874a(float f, float f2, boolean z) {
        if (!m872a() || this.f492b == null) {
            return false;
        }
        return bc.m1138a(this.f492b, this.f491a, f, f2, z);
    }

    public boolean m873a(float f, float f2) {
        if (!m872a() || this.f492b == null) {
            return false;
        }
        return bc.m1137a(this.f492b, this.f491a, f, f2);
    }
}
