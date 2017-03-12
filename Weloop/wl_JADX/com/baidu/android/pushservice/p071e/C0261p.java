package com.baidu.android.pushservice.p071e;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.os.Environment;
import android.os.Parcelable;
import android.text.TextUtils;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.message.p074a.C0306e;
import com.baidu.android.pushservice.p072f.C0273h;
import com.baidu.android.pushservice.util.C0374f;
import com.baidu.frontia.module.deeplink.GetApn;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.baidu.android.pushservice.e.p */
public class C0261p {
    private static final String f3157a;

    static {
        f3157a = "baidu/pushservice" + File.separator + "lappicons";
    }

    private static int m4788a(Context context) {
        return context.getResources().getDisplayMetrics().densityDpi;
    }

    public static Bitmap m4789a(Context context, Bitmap bitmap) {
        if (bitmap == null) {
            return bitmap;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int a = C0261p.m4788a(context);
        int i = (a / 40) + 9;
        Drawable bitmapDrawable = new BitmapDrawable(context.getResources(), Bitmap.createScaledBitmap(bitmap, width, height, false));
        Bitmap createBitmap = Bitmap.createBitmap(width, height, Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        RectF rectF = new RectF(0.0f, 0.0f, (float) width, (float) height);
        Paint paint = new Paint(1);
        paint.setColor(-7829368);
        canvas.drawRoundRect(rectF, (float) i, (float) i, paint);
        paint.setXfermode(new PorterDuffXfermode(Mode.SRC_IN));
        bitmapDrawable.setBounds(0, 0, width, height);
        canvas.saveLayer(rectF, paint, 31);
        bitmapDrawable.draw(canvas);
        canvas.restore();
        switch (a) {
            case 120:
                height = 36;
                width = 36;
                break;
            case 160:
                height = 48;
                width = 48;
                break;
            case 240:
                height = 72;
                width = 72;
                break;
            case 320:
                height = 96;
                width = 96;
                break;
            case 480:
                height = 144;
                width = 144;
                break;
            default:
                height = 192;
                width = 192;
                break;
        }
        return Bitmap.createScaledBitmap(createBitmap, height, width, true);
    }

    private static Bitmap m4790a(Drawable drawable, int i, int i2) {
        Bitmap createBitmap = Bitmap.createBitmap(i, i2, drawable.getOpacity() != -1 ? Config.ARGB_8888 : Config.RGB_565);
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, i, i2);
        drawable.draw(canvas);
        return createBitmap;
    }

    private static String m4791a(Context context, String str) {
        if (str == null) {
            return null;
        }
        List<PackageInfo> installedPackages = context.getPackageManager().getInstalledPackages(8);
        if (installedPackages != null) {
            for (PackageInfo packageInfo : installedPackages) {
                ProviderInfo[] providerInfoArr = packageInfo.providers;
                if (providerInfoArr != null) {
                    for (ProviderInfo providerInfo : providerInfoArr) {
                        if (str.equals(providerInfo.readPermission)) {
                            return providerInfo.authority;
                        }
                        if (str.equals(providerInfo.writePermission)) {
                            return providerInfo.authority;
                        }
                    }
                    continue;
                }
            }
        }
        return null;
    }

    public static void m4792a(Context context, String str, C0249d c0249d) {
        try {
            if (C0261p.m4795a(context, c0249d)) {
                return;
            }
        } catch (Exception e) {
            if (C0192a.m4341b()) {
                C0385a.m5312c("ShortcutUtils", "no permission to check if shortcut installed " + e);
            }
        }
        Intent intent = new Intent("com.android.launcher.action.INSTALL_SHORTCUT");
        intent.putExtra("duplicate", false);
        intent.putExtra("android.intent.extra.shortcut.NAME", c0249d.m4698d());
        intent.putExtra("android.intent.extra.shortcut.ICON", C0261p.m4801d(context, c0249d.m4690a()));
        Parcelable intent2 = new Intent();
        String a = C0250e.m4709a(context).m4725a(context, str);
        if (TextUtils.isEmpty(a)) {
            a = C0306e.m5024a(context, c0249d.m4694b(), -1);
        }
        if (a == null || TextUtils.isEmpty(a)) {
            intent2 = new Intent();
            intent2.setAction("android.intent.action.VIEW");
            if (C0374f.m5212d(context, "com.baidu.browser.apps")) {
                a = "com.baidu.browser.apps";
                intent2.setPackage("com.baidu.browser.apps");
                intent2.setComponent(new ComponentName("com.baidu.browser.apps", "com.baidu.browser.framework.BdBrowserActivity"));
            } else if (C0374f.m5212d(context, "com.android.browser")) {
                a = "com.android.browser";
                intent2.setPackage("com.android.browser");
            } else {
                a = "browser";
            }
            intent2.addFlags(268435456);
            intent2.setData(Uri.parse("http://m.baidu.com/lightapp/" + c0249d.m4694b()));
            if (C0192a.m4341b()) {
                C0385a.m5311b("ShortcutUtils", "Open Host Not found,use browser: " + a);
            }
        } else if (a.startsWith(GetApn.PKGNAME_PREFIX) || a.startsWith("com.baidu.voiceassistant")) {
            intent2.setAction("com.baidu.searchbox.action.aloader.VIEW");
            intent2.setPackage(a);
            intent2.setClassName(a, "com.baidu.searchbox.aloaderhost.ALoaderActivity");
            intent2.setFlags(67108864);
            intent2.putExtra("isBackToLauncher", true);
            intent2.putExtra("EXTRA_URL_NEW_WINDOW", true);
            intent2.putExtra("src", "launcher_icon");
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("appid", c0249d.m4694b());
                jSONObject.put("url", "http://m.baidu.com/lightapp/" + c0249d.m4694b());
            } catch (JSONException e2) {
                C0385a.m5313d("ShortcutUtils", "error " + e2.getMessage());
            }
            intent2.putExtra("pageId", jSONObject.toString());
            intent2.setComponent(new ComponentName(a, "com.baidu.searchbox.aloaderhost.ALoaderActivity"));
            if (C0192a.m4341b()) {
                C0385a.m5311b("ShortcutUtils", "open by searchbox: " + a);
            }
        } else {
            intent2.putExtra("_lightapp_url", "http://m.baidu.com/lightapp/" + c0249d.m4694b());
            intent2.setAction("android.intent.action.MAIN");
            intent2.addCategory("android.intent.category.LAUNCHER");
            intent2.putExtra("fromShortcut", true);
            intent2.putExtra("apikey", c0249d.m4696c());
            intent2.putExtra("appname", c0249d.m4698d());
            intent2.putExtra("_runtime_act_impl", "com.baidu.lappgui.LappHostActivity");
            intent2.setPackage(a);
            C0273h i = C0250e.m4709a(context).m4776i(a);
            if (!(i == null || TextUtils.isEmpty(i.f3229a))) {
                intent2.putExtra("host_appid", i.f3229a);
                intent2.putExtra("host_version", i.f3230b);
                intent2.setClassName(a, "com.baidu.sumeru.lightapp.activity.LightAppPlayerActivity");
                intent2.setComponent(new ComponentName(a, "com.baidu.sumeru.lightapp.activity.LightAppPlayerActivity"));
            }
            if (C0192a.m4341b()) {
                C0385a.m5311b("ShortcutUtils", "open by runtime in: " + a + " apkey:" + c0249d.m4696c());
            }
        }
        intent.putExtra("android.intent.extra.shortcut.INTENT", intent2);
        context.sendBroadcast(intent);
        C0250e.m4709a(context).m4771d(c0249d.m4696c(), a);
    }

