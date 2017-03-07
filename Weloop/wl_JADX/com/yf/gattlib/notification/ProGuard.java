package com.yf.gattlib.notification;

import android.app.Notification;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.widget.RemoteViews;
import android.widget.YFHtcRemoteViews;
import android.widget.YFHtcRemoteViews.Action;
import android.widget.YFHtcRemoteViews.ReflectionAction;
import android.widget.YFRemoteViews2;
import android.widget.YFRemoteViews3;
import com.tencent.mm.sdk.constants.ConstantsAPI.WXApp;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: com.yf.gattlib.notification.c */
public class ProGuard implements ProGuard {
    public static String f6293a;
    private ProGuard f6294b;
    private ProGuard f6295c;
    private ProGuard f6296d;

    /* renamed from: com.yf.gattlib.notification.c.a */
    private interface ProGuard {
        void m8171a(RemoteViews remoteViews, NotificationContent notificationContent);
    }

    /* renamed from: com.yf.gattlib.notification.c.b */
    private class ProGuard implements ProGuard {
        final /* synthetic */ ProGuard f6289a;

        private ProGuard(ProGuard proGuard) {
            this.f6289a = proGuard;
        }

        public void m8172a(RemoteViews remoteViews, NotificationContent notificationContent) {
            Parcel obtain = Parcel.obtain();
            remoteViews.writeToParcel(obtain, 0);
            obtain.setDataPosition(0);
            String str = "";
            Iterator it = new YFHtcRemoteViews(obtain).f1642c.iterator();
            while (it.hasNext()) {
                Action action = (Action) it.next();
                if (action instanceof ReflectionAction) {
                    String str2;
                    ReflectionAction reflectionAction = (ReflectionAction) action;
                    if ("setText".equals(reflectionAction.f1583d) || "setFormat".equals(reflectionAction.f1583d)) {
                        if (reflectionAction.f1585f != null) {
                            Object obj = reflectionAction.f1585f.toString();
                            if (!TextUtils.isEmpty(obj)) {
                                if (notificationContent.f6280c == null) {
                                    notificationContent.f6280c = obj;
                                    str2 = str;
                                } else if (!(TextUtils.isEmpty(obj) || str.contains(obj))) {
                                    str2 = str + obj + "\n" + str;
                                }
                                str = str2;
                            }
                        }
                    }
                    str2 = str;
                    str = str2;
                }
            }
            if (notificationContent.f6281d == null) {
                notificationContent.f6281d = str;
            }
        }
    }

    /* renamed from: com.yf.gattlib.notification.c.c */
    private class ProGuard implements ProGuard {
        final /* synthetic */ ProGuard f6290a;

        private ProGuard(ProGuard proGuard) {
            this.f6290a = proGuard;
        }

        public void m8173a(RemoteViews remoteViews, NotificationContent notificationContent) {
            try {
                Field declaredField = remoteViews.getClass().getDeclaredField("mActions");
                declaredField.setAccessible(true);
                String str = "";
                Iterator it = ((ArrayList) declaredField.get(remoteViews)).iterator();
                while (it.hasNext()) {
                    Parcelable parcelable = (Parcelable) it.next();
                    Parcel obtain = Parcel.obtain();
                    parcelable.writeToParcel(obtain, 0);
                    obtain.setDataPosition(0);
                    if (obtain.readInt() == 2) {
                        obtain.readInt();
                        String readString = obtain.readString();
                        if (readString == null) {
                            continue;
                        } else {
                            Object trim;
                            if (readString.equals("setText")) {
                                obtain.readInt();
                                trim = ((CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(obtain)).toString().trim();
                                if (notificationContent.f6280c == null) {
                                    notificationContent.f6280c = trim;
                                    readString = str;
                                } else if (TextUtils.isEmpty(trim) || str.contains(trim)) {
                                    readString = str;
                                } else {
                                    readString = str + trim + "\n" + str;
                                }
                                str = readString;
                            } else if (readString.equals("setFormat")) {
                                obtain.readInt();
                                trim = obtain.readString();
                                if (notificationContent.f6280c == null) {
                                    notificationContent.f6280c = trim;
                                } else if (!(TextUtils.isEmpty(trim) || str.contains(trim))) {
                                    str = str + trim + "\n" + str;
                                }
                            }
                            obtain.recycle();
                        }
                    }
                }
                if (notificationContent.f6281d == null) {
                    notificationContent.f6281d = str;
                }
            } catch (Throwable e) {
                com.yf.gattlib.p117p.ProGuard.m8295a(e);
            }
        }
    }

    /* renamed from: com.yf.gattlib.notification.c.d */
    private class ProGuard implements ProGuard {
        final /* synthetic */ ProGuard f6291a;

        private ProGuard(ProGuard proGuard) {
            this.f6291a = proGuard;
        }

        public void m8174a(RemoteViews remoteViews, NotificationContent notificationContent) {
            Parcel obtain = Parcel.obtain();
            remoteViews.writeToParcel(obtain, 0);
            obtain.setDataPosition(0);
            String str = "";
            Iterator it = new YFRemoteViews2(obtain).f1768c.iterator();
            while (it.hasNext()) {
                YFRemoteViews2.Action action = (YFRemoteViews2.Action) it.next();
                if (action instanceof YFRemoteViews2.ReflectionAction) {
                    String str2;
                    YFRemoteViews2.ReflectionAction reflectionAction = (YFRemoteViews2.ReflectionAction) action;
                    if ("setText".equals(reflectionAction.f1709b) || "setFormat".equals(reflectionAction.f1709b)) {
                        if (reflectionAction.f1711d != null) {
                            Object obj = reflectionAction.f1711d.toString();
                            if (!TextUtils.isEmpty(obj)) {
                                if (notificationContent.f6280c == null) {
                                    notificationContent.f6280c = obj;
                                    str2 = str;
                                } else if (!(TextUtils.isEmpty(obj) || str.contains(obj))) {
                                    str2 = str + obj + "\n" + str;
                                }
                                str = str2;
                            }
                        }
                    }
                    str2 = str;
                    str = str2;
                }
            }
            if (notificationContent.f6281d == null) {
                notificationContent.f6281d = str;
            }
        }
    }

