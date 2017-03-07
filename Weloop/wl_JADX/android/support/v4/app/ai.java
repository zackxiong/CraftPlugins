package android.support.v4.app;

import android.app.Notification;
import android.app.Notification.Action;
import android.app.Notification.Builder;
import android.app.PendingIntent;
import android.app.RemoteInput;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.widget.RemoteViews;
import java.util.ArrayList;

/* compiled from: ProGuard */
class ai {

    /* renamed from: android.support.v4.app.ai.a */
    public static class ProGuard implements ae, af {
        private Builder f170a;
        private Bundle f171b;

        public ProGuard(Context context, Notification notification, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, RemoteViews remoteViews, int i, PendingIntent pendingIntent, PendingIntent pendingIntent2, Bitmap bitmap, int i2, int i3, boolean z, boolean z2, boolean z3, int i4, CharSequence charSequence4, boolean z4, ArrayList<String> arrayList, Bundle bundle, String str, boolean z5, String str2) {
            boolean z6;
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
            this.f170a = lights.setFullScreenIntent(pendingIntent2, z6).setLargeIcon(bitmap).setNumber(i).setUsesChronometer(z3).setPriority(i4).setProgress(i2, i3, z).setLocalOnly(z4).setGroup(str).setGroupSummary(z5).setSortKey(str2);
            this.f171b = new Bundle();
            if (bundle != null) {
                this.f171b.putAll(bundle);
            }
            if (arrayList != null && !arrayList.isEmpty()) {
                this.f171b.putStringArray("android.people", (String[]) arrayList.toArray(new String[arrayList.size()]));
            }
        }

        public void m175a(android.support.v4.app.ak.ProGuard proGuard) {
            ai.m177a(this.f170a, proGuard);
        }

        public Builder m174a() {
            return this.f170a;
        }

        public Notification m176b() {
            this.f170a.setExtras(this.f171b);
            return this.f170a.build();
        }
    }

    public static void m177a(Builder builder, android.support.v4.app.ak.ProGuard proGuard) {
        Action.Builder builder2 = new Action.Builder(proGuard.m139a(), proGuard.m140b(), proGuard.m141c());
        if (proGuard.m143f() != null) {
            for (RemoteInput addRemoteInput : as.m203a(proGuard.m143f())) {
                builder2.addRemoteInput(addRemoteInput);
            }
        }
        if (proGuard.m142d() != null) {
            builder2.addExtras(proGuard.m142d());
        }
        builder.addAction(builder2.build());
    }
}