    public static void m4793a(Context context, String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str)) {
            Intent intent = new Intent("com.android.launcher.action.UNINSTALL_SHORTCUT");
            intent.putExtra("android.intent.extra.shortcut.NAME", str);
            Parcelable intent2 = new Intent();
            if (TextUtils.isEmpty(str2) || str2.equals("browser")) {
                intent2.setAction("android.intent.action.VIEW");
                intent2.addFlags(268435456);
                intent2.setData(Uri.parse("http://m.baidu.com/lightapp/" + str3));
            } else if (str2.startsWith(GetApn.PKGNAME_PREFIX) || str2.startsWith("com.baidu.voiceassistant")) {
                intent2.setAction("com.baidu.searchbox.action.aloader.VIEW");
                intent2.setPackage(str2);
                intent2.setClassName(str2, "com.baidu.searchbox.aloaderhost.ALoaderActivity");
                intent2.setFlags(67108864);
                intent2.setComponent(new ComponentName(str2, "com.baidu.searchbox.aloaderhost.ALoaderActivity"));
            } else if (str2.equals("com.baidu.browser.apps")) {
                intent2.setAction("android.intent.action.VIEW");
                intent2.addFlags(268435456);
                intent2.setData(Uri.parse("http://m.baidu.com/lightapp/" + str3));
                intent2.setPackage("com.baidu.browser.apps");
                intent2.setComponent(new ComponentName("com.baidu.browser.apps", "com.baidu.browser.framework.BdBrowserActivity"));
            } else if (str2.equals("com.android.browser")) {
                intent2.setAction("android.intent.action.VIEW");
                intent2.addFlags(268435456);
                intent2.setData(Uri.parse("http://m.baidu.com/lightapp/" + str3));
                intent2.setPackage("com.android.browser");
            } else {
                C0273h i = C0250e.m4709a(context).m4776i(str2);
                intent2.setAction("android.intent.action.MAIN");
                intent2.addCategory("android.intent.category.LAUNCHER");
                intent2.setPackage(str2);
                if (!(i == null || TextUtils.isEmpty(i.f3229a))) {
                    intent2.setClassName(str2, "com.baidu.sumeru.lightapp.activity.LightAppPlayerActivity");
                    intent2.setComponent(new ComponentName(str2, "com.baidu.sumeru.lightapp.activity.LightAppPlayerActivity"));
                }
            }
            intent.putExtra("android.intent.extra.shortcut.INTENT", intent2);
            context.sendBroadcast(intent);
        } else if (C0192a.m4341b()) {
            C0385a.m5311b("ShortcutUtils", "delShortcut Parameter can't be null ");
        }
    }

    public static void m4794a(byte[] bArr, String str) {
        if (Environment.getExternalStorageState().equals("mounted")) {
            try {
                String str2 = Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + f3157a;
                File file = new File(str2);
                if (!file.exists()) {
                    file.mkdirs();
                }
                OutputStream fileOutputStream = new FileOutputStream(new File(str2 + File.separator + str + ".bdi"));
                fileOutputStream.write(bArr);
                fileOutputStream.flush();
                fileOutputStream.close();
            } catch (IOException e) {
                C0385a.m5313d("ShortcutUtils", "error " + e.getMessage());
            }
        }
    }

    public static boolean m4795a(Context context, C0249d c0249d) {
        String d = c0249d.m4698d();
        String a = C0261p.m4791a(context, "com.android.launcher.permission.READ_SETTINGS");
        if (a == null) {
            a = C0261p.m4791a(context, "com.android.launcher.permission.WRITE_SETTINGS");
        }
        if (a == null) {
            a = C0261p.m4791a(context, "com.android.launcher2.permission.READ_SETTINGS");
        }
        if (a == null) {
            a = C0261p.m4791a(context, "com.android.launcher2.permission.WRITE_SETTINGS");
        }
        if (a == null) {
            a = C0261p.m4791a(context, "com.android.launcher3.permission.READ_SETTINGS");
        }
        if (a == null) {
            a = C0261p.m4791a(context, "com.android.launcher3.permission.WRITE_SETTINGS");
        }
        if (a == null && C0192a.m4341b()) {
            C0385a.m5313d("", "no authority");
        }
        Cursor query = context.getContentResolver().query(Uri.parse("content://" + a + "/favorites?notify=true"), null, "title=?", new String[]{d}, null);
        boolean z = query != null && query.getCount() > 0;
        if (query != null) {
            query.close();
        }
        if (C0192a.m4341b()) {
            C0385a.m5311b("ShortcutUtils", d + " isInstalled is " + z);
        }
        return z;
    }

    public static byte[] m4796a(android.content.Context r7, java.lang.String r8, java.lang.String r9, boolean r10) {
        /* JADX: method processing error */
/*
        Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.ssa.SSATransform.placePhi(SSATransform.java:82)
	at jadx.core.dex.visitors.ssa.SSATransform.process(SSATransform.java:50)
	at jadx.core.dex.visitors.ssa.SSATransform.visit(SSATransform.java:42)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:37)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:59)
	at jadx.core.ProcessClass.process(ProcessClass.java:42)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:281)
	at jadx.api.JavaClass.decompile(JavaClass.java:59)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:161)
*/
        /*
        r0 = com.baidu.android.pushservice.p071e.C0261p.m4798a(r10, r8);
        if (r0 == 0) goto L_0x0007;
    L_0x0006:
        return r0;
    L_0x0007:
        r1 = android.text.TextUtils.isEmpty(r9);
        if (r1 != 0) goto L_0x0061;
    L_0x000d:
        r1 = com.baidu.android.pushservice.C0192a.m4341b();
        if (r1 == 0) goto L_0x002b;
    L_0x0013:
        r1 = "ShortcutUtils";
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "download Lightapp icon: ";
        r2 = r2.append(r3);
        r2 = r2.append(r9);
        r2 = r2.toString();
        com.baidu.frontia.p075a.p077b.p078a.C0385a.m5311b(r1, r2);
    L_0x002b:
        r2 = new com.baidu.frontia.a.c.c;
        r2.<init>(r7);
        r1 = new org.apache.http.client.methods.HttpGet;	 Catch:{ Exception -> 0x0067, all -> 0x008c }
        r1.<init>(r9);	 Catch:{ Exception -> 0x0067, all -> 0x008c }
        r1 = r2.execute(r1);	 Catch:{ Exception -> 0x0067, all -> 0x008c }
        if (r1 == 0) goto L_0x005e;	 Catch:{ Exception -> 0x0067, all -> 0x008c }
    L_0x003b:
        r3 = r1.getStatusLine();	 Catch:{ Exception -> 0x0067, all -> 0x008c }
        if (r3 == 0) goto L_0x005e;	 Catch:{ Exception -> 0x0067, all -> 0x008c }
    L_0x0041:
        r3 = r1.getStatusLine();	 Catch:{ Exception -> 0x0067, all -> 0x008c }
        r3 = r3.getStatusCode();	 Catch:{ Exception -> 0x0067, all -> 0x008c }
        r4 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;	 Catch:{ Exception -> 0x0067, all -> 0x008c }
        if (r3 != r4) goto L_0x005e;	 Catch:{ Exception -> 0x0067, all -> 0x008c }
    L_0x004d:
        r1 = r1.getEntity();	 Catch:{ Exception -> 0x0067, all -> 0x008c }
        if (r1 == 0) goto L_0x005e;	 Catch:{ Exception -> 0x0067, all -> 0x008c }
    L_0x0053:
        r1 = r1.getContent();	 Catch:{ Exception -> 0x0067, all -> 0x008c }
        r0 = com.baidu.android.pushservice.p071e.C0261p.m4797a(r1);	 Catch:{ Exception -> 0x0067, all -> 0x008c }
        r1.close();	 Catch:{ Exception -> 0x0067, all -> 0x008c }
    L_0x005e:
        r2.m5322a();
    L_0x0061:
        if (r0 == 0) goto L_0x0006;
    L_0x0063:
        com.baidu.android.pushservice.p071e.C0261p.m4794a(r0, r8);
        goto L_0x0006;
    L_0x0067:
        r1 = move-exception;
        r6 = r1;
        r1 = r0;
        r0 = r6;
        r3 = "ShortcutUtils";	 Catch:{ Exception -> 0x0067, all -> 0x008c }
        r4 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0067, all -> 0x008c }
        r4.<init>();	 Catch:{ Exception -> 0x0067, all -> 0x008c }
        r5 = "error ";	 Catch:{ Exception -> 0x0067, all -> 0x008c }
        r4 = r4.append(r5);	 Catch:{ Exception -> 0x0067, all -> 0x008c }
        r0 = r0.getMessage();	 Catch:{ Exception -> 0x0067, all -> 0x008c }
        r0 = r4.append(r0);	 Catch:{ Exception -> 0x0067, all -> 0x008c }
        r0 = r0.toString();	 Catch:{ Exception -> 0x0067, all -> 0x008c }
        com.baidu.frontia.p075a.p077b.p078a.C0385a.m5313d(r3, r0);	 Catch:{ Exception -> 0x0067, all -> 0x008c }
        r2.m5322a();
        r0 = r1;
        goto L_0x0061;
    L_0x008c:
        r0 = move-exception;
        r2.m5322a();
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.android.pushservice.e.p.a(android.content.Context, java.lang.String, java.lang.String, boolean):byte[]");
    }

    private static byte[] m4797a(InputStream inputStream) {
        if (inputStream == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int read;
            try {
                read = inputStream.read(bArr, 0, bArr.length);
            } catch (IOException e) {
                C0385a.m5313d("ShortcutUtils", "error " + e.getMessage());
                read = 0;
            }
            if (read != -1) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                byte[] toByteArray = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.close();
                return toByteArray;
            }
        }
    }

    public static byte[] m4798a(boolean z, String str) {
        byte[] bArr = null;
        if (Environment.getExternalStorageState().equals("mounted")) {
            try {
                File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + f3157a + File.separator + str + ".bdi");
                if (file.exists() && (!z || System.currentTimeMillis() - file.lastModified() <= 604800000)) {
                    InputStream fileInputStream = new FileInputStream(file);
                    bArr = new byte[((int) file.length())];
                    fileInputStream.read(bArr);
                    fileInputStream.close();
                }
            } catch (IOException e) {
                if (C0192a.m4341b()) {
                    C0385a.m5313d("ShortcutUtils", "error " + e.getMessage());
                }
            }
        }
        return bArr;
    }

    public static Bitmap m4799b(Context context, Bitmap bitmap) {
        int i = 195;
        if (bitmap == null) {
            return bitmap;
        }
        int i2;
        bitmap.getWidth();
        bitmap.getHeight();
        switch (C0261p.m4788a(context)) {
            case 120:
                i2 = 540;
                break;
            case 160:
                i2 = 540;
                break;
            case 240:
                i = 260;
                i2 = 720;
                break;
            case 320:
                i = 260;
                i2 = 720;
                break;
            case 480:
                i2 = 1080;
                i = 390;
                break;
            default:
                i2 = 1080;
                i = 390;
                break;
        }
        return Bitmap.createScaledBitmap(bitmap, i2, i, true);
    }

    public static Bitmap m4800c(Context context, Bitmap bitmap) {
        int i = 26;
        int i2 = 20;
        if (bitmap == null) {
            return bitmap;
        }
        bitmap.getWidth();
        bitmap.getHeight();
        switch (C0261p.m4788a(context)) {
            case 120:
                i = 20;
                break;
            case 160:
                i = 20;
                break;
            case 240:
                i2 = 26;
                break;
            case 320:
                i2 = 26;
                break;
            case 480:
                i2 = 38;
                i = 38;
                break;
            default:
                i2 = 38;
                i = 38;
                break;
        }
        return Bitmap.createScaledBitmap(bitmap, i, i2, true);
    }

    private static Bitmap m4801d(Context context, Bitmap bitmap) {
        Bitmap a = C0261p.m4789a(context, bitmap);
        byte[] a2 = C0261p.m4796a(context, "lightapp_baidu_logo", "http://bs.baidu.com/lapp-runtime/picture/runtime_baidu.png", true);
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(a2, 0, a2.length);
        return C0261p.m4790a(new LayerDrawable(new Drawable[]{new BitmapDrawable(a), new BitmapDrawable(decodeByteArray)}), a.getWidth(), a.getHeight());
    }
}