    /* renamed from: com.yf.gattlib.notification.c.e */
    private class ProGuard implements ProGuard {
        final /* synthetic */ ProGuard f6292a;

        private ProGuard(ProGuard proGuard) {
            this.f6292a = proGuard;
        }

        public void m8175a(RemoteViews remoteViews, NotificationContent notificationContent) {
            Parcel obtain = Parcel.obtain();
            remoteViews.writeToParcel(obtain, 0);
            obtain.setDataPosition(0);
            String str = "";
            Iterator it = new YFRemoteViews3(obtain).f1845c.iterator();
            while (it.hasNext()) {
                YFRemoteViews3.Action action = (YFRemoteViews3.Action) it.next();
                if (action instanceof YFRemoteViews3.ReflectionAction) {
                    String str2;
                    YFRemoteViews3.ReflectionAction reflectionAction = (YFRemoteViews3.ReflectionAction) action;
                    if ("setText".equals(reflectionAction.f1782b) || "setFormat".equals(reflectionAction.f1782b)) {
                        if (reflectionAction.f1784d != null) {
                            Object obj = reflectionAction.f1784d.toString();
                            if (!TextUtils.isEmpty(obj)) {
                                if (notificationContent.f6280c == null) {
                                    notificationContent.f6280c = obj;
                                    str2 = str;
                                } else if (!(TextUtils.isEmpty(obj) || str.contains(obj))) {
                                    str2 = str + obj + "\n" + str;
                                }
                                str = str2;
                            }
                        }
                    }
                    str2 = str;
                    str = str2;
                }
            }
            if (notificationContent.f6281d == null) {
                notificationContent.f6281d = str;
            }
        }
    }

    static {
        f6293a = "";
    }

    public ProGuard() {
        this.f6294b = new ProGuard();
        this.f6295c = new ProGuard();
        if (VERSION.SDK_INT >= 23) {
            this.f6296d = new ProGuard();
        } else if (VERSION.SDK_INT <= 19) {
            this.f6296d = new ProGuard();
        } else if ("htc".equalsIgnoreCase(Build.MANUFACTURER)) {
            this.f6296d = new ProGuard();
        } else {
            this.f6296d = new ProGuard();
        }
    }

    public ProGuard m8182a(ProGuard proGuard) {
        if (proGuard.f6300b == null) {
            return proGuard;
        }
        proGuard.f6301c = m8181a(proGuard.f6300b);
        Object obj = proGuard.f6301c.f6281d;
        return (TextUtils.isEmpty(obj) || !m8180b(obj)) ? ProGuard.f6299a : proGuard;
    }

    private byte m8177a(String str) {
        return this.f6294b.m8199a(str);
    }

    public NotificationContent m8181a(ProGuard proGuard) {
        NotificationContent notificationContent = new NotificationContent();
        notificationContent.f6282e = proGuard.m8212c();
        notificationContent.f6278a = this.f6295c.m8206a(proGuard);
        notificationContent.f6279b = m8177a(proGuard.m8212c());
        Notification a = proGuard.m8207a();
        RemoteViews remoteViews = a.bigContentView != null ? a.bigContentView : a.contentView;
        if (remoteViews != null) {
            m8178a(remoteViews, notificationContent);
        } else if (a.tickerText != null) {
            notificationContent.f6280c = a.tickerText.toString();
        }
        if (!(!notificationContent.f6282e.equals(WXApp.WXAPP_PACKAGE_NAME) || a.tickerText == null || remoteViews == null)) {
            String charSequence = a.tickerText.toString();
            if (!(TextUtils.isEmpty(notificationContent.f6280c) || notificationContent.f6280c.equals(charSequence))) {
                notificationContent.f6280c = charSequence;
                notificationContent.f6281d = charSequence;
            }
        }
        m8179a(notificationContent);
        com.yf.gattlib.p117p.ProGuard.m8292a("getNotificationContent content.title = " + notificationContent.f6280c + ", content.message = " + notificationContent.f6281d);
        return notificationContent;
    }

    private void m8179a(NotificationContent notificationContent) {
        if (TextUtils.isEmpty(notificationContent.f6280c)) {
            if (!TextUtils.isEmpty(notificationContent.f6281d)) {
                notificationContent.f6280c = notificationContent.f6281d;
            }
        } else if (TextUtils.isEmpty(notificationContent.f6281d)) {
            notificationContent.f6281d = notificationContent.f6280c;
        }
        if (!TextUtils.isEmpty(notificationContent.f6280c)) {
            notificationContent.f6280c = notificationContent.f6280c.trim();
        }
        if (!TextUtils.isEmpty(notificationContent.f6281d)) {
            notificationContent.f6281d = notificationContent.f6281d.trim();
        }
    }

    private void m8178a(RemoteViews remoteViews, NotificationContent notificationContent) {
        this.f6296d.m8171a(remoteViews, notificationContent);
    }

    private boolean m8180b(String str) {
        CharSequence charSequence = "\u6b63\u5728\u8fd0\u884c";
        CharSequence charSequence2 = ":\u4e0b\u8f7d";
        if (str.contains("Touch for more information") || str.contains(charSequence) || str.contains(charSequence2)) {
            return false;
        }
        return true;
    }
}
