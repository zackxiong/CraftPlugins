package com.baidu.android.pushservice;

import android.app.Notification;
import android.content.Context;
import android.content.SharedPreferences.Editor;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import com.baidu.frontia.p075a.p081e.C0401b;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.StreamCorruptedException;

/* renamed from: com.baidu.android.pushservice.g */
public class C0290g {
    private static String f3289a;
    private static String f3290b;
    private static Object f3291c;
    private static int f3292d;

    static {
        f3289a = "NotificationBuilderManager";
        f3290b = "notification_builder_storage";
        f3291c = new Object();
        f3292d = 0;
    }

    public static Notification m4962a(Context context, int i, int i2, String str, String str2, boolean z) {
        Notification construct;
        synchronized (f3291c) {
            PushNotificationBuilder a = C0290g.m4965a(context, i);
            a.setNotificationTitle(str);
            a.setNotificationText(str2);
            construct = a.construct(context);
            if ((i2 & 1) != 0) {
                construct.flags &= -33;
            } else {
                construct.flags |= 32;
            }
            if (z) {
                construct.defaults = 0;
            } else {
                construct.defaults = -1;
                if ((i2 & 4) != 0) {
                    construct.defaults |= 1;
                } else {
                    construct.defaults &= -2;
                }
                if ((i2 & 2) != 0) {
                    construct.defaults |= 2;
                } else {
                    construct.defaults &= -3;
                }
            }
        }
        return construct;
    }

    public static Notification m4963a(Context context, int i, String str, String str2, boolean z) {
        Notification construct;
        synchronized (f3291c) {
            PushNotificationBuilder a = C0290g.m4965a(context, i);
            a.setNotificationTitle(str);
            a.setNotificationText(str2);
            construct = a.construct(context);
            if (z) {
                construct.defaults = -1;
            } else {
                construct.defaults = 0;
            }
        }
        return construct;
    }

    private static PushNotificationBuilder m4964a(Context context) {
        PushNotificationBuilder basicPushNotificationBuilder = new BasicPushNotificationBuilder();
        basicPushNotificationBuilder.setNotificationFlags(16);
        basicPushNotificationBuilder.setNotificationDefaults(3);
        basicPushNotificationBuilder.setStatusbarIcon(context.getApplicationInfo().icon);
        return basicPushNotificationBuilder;
    }

    private static PushNotificationBuilder m4965a(Context context, int i) {
        PushNotificationBuilder pushNotificationBuilder;
        StreamCorruptedException e;
        IOException e2;
        ClassNotFoundException e3;
        if (C0192a.m4341b()) {
            C0385a.m5311b(f3289a, "getBuilder id=" + i);
        }
        String string = context.getSharedPreferences(f3290b, 0).getString("" + i, null);
        if (string == null) {
            return C0290g.m4968b(context);
        }
        InputStream byteArrayInputStream = new ByteArrayInputStream(C0401b.m5344a(string.getBytes()));
        try {
            ObjectInputStream objectInputStream = new ObjectInputStream(byteArrayInputStream);
            pushNotificationBuilder = (PushNotificationBuilder) objectInputStream.readObject();
            try {
                objectInputStream.close();
                byteArrayInputStream.close();
                return pushNotificationBuilder;
            } catch (StreamCorruptedException e4) {
                e = e4;
            } catch (IOException e5) {
                e2 = e5;
                C0385a.m5313d(f3289a, "getBuilder read object error");
                C0385a.m5313d(f3289a, "error " + e2.getMessage());
                return pushNotificationBuilder;
            } catch (ClassNotFoundException e6) {
                e3 = e6;
                C0385a.m5313d(f3289a, "getBuilder read object error: class not found");
                C0385a.m5313d(f3289a, "error " + e3.getMessage());
                return pushNotificationBuilder;
            }
        } catch (StreamCorruptedException e7) {
            StreamCorruptedException streamCorruptedException = e7;
            pushNotificationBuilder = null;
            e = streamCorruptedException;
            C0385a.m5313d(f3289a, "getBuilder read object error");
            C0385a.m5313d(f3289a, "error " + e.getMessage());
            return pushNotificationBuilder;
        } catch (IOException e8) {
            IOException iOException = e8;
            pushNotificationBuilder = null;
            e2 = iOException;
            C0385a.m5313d(f3289a, "getBuilder read object error");
            C0385a.m5313d(f3289a, "error " + e2.getMessage());
            return pushNotificationBuilder;
        } catch (ClassNotFoundException e9) {
            ClassNotFoundException classNotFoundException = e9;
            pushNotificationBuilder = null;
            e3 = classNotFoundException;
            C0385a.m5313d(f3289a, "getBuilder read object error: class not found");
            C0385a.m5313d(f3289a, "error " + e3.getMessage());
            return pushNotificationBuilder;
        }
    }

