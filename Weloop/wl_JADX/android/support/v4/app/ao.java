package android.support.v4.app;

import android.app.Notification;
import android.app.Notification.BigPictureStyle;
import android.app.Notification.BigTextStyle;
import android.app.Notification.Builder;
import android.app.Notification.InboxStyle;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.util.Log;
import android.util.SparseArray;
import android.widget.RemoteViews;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: ProGuard */
class ao {
    private static final Object f176a;
    private static Field f177b;
    private static boolean f178c;
    private static final Object f179d;

    /* renamed from: android.support.v4.app.ao.a */
    public static class ProGuard implements ae, af {
        private Builder f173a;
        private final Bundle f174b;
        private List<Bundle> f175c;

        public ProGuard(Context context, Notification notification, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, RemoteViews remoteViews, int i, PendingIntent pendingIntent, PendingIntent pendingIntent2, Bitmap bitmap, int i2, int i3, boolean z, boolean z2, int i4, CharSequence charSequence4, boolean z3, Bundle bundle, String str, boolean z4, String str2) {
            boolean z5;
            this.f175c = new ArrayList();
            Builder lights = new Builder(context).setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, remoteViews).setSound(notification.sound, notification.audioStreamType).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS);
            if ((notification.flags & 2) != 0) {
                z5 = true;
            } else {
                z5 = false;
            }
            lights = lights.setOngoing(z5);
            if ((notification.flags & 8) != 0) {
                z5 = true;
            } else {
                z5 = false;
            }
            lights = lights.setOnlyAlertOnce(z5);
            if ((notification.flags & 16) != 0) {
                z5 = true;
            } else {
                z5 = false;
            }
            lights = lights.setAutoCancel(z5).setDefaults(notification.defaults).setContentTitle(charSequence).setContentText(charSequence2).setSubText(charSequence4).setContentInfo(charSequence3).setContentIntent(pendingIntent).setDeleteIntent(notification.deleteIntent);
            if ((notification.flags & com.umeng.update.util.ProGuard.f5670c) != 0) {
                z5 = true;
            } else {
                z5 = false;
            }
            this.f173a = lights.setFullScreenIntent(pendingIntent2, z5).setLargeIcon(bitmap).setNumber(i).setUsesChronometer(z2).setPriority(i4).setProgress(i2, i3, z);
            this.f174b = new Bundle();
            if (bundle != null) {
                this.f174b.putAll(bundle);
            }
            if (z3) {
                this.f174b.putBoolean("android.support.localOnly", true);
            }
            if (str != null) {
                this.f174b.putString("android.support.groupKey", str);
                if (z4) {
                    this.f174b.putBoolean("android.support.isGroupSummary", true);
                } else {
                    this.f174b.putBoolean("android.support.useSideChannel", true);
                }
            }
            if (str2 != null) {
                this.f174b.putString("android.support.sortKey", str2);
            }
        }

        public void m182a(android.support.v4.app.ak.ProGuard proGuard) {
            this.f175c.add(ao.m184a(this.f173a, proGuard));
        }

        public Builder m181a() {
            return this.f173a;
        }

        public Notification m183b() {
            Notification build = this.f173a.build();
            Bundle a = ao.m185a(build);
            Bundle bundle = new Bundle(this.f174b);
            for (String str : this.f174b.keySet()) {
                if (a.containsKey(str)) {
                    bundle.remove(str);
                }
            }
            a.putAll(bundle);
            SparseArray a2 = ao.m186a(this.f175c);
            if (a2 != null) {
                ao.m185a(build).putSparseParcelableArray("android.support.actionExtras", a2);
            }
            return build;
        }
    }

    static {
        f176a = new Object();
        f179d = new Object();
    }

    public static void m188a(af afVar, CharSequence charSequence, boolean z, CharSequence charSequence2, CharSequence charSequence3) {
        BigTextStyle bigText = new BigTextStyle(afVar.m138a()).setBigContentTitle(charSequence).bigText(charSequence3);
        if (z) {
            bigText.setSummaryText(charSequence2);
        }
    }

    public static void m187a(af afVar, CharSequence charSequence, boolean z, CharSequence charSequence2, Bitmap bitmap, Bitmap bitmap2, boolean z2) {
        BigPictureStyle bigPicture = new BigPictureStyle(afVar.m138a()).setBigContentTitle(charSequence).bigPicture(bitmap);
        if (z2) {
            bigPicture.bigLargeIcon(bitmap2);
        }
        if (z) {
            bigPicture.setSummaryText(charSequence2);
        }
    }

    public static void m189a(af afVar, CharSequence charSequence, boolean z, CharSequence charSequence2, ArrayList<CharSequence> arrayList) {
        InboxStyle bigContentTitle = new InboxStyle(afVar.m138a()).setBigContentTitle(charSequence);
        if (z) {
            bigContentTitle.setSummaryText(charSequence2);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            bigContentTitle.addLine((CharSequence) it.next());
        }
    }

    public static SparseArray<Bundle> m186a(List<Bundle> list) {
        SparseArray<Bundle> sparseArray = null;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Bundle bundle = (Bundle) list.get(i);
            if (bundle != null) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray();
                }
                sparseArray.put(i, bundle);
            }
        }
        return sparseArray;
    }

    public static Bundle m185a(Notification notification) {
        synchronized (f176a) {
            if (f178c) {
                return null;
            }
            try {
                if (f177b == null) {
                    Field declaredField = Notification.class.getDeclaredField("extras");
                    if (Bundle.class.isAssignableFrom(declaredField.getType())) {
                        declaredField.setAccessible(true);
                        f177b = declaredField;
                    } else {
                        Log.e("NotificationCompat", "Notification.extras field is not of type Bundle");
                        f178c = true;
                        return null;
                    }
                }
                Bundle bundle = (Bundle) f177b.get(notification);
                if (bundle == null) {
                    bundle = new Bundle();
                    f177b.set(notification, bundle);
                }
                return bundle;
            } catch (Throwable e) {
                Log.e("NotificationCompat", "Unable to access notification extras", e);
                f178c = true;
                return null;
            } catch (Throwable e2) {
                Log.e("NotificationCompat", "Unable to access notification extras", e2);
                f178c = true;
                return null;
            }
        }
    }

    public static Bundle m184a(Builder builder, android.support.v4.app.ak.ProGuard proGuard) {
        builder.addAction(proGuard.m139a(), proGuard.m140b(), proGuard.m141c());
        Bundle bundle = new Bundle(proGuard.m142d());
        if (proGuard.m143f() != null) {
            bundle.putParcelableArray("android.support.remoteInputs", au.m205a(proGuard.m143f()));
        }
        return bundle;
    }
}
