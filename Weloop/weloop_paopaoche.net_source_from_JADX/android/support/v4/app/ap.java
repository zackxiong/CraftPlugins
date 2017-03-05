package android.support.v4.app;

import android.app.Notification;
import android.app.Notification.Builder;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.util.SparseArray;
import android.widget.RemoteViews;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ProGuard */
class ap {

    /* renamed from: android.support.v4.app.ap.a */
    public static class ProGuard implements ae, af {
        private Builder f180a;
        private Bundle f181b;
        private List<Bundle> f182c;

        public ProGuard(Context context, Notification notification, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, RemoteViews remoteViews, int i, PendingIntent pendingIntent, PendingIntent pendingIntent2, Bitmap bitmap, int i2, int i3, boolean z, boolean z2, boolean z3, int i4, CharSequence charSequence4, boolean z4, ArrayList<String> arrayList, Bundle bundle, String str, boolean z5, String str2) {
            boolean z6;
            this.f182c = new ArrayList();
            Builder lights = new Builder(context).setWhen(notification.when).setShowWhen(z2).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, remoteViews).setSound(notification.sound, notification.audioStreamType).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS);
            if ((notification.flags & 2) != 0) {
                z6 = true;
            } else {
                z6 = false;
            }
            lights = lights.setOngoing(z6);
            if ((notification.flags & 8) != 0) {
                z6 = true;
            } else {
                z6 = false;
            }
            lights = lights.setOnlyAlertOnce(z6);
            if ((notification.flags & 16) != 0) {
                z6 = true;
            } else {
                z6 = false;
            }
            lights = lights.setAutoCancel(z6).setDefaults(notification.defaults).setContentTitle(charSequence).setContentText(charSequence2).setSubText(charSequence4).setContentInfo(charSequence3).setContentIntent(pendingIntent).setDeleteIntent(notification.deleteIntent);
            if ((notification.flags & com.umeng.update.util.ProGuard.f5670c) != 0) {
                z6 = true;
            } else {
                z6 = false;
            }
            this.f180a = lights.setFullScreenIntent(pendingIntent2, z6).setLargeIcon(bitmap).setNumber(i).setUsesChronometer(z3).setPriority(i4).setProgress(i2, i3, z);
            this.f181b = new Bundle();
            if (bundle != null) {
                this.f181b.putAll(bundle);
            }
            if (!(arrayList == null || arrayList.isEmpty())) {
                this.f181b.putStringArray("android.people", (String[]) arrayList.toArray(new String[arrayList.size()]));
            }
            if (z4) {
                this.f181b.putBoolean("android.support.localOnly", true);
            }
            if (str != null) {
                this.f181b.putString("android.support.groupKey", str);
                if (z5) {
                    this.f181b.putBoolean("android.support.isGroupSummary", true);
                } else {
                    this.f181b.putBoolean("android.support.useSideChannel", true);
                }
            }
            if (str2 != null) {
                this.f181b.putString("android.support.sortKey", str2);
            }
        }

        public void m191a(android.support.v4.app.ak.ProGuard proGuard) {
            this.f182c.add(ao.m184a(this.f180a, proGuard));
        }

        public Builder m190a() {
            return this.f180a;
        }

        public Notification m192b() {
            SparseArray a = ao.m186a(this.f182c);
            if (a != null) {
                this.f181b.putSparseParcelableArray("android.support.actionExtras", a);
            }
            this.f180a.setExtras(this.f181b);
            return this.f180a.build();
        }
    }
}