    public static void m4966a(Context context, int i, PushNotificationBuilder pushNotificationBuilder) {
        synchronized (f3291c) {
            try {
                OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                objectOutputStream.writeObject(pushNotificationBuilder);
                String a = C0401b.m5343a(byteArrayOutputStream.toByteArray(), "US-ASCII");
                Editor edit = context.getSharedPreferences(f3290b, 0).edit();
                edit.putString("" + i, a);
                edit.commit();
                byteArrayOutputStream.close();
                objectOutputStream.close();
            } catch (StreamCorruptedException e) {
                C0385a.m5313d(f3289a, "setNotificationBuilder write object error");
                C0385a.m5313d(f3289a, "error " + e.getMessage());
            } catch (IOException e2) {
                C0385a.m5313d(f3289a, "setNotificationBuilder write object error");
                C0385a.m5313d(f3289a, "error " + e2.getMessage());
            }
        }
    }

    public static void m4967a(Context context, PushNotificationBuilder pushNotificationBuilder) {
        synchronized (f3291c) {
            try {
                OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                objectOutputStream.writeObject(pushNotificationBuilder);
                String a = C0401b.m5343a(byteArrayOutputStream.toByteArray(), "US-ASCII");
                Editor edit = context.getSharedPreferences(f3290b, 0).edit();
                edit.putString("" + f3292d, a);
                edit.commit();
                byteArrayOutputStream.close();
                objectOutputStream.close();
            } catch (StreamCorruptedException e) {
                C0385a.m5313d(f3289a, "setDefaultNotificationBuilder write object error");
                C0385a.m5313d(f3289a, "error " + e.getMessage());
            } catch (IOException e2) {
                C0385a.m5313d(f3289a, "setDefaultNotificationBuilder write object error");
                C0385a.m5313d(f3289a, "error " + e2.getMessage());
            }
        }
    }

    private static PushNotificationBuilder m4968b(Context context) {
        PushNotificationBuilder pushNotificationBuilder;
        StreamCorruptedException e;
        IOException e2;
        ClassNotFoundException e3;
        String string = context.getSharedPreferences(f3290b, 0).getString("" + f3292d, null);
        if (string == null) {
            return C0290g.m4964a(context);
        }
        InputStream byteArrayInputStream = new ByteArrayInputStream(C0401b.m5344a(string.getBytes()));
        try {
            ObjectInputStream objectInputStream = new ObjectInputStream(byteArrayInputStream);
            pushNotificationBuilder = (PushNotificationBuilder) objectInputStream.readObject();
            try {
                objectInputStream.close();
                byteArrayInputStream.close();
                return pushNotificationBuilder;
            } catch (StreamCorruptedException e4) {
                e = e4;
            } catch (IOException e5) {
                e2 = e5;
                C0385a.m5313d(f3289a, "getDefaultBuilder read object error");
                C0385a.m5313d(f3289a, "error " + e2.getMessage());
                return pushNotificationBuilder;
            } catch (ClassNotFoundException e6) {
                e3 = e6;
                C0385a.m5313d(f3289a, "getDefaultBuilder read object error: class not found");
                C0385a.m5313d(f3289a, "error " + e3.getMessage());
                return pushNotificationBuilder;
            }
        } catch (StreamCorruptedException e7) {
            StreamCorruptedException streamCorruptedException = e7;
            pushNotificationBuilder = null;
            e = streamCorruptedException;
            C0385a.m5313d(f3289a, "getDefaultBuilder read object error");
            C0385a.m5313d(f3289a, "error " + e.getMessage());
            return pushNotificationBuilder;
        } catch (IOException e8) {
            IOException iOException = e8;
            pushNotificationBuilder = null;
            e2 = iOException;
            C0385a.m5313d(f3289a, "getDefaultBuilder read object error");
            C0385a.m5313d(f3289a, "error " + e2.getMessage());
            return pushNotificationBuilder;
        } catch (ClassNotFoundException e9) {
            ClassNotFoundException classNotFoundException = e9;
            pushNotificationBuilder = null;
            e3 = classNotFoundException;
            C0385a.m5313d(f3289a, "getDefaultBuilder read object error: class not found");
            C0385a.m5313d(f3289a, "error " + e3.getMessage());
            return pushNotificationBuilder;
        }
    }

    public static void m4969b(Context context, PushNotificationBuilder pushNotificationBuilder) {
        C0290g.m4966a(context, 8888, pushNotificationBuilder);
    }
}
