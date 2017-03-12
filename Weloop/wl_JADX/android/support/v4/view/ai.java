package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.VelocityTracker;

/* compiled from: ProGuard */
public class ai {
    static final ProGuard f497a;

    /* renamed from: android.support.v4.view.ai.c */
    interface ProGuard {
        float m889a(VelocityTracker velocityTracker, int i);

        float m890b(VelocityTracker velocityTracker, int i);
    }

    /* renamed from: android.support.v4.view.ai.a */
    static class ProGuard implements ProGuard {
        ProGuard() {
        }

        public float m891a(VelocityTracker velocityTracker, int i) {
            return velocityTracker.getXVelocity();
        }

        public float m892b(VelocityTracker velocityTracker, int i) {
            return velocityTracker.getYVelocity();
        }
    }

    /* renamed from: android.support.v4.view.ai.b */
    static class ProGuard implements ProGuard {
        ProGuard() {
        }

        public float m893a(VelocityTracker velocityTracker, int i) {
            return aj.m897a(velocityTracker, i);
        }

        public float m894b(VelocityTracker velocityTracker, int i) {
            return aj.m898b(velocityTracker, i);
        }
    }

    static {
        if (VERSION.SDK_INT >= 11) {
            f497a = new ProGuard();
        } else {
            f497a = new ProGuard();
        }
    }

    public static float m895a(VelocityTracker velocityTracker, int i) {
        return f497a.m889a(velocityTracker, i);
    }

    public static float m896b(VelocityTracker velocityTracker, int i) {
        return f497a.m890b(velocityTracker, i);
    }
}
