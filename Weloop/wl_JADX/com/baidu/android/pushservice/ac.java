package com.baidu.android.pushservice;

import android.content.Context;
import android.content.Intent;
import android.net.LocalServerSocket;
import android.os.Build;
import android.text.TextUtils;
import com.baidu.android.pushservice.message.PublicMsg;
import com.baidu.android.pushservice.message.p074a.C0306e;
import com.baidu.android.pushservice.p069c.C0200a;
import com.baidu.android.pushservice.p069c.C0201b;
import com.baidu.android.pushservice.p069c.C0206f;
import com.baidu.android.pushservice.p069c.C0207g;
import com.baidu.android.pushservice.p069c.C0208h;
import com.baidu.android.pushservice.p069c.C0209i;
import com.baidu.android.pushservice.p069c.C0210j;
import com.baidu.android.pushservice.p069c.C0211k;
import com.baidu.android.pushservice.p069c.C0212l;
import com.baidu.android.pushservice.p070d.C0214a;
import com.baidu.android.pushservice.p070d.C0220f;
import com.baidu.android.pushservice.p070d.C0222h;
import com.baidu.android.pushservice.p070d.C0223i;
import com.baidu.android.pushservice.p070d.C0224j;
import com.baidu.android.pushservice.p070d.C0225k;
import com.baidu.android.pushservice.p070d.C0226l;
import com.baidu.android.pushservice.p070d.C0227m;
import com.baidu.android.pushservice.p070d.C0228n;
import com.baidu.android.pushservice.p070d.C0230p;
import com.baidu.android.pushservice.p070d.C0231q;
import com.baidu.android.pushservice.p070d.C0232r;
import com.baidu.android.pushservice.p070d.C0233s;
import com.baidu.android.pushservice.p070d.C0240y;
import com.baidu.android.pushservice.p070d.C0241z;
import com.baidu.android.pushservice.p070d.aa;
import com.baidu.android.pushservice.p070d.ab;
import com.baidu.android.pushservice.p070d.ae;
import com.baidu.android.pushservice.p070d.af;
import com.baidu.android.pushservice.p072f.C0279m;
import com.baidu.android.pushservice.p072f.C0284t;
import com.baidu.android.pushservice.util.C0374f;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import com.baidu.frontia.p075a.p081e.C0404d;
import com.baidu.frontia.p075a.p081e.C0405e;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class ac {
    private Context f2949a;
    private C0284t f2950b;
    private ExecutorService f2951c;

    ac(Context context) {
        this.f2949a = context;
        this.f2950b = new C0284t(context);
        C0201b.m4446a(context);
        C0212l.m4479a(context);
        C0210j.m4473a(context);
        C0207g.m4472a(context);
        ad.m4377a();
        this.f2951c = new ThreadPoolExecutor(3, 100, 0, TimeUnit.MILLISECONDS, new SynchronousQueue());
    }

    private void m4345A(Intent intent) {
        this.f2950b.m4939a(intent.getBooleanExtra(PushConstants.EXTRA_FORCE_SEND, false), null);
    }

    private void m4346B(Intent intent) {
        PushSettings.m4216b(0);
    }

    private boolean m4347a() {
        return Build.MANUFACTURER.contains("Meizu") && Build.DISPLAY.contains("Flyme") && Build.MODEL.contains("m1 note");
    }

    private String m4348b() {
        return C0405e.m5358a(("com.baidu.pushservice.singelinstancev1" + C0404d.m5351a(this.f2949a)).getBytes(), false);
    }

    private void m4349b(Intent intent) {
        C0226l c0226l = new C0226l(intent);
        String stringExtra = intent.getStringExtra(PushConstants.EXTRA_BIND_NAME);
        int intExtra = intent.getIntExtra(PushConstants.EXTRA_BIND_STATUS, 0);
        int intExtra2 = intent.getIntExtra(PushConstants.EXTRA_PUSH_SDK_VERSION, 0);
        if (C0192a.m4341b()) {
            C0385a.m5311b("RegistrationService", "<<< METHOD_BIND ");
            C0385a.m5311b("RegistrationService", "packageName:" + c0226l.f3028e + ", bindName:" + stringExtra + ", bindStatus:" + intExtra);
            C0385a.m5311b("RegistrationService", "accessToken:" + c0226l.f3027d);
            C0385a.m5311b("RegistrationService", "apiKey:" + c0226l.f3032i);
        }
        if (C0192a.f2943d >= 1 && C0192a.f2943d <= 5) {
            C0374f.m5189a("Time of bind request back is:" + System.currentTimeMillis(), this.f2949a);
        }
        String e = C0201b.m4446a(this.f2949a).m4461e(c0226l.f3028e);
        if (TextUtils.isEmpty(c0226l.f3032i) || !C0201b.m4446a(this.f2949a).m4457a(c0226l.f3028e, c0226l.f3032i) || TextUtils.isEmpty(e)) {
            if (C0192a.f2943d >= 1 && C0192a.f2943d <= 5) {
                C0374f.m5189a("Time of bind request start at : " + System.currentTimeMillis(), this.f2949a);
            }
            m4374a(new C0220f(c0226l, this.f2949a, intExtra, stringExtra, intExtra2));
            return;
        }
        Intent intent2 = new Intent();
        intent2.putExtra(PushConstants.EXTRA_METHOD, c0226l.f3024a);
        intent2.putExtra(PushConstants.EXTRA_ERROR_CODE, 0);
        intent2.putExtra(PushConstants.EXTRA_CONTENT, e.getBytes());
        intent2.putExtra(PushConstants.EXTRA_BIND_STATUS, intExtra);
        if (C0192a.m4341b()) {
            C0385a.m5311b("RegistrationService", "> sendResult to " + c0226l.f3028e + " ,method:" + c0226l.f3024a + " ,errorCode : " + 0 + " ,content : " + new String(e));
        }
        C0374f.m5184a(this.f2949a, intent2, PushConstants.ACTION_RECEIVE, c0226l.f3028e);
        C0385a.m5312c("RegistrationService", "Already binded, no need to bind anymore");
    }

    private void m4350c(Intent intent) {
        C0212l.m4479a(this.f2949a).m4465a(new C0211k(intent.getStringExtra(PushConstants.EXTRA_API_KEY)), true);
        C0226l c0226l = new C0226l(intent);
        String stringExtra = intent.getStringExtra(PushConstants.EXTRA_BIND_NAME);
        int intExtra = intent.getIntExtra(PushConstants.EXTRA_BIND_STATUS, 0);
        int intExtra2 = intent.getIntExtra(PushConstants.EXTRA_PUSH_SDK_VERSION, 0);
        if (C0192a.m4341b()) {
            C0385a.m5311b("RegistrationService", "<<< METHOD_WEB_APP_BIND ");
            C0385a.m5311b("RegistrationService", "packageName:" + c0226l.f3028e + ", bindName:" + stringExtra + ", bindStatus:" + intExtra);
            C0385a.m5311b("RegistrationService", "accessToken:" + c0226l.f3027d);
            C0385a.m5311b("RegistrationService", "apiKey:" + c0226l.f3032i);
        }
        m4374a(new C0220f(c0226l, this.f2949a, intExtra, stringExtra, intExtra2));
    }

    private void m4351d(Intent intent) {
        C0207g.m4472a(this.f2949a).m4465a(new C0206f(intent.getStringExtra(PushConstants.EXTRA_API_KEY)), true);
        C0226l c0226l = new C0226l(intent);
        String stringExtra = intent.getStringExtra(PushConstants.EXTRA_BIND_NAME);
        int intExtra = intent.getIntExtra(PushConstants.EXTRA_BIND_STATUS, 0);
        int intExtra2 = intent.getIntExtra(PushConstants.EXTRA_PUSH_SDK_VERSION, 0);
        if (C0192a.m4341b()) {
            C0385a.m5311b("RegistrationService", "<<< METHOD_LAPP_BIND ");
            C0385a.m5311b("RegistrationService", "packageName:" + c0226l.f3028e + ", bindName:" + stringExtra + ", bindStatus:" + intExtra);
            C0385a.m5311b("RegistrationService", "accessToken:" + c0226l.f3027d);
            C0385a.m5311b("RegistrationService", "apiKey:" + c0226l.f3032i);
        }
        m4374a(new C0220f(c0226l, this.f2949a, intExtra, stringExtra, intExtra2));
    }

    private void m4352e(Intent intent) {
        String stringExtra = intent.getStringExtra(PushConstants.EXTRA_API_KEY);
        C0206f c0206f = (C0206f) C0207g.m4472a(this.f2949a).m4471c(stringExtra);
        Intent intent2 = new Intent();
        intent2.setAction(PushConstants.ACTION_LAPP_RECEIVE);
        intent2.putExtra(PushConstants.EXTRA_METHOD, PushConstants.METHOD_GET_LAPP_BIND_STATE);
        intent2.putExtra(PushConstants.EXTRA_API_KEY, stringExtra);
        if (c0206f != null) {
            intent2.putExtra(PushConstants.EXTRA_LAPP_BIND_STATE, true);
        } else {
            intent2.putExtra(PushConstants.EXTRA_LAPP_BIND_STATE, false);
        }
        this.f2949a.sendBroadcast(intent2);
    }

    private void m4353f(Intent intent) {
        C0226l c0226l = new C0226l(intent);
        String stringExtra = intent.getStringExtra(PushConstants.EXTRA_BIND_NAME);
        int intExtra = intent.getIntExtra(PushConstants.EXTRA_BIND_STATUS, 0);
        int intExtra2 = intent.getIntExtra(PushConstants.EXTRA_PUSH_SDK_VERSION, 0);
        int intExtra3 = intent.getIntExtra(PushConstants.EXTRA_CLIENT_SDK_VERSION, 0);
        C0200a c0209i = new C0209i(c0226l.f3032i, c0226l.f3028e);
        c0209i.m4440a(intExtra3);
        C0210j.m4473a(this.f2949a).m4465a(c0209i, true);
        if (C0192a.m4341b()) {
            C0385a.m5311b("RegistrationService", "<<< METHOD_SDK_BIND ");
            C0385a.m5311b("RegistrationService", "packageName:" + c0226l.f3028e + ", bindName:" + stringExtra + ", bindStatus:" + intExtra);
            C0385a.m5311b("RegistrationService", "accessToken:" + c0226l.f3027d);
        }
        m4374a(new C0220f(c0226l, this.f2949a, intExtra, stringExtra, intExtra2));
    }

    private void m4354g(Intent intent) {
        C0226l c0226l = new C0226l(intent);
        if (C0192a.m4341b()) {
            C0385a.m5311b("RegistrationService", "<<< METHOD_UNBIND ");
            C0385a.m5311b("RegistrationService", "packageName:" + c0226l.f3028e);
            C0385a.m5311b("RegistrationService", "accessToken:" + c0226l.f3027d);
            C0385a.m5311b("RegistrationService", "apiKey:" + c0226l.f3032i);
        }
        if (!(TextUtils.isEmpty(c0226l.f3028e) || TextUtils.isEmpty(c0226l.f3032i))) {
            C0208h a = C0201b.m4446a(this.f2949a).m4452a(c0226l.f3028e);
            if (!(a == null || TextUtils.isEmpty(a.m4439a()))) {
                c0226l.f3029f = a.m4439a();
            }
            C0201b.m4446a(this.f2949a).m4462f(c0226l.f3028e);
        }
        m4374a(new ae(c0226l, this.f2949a));
    }

    private void m4355h(Intent intent) {
        C0226l c0226l = new C0226l(intent);
        if (C0192a.m4341b()) {
            C0385a.m5311b("RegistrationService", "<<< METHOD_SDK_UNBIND ");
            C0385a.m5311b("RegistrationService", "packageName:" + c0226l.f3028e);
            C0385a.m5311b("RegistrationService", "accessToken:" + c0226l.f3027d);
            C0385a.m5311b("RegistrationService", "apiKey:" + c0226l.f3032i);
        }
        m4374a(new ae(c0226l, this.f2949a));
    }

    private void m4356i(Intent intent) {
        C0226l c0226l = new C0226l(intent);
        if (C0192a.m4341b()) {
            C0385a.m5311b("RegistrationService", "<<< METHOD_LAPP_UNBIND ");
            C0385a.m5311b("RegistrationService", "packageName:" + c0226l.f3028e);
            C0385a.m5311b("RegistrationService", "accessToken:" + c0226l.f3027d);
            C0385a.m5311b("RegistrationService", "apiKey:" + c0226l.f3032i);
        }
        m4374a(new ae(c0226l, this.f2949a));
    }

    private void m4357j(Intent intent) {
        String stringExtra = intent.getStringExtra("package_name");
        String stringExtra2 = intent.getStringExtra(PushConstants.EXTRA_APP_ID);
        if (stringExtra2 == null || stringExtra2.length() == 0) {
            C0208h a = C0201b.m4446a(this.f2949a).m4452a(stringExtra);
            if (a != null) {
                stringExtra2 = a.m4439a();
            }
        }
        String stringExtra3 = intent.getStringExtra(PushConstants.EXTRA_USER_ID);
        if (C0192a.m4341b()) {
            C0385a.m5311b("RegistrationService", "<<< METHOD_UNBIND_APP ");
            C0385a.m5311b("RegistrationService", "packageName:" + stringExtra);
            C0385a.m5311b("RegistrationService", "appid:" + stringExtra2);
            C0385a.m5311b("RegistrationService", "userid:" + stringExtra3);
        }
        PushSettings.m4208a(this.f2949a, stringExtra);
        C0226l c0226l = new C0226l();
        c0226l.f3024a = "com.baidu.android.pushservice.action.UNBINDAPP";
        c0226l.f3028e = stringExtra;
        c0226l.f3029f = stringExtra2;
        c0226l.f3030g = stringExtra3;
        if (!TextUtils.isEmpty(c0226l.f3028e)) {
            C0208h a2 = C0201b.m4446a(this.f2949a).m4452a(c0226l.f3028e);
            if (!(a2 == null || TextUtils.isEmpty(a2.m4439a()))) {
                c0226l.f3029f = a2.m4439a();
            }
            C0201b.m4446a(this.f2949a).m4462f(c0226l.f3028e);
        }
        m4374a(new af(c0226l, this.f2949a));
    }

    private void m4358k(Intent intent) {
        C0226l c0226l = new C0226l(intent);
        int intExtra = intent.getIntExtra(PushConstants.EXTRA_FETCH_TYPE, 1);
        int intExtra2 = intent.getIntExtra(PushConstants.EXTRA_FETCH_NUM, 1);
        if (C0192a.m4341b()) {
            C0385a.m5311b("RegistrationService", "<<< METHOD_FETCH ");
            C0385a.m5311b("RegistrationService", "packageName:" + c0226l.f3028e);
            C0385a.m5311b("RegistrationService", "accessToken:" + c0226l.f3027d);
        }
        m4374a(new C0227m(c0226l, this.f2949a, intExtra, intExtra2));
    }

    private void m4359l(Intent intent) {
        C0226l c0226l = new C0226l(intent);
        if (C0192a.m4341b()) {
            C0385a.m5311b("RegistrationService", "<<< METHOD_COUNT ");
            C0385a.m5311b("RegistrationService", "packageName:" + c0226l.f3028e);
            C0385a.m5311b("RegistrationService", "accessToken:" + c0226l.f3027d);
        }
        m4374a(new C0222h(c0226l, this.f2949a));
    }

    private void m4360m(Intent intent) {
        C0226l c0226l = new C0226l(intent);
        String[] stringArrayExtra = intent.getStringArrayExtra(PushConstants.EXTRA_MSG_IDS);
        if (C0192a.m4341b()) {
            C0385a.m5311b("RegistrationService", "<<< METHOD_DELETE ");
            C0385a.m5311b("RegistrationService", "packageName:" + c0226l.f3028e);
            C0385a.m5311b("RegistrationService", "accessToken:" + c0226l.f3027d);
        }
        m4374a(new C0225k(c0226l, this.f2949a, stringArrayExtra));
    }

    private void m4361n(Intent intent) {
        C0226l c0226l = new C0226l(intent);
        String stringExtra = intent.getStringExtra(PushConstants.EXTRA_GID);
        if (C0192a.m4341b()) {
            C0385a.m5311b("RegistrationService", "<<< ACTION_GBIND ");
            C0385a.m5311b("RegistrationService", "packageName:" + c0226l.f3028e + ", gid:" + stringExtra);
            C0385a.m5311b("RegistrationService", "accessToken:" + c0226l.f3027d);
        }
        m4374a(new C0230p(c0226l, this.f2949a, stringExtra));
    }

    private void m4362o(Intent intent) {
        C0226l c0226l = new C0226l(intent);
        String stringExtra = intent.getStringExtra(PushConstants.EXTRA_TAGS);
        if (C0192a.m4341b()) {
            C0385a.m5311b("RegistrationService", "<<< ACTION_SET_TAGS ");
            C0385a.m5311b("RegistrationService", "packageName:" + c0226l.f3028e + ", gid:" + stringExtra);
            C0385a.m5311b("RegistrationService", "accessToken:" + c0226l.f3027d);
        }
        m4374a(new com.baidu.android.pushservice.p070d.ac(c0226l, this.f2949a, stringExtra));
    }

    private void m4363p(Intent intent) {
        C0226l c0226l = new C0226l(intent);
        String stringExtra = intent.getStringExtra(PushConstants.EXTRA_TAGS);
        if (C0192a.m4341b()) {
            C0385a.m5311b("RegistrationService", "<<< ACTION_GBIND ");
            C0385a.m5311b("RegistrationService", "packageName:" + c0226l.f3028e + ", gid:" + stringExtra);
            C0385a.m5311b("RegistrationService", "accessToken:" + c0226l.f3027d);
        }
        m4374a(new C0224j(c0226l, this.f2949a, stringExtra));
    }

    private void m4364q(Intent intent) {
        C0226l c0226l = new C0226l(intent);
        String stringExtra = intent.getStringExtra(PushConstants.EXTRA_GID);
        if (C0192a.m4341b()) {
            C0385a.m5311b("RegistrationService", "<<< ACTION_GUNBIND ");
            C0385a.m5311b("RegistrationService", "packageName:" + c0226l.f3028e + ", gid:" + stringExtra);
            C0385a.m5311b("RegistrationService", "accessToken:" + c0226l.f3027d);
        }
        m4374a(new C0233s(c0226l, this.f2949a, stringExtra));
    }

    private void m4365r(Intent intent) {
        C0226l c0226l = new C0226l(intent);
        String stringExtra = intent.getStringExtra(PushConstants.EXTRA_GID);
        if (C0192a.m4341b()) {
            C0385a.m5311b("RegistrationService", "<<< METHOD_GINFO ");
            C0385a.m5311b("RegistrationService", "packageName:" + c0226l.f3028e + ", gid:" + stringExtra);
            C0385a.m5311b("RegistrationService", "accessToken:" + c0226l.f3027d);
        }
        m4374a(new C0231q(c0226l, this.f2949a, stringExtra));
    }

    private void m4366s(Intent intent) {
        C0226l c0226l = new C0226l(intent);
        if (C0192a.m4341b()) {
            C0385a.m5311b("RegistrationService", "<<< METHOD_LISTTAGS ");
            C0385a.m5311b("RegistrationService", "packageName:" + c0226l.f3028e);
            C0385a.m5311b("RegistrationService", "accessToken:" + c0226l.f3027d);
        }
        m4374a(new C0240y(c0226l, this.f2949a));
    }

    private void m4367t(Intent intent) {
        C0226l c0226l = new C0226l(intent);
        if (C0192a.m4341b()) {
            C0385a.m5311b("RegistrationService", "<<< METHOD_GLIST ");
            C0385a.m5311b("RegistrationService", "packageName:" + c0226l.f3028e);
            C0385a.m5311b("RegistrationService", "accessToken:" + c0226l.f3027d);
        }
        m4374a(new C0232r(c0226l, this.f2949a));
    }

    private void m4368u(Intent intent) {
        C0226l c0226l = new C0226l(intent);
        String stringExtra = intent.getStringExtra(PushConstants.EXTRA_GID);
        int intExtra = intent.getIntExtra(PushConstants.EXTRA_GROUP_FETCH_TYPE, 1);
        int intExtra2 = intent.getIntExtra(PushConstants.EXTRA_GROUP_FETCH_NUM, 1);
        if (C0192a.m4341b()) {
            C0385a.m5311b("RegistrationService", "<<< METHOD_FETCHGMSG ");
            C0385a.m5311b("RegistrationService", "packageName:" + c0226l.f3028e);
            C0385a.m5311b("RegistrationService", "accessToken:" + c0226l.f3027d);
            C0385a.m5311b("RegistrationService", "gid:" + stringExtra);
            C0385a.m5311b("RegistrationService", "fetchType:" + intExtra);
            C0385a.m5311b("RegistrationService", "fetchNum:" + intExtra2);
        }
        m4374a(new C0228n(c0226l, this.f2949a, stringExtra, intExtra, intExtra2));
    }

    private void m4369v(Intent intent) {
        C0226l c0226l = new C0226l(intent);
        String stringExtra = intent.getStringExtra(PushConstants.EXTRA_GID);
        if (C0192a.m4341b()) {
            C0385a.m5311b("RegistrationService", "<<< METHOD_COUNTGMSG ");
            C0385a.m5311b("RegistrationService", "packageName:" + c0226l.f3028e);
            C0385a.m5311b("RegistrationService", "accessToken:" + c0226l.f3027d);
            C0385a.m5311b("RegistrationService", "gid:" + stringExtra);
        }
        m4374a(new C0223i(c0226l, this.f2949a, stringExtra));
    }

    private void m4370w(Intent intent) {
        C0226l c0226l = new C0226l(intent);
        if (C0192a.m4341b()) {
            C0385a.m5311b("RegistrationService", "<<< METHOD_ONLINE ");
            C0385a.m5311b("RegistrationService", "packageName:" + c0226l.f3028e);
            C0385a.m5311b("RegistrationService", "accessToken:" + c0226l.f3027d);
        }
        m4374a(new C0241z(c0226l, this.f2949a));
    }

    private void m4371x(Intent intent) {
        C0226l c0226l = new C0226l(intent);
        if (C0192a.m4341b()) {
            C0385a.m5311b("RegistrationService", "<<< METHOD_SEND ");
            C0385a.m5311b("RegistrationService", "packageName:" + c0226l.f3028e);
            C0385a.m5311b("RegistrationService", "accessToken:" + c0226l.f3027d);
        }
        m4374a(new aa(c0226l, this.f2949a, intent.getStringExtra(PushConstants.EXTRA_MSG)));
    }

    private void m4372y(Intent intent) {
        C0226l c0226l = new C0226l(intent);
        C0385a.m5311b("RegistrationService", "<<< METHOD_SEND_MSG_TO_USER ");
        C0385a.m5311b("RegistrationService", "packageName:" + c0226l.f3028e);
        C0385a.m5311b("RegistrationService", "accessToken:" + c0226l.f3027d);
        m4374a(new ab(c0226l, this.f2949a, intent.getStringExtra(PushConstants.EXTRA_APP_ID), intent.getStringExtra(PushConstants.EXTRA_USER_ID), intent.getStringExtra(PushConstants.EXTRA_MSG_KEY), intent.getStringExtra(PushConstants.EXTRA_MSG)));
    }

    private void m4373z(Intent intent) {
        if (C0192a.m4341b()) {
            C0385a.m5311b("RegistrationService", "<<< handleSendAppStat ");
        }
        this.f2950b.m4938a();
        this.f2950b.m4939a(false, null);
    }

    public void m4374a(C0214a c0214a) {
        try {
            if (m4347a()) {
                new Thread(c0214a).start();
            } else if (!this.f2951c.isShutdown()) {
                this.f2951c.submit(c0214a);
                C0385a.m5313d("bind_error", "RegistrationService   submitApiProcessor  ");
            }
        } catch (RejectedExecutionException e) {
            if (C0192a.m4341b()) {
                C0385a.m5313d("RegistrationService", "Add submitApiProcessor failed threadpool is shutdown " + e.getMessage());
            }
        }
    }

    public void m4375a(String str, int i, String str2, Context context) {
        C0226l c0226l = new C0226l();
        c0226l.f3024a = "com.baidu.android.pushservice.action.UNBIND";
        if (i == 0) {
            c0226l.f3032i = str2;
        } else if (i == 2) {
            c0226l.f3031h = str2;
            c0226l.f3029f = str;
        }
        if (i != -1) {
            if (C0192a.m4341b()) {
                C0385a.m5308a("RegistrationService", "Event = " + c0226l);
            }
            C0293h.m4973a(context).m5005a(Long.valueOf(System.currentTimeMillis() + ((long) (((Math.random() * 2.0d) * 1000.0d) * 3600.0d))).longValue(), new ae(c0226l, this.f2949a));
        }
    }

    public boolean m4376a(Intent intent) {
        LocalServerSocket localServerSocket = null;
        boolean z = false;
        if (intent == null) {
            return false;
        }
        if (C0192a.m4341b()) {
            C0385a.m5311b("RegistrationService", "RegistrationSerice handleIntent : " + intent);
        }
        String action = intent.getAction();
        if ("com.baidu.pushservice.action.publicmsg.CLICK_V2".equals(action) || "com.baidu.pushservice.action.publicmsg.DELETE_V2".equals(action)) {
            ((PublicMsg) intent.getParcelableExtra("public_msg")).handle(this.f2949a, action, intent.getData().getHost());
            return true;
        } else if ("com.baidu.android.pushservice.action.privatenotification.CLICK".equals(action) || "com.baidu.android.pushservice.action.privatenotification.DELETE".equals(action)) {
            ((PublicMsg) intent.getParcelableExtra("public_msg")).handlePrivateNotification(this.f2949a, action, intent.getStringExtra("msg_id"), intent.getStringExtra(PushConstants.EXTRA_APP_ID));
            return true;
        } else if ("com.baidu.android.pushservice.action.passthrough.notification.CLICK".equals(action) || "com.baidu.android.pushservice.action.passthrough.notification.DELETE".equals(action) || "com.baidu.android.pushservice.action.passthrough.notification.NOTIFIED".equals(action)) {
            String stringExtra;
            if (C0192a.f2943d >= 1 && C0192a.f2943d <= 5) {
                C0374f.m5189a("push_passthrough: receive  click delete and notified action", this.f2949a);
            }
            if (C0192a.m4341b()) {
                C0385a.m5313d("RegistrationService", "handle passthrough notification " + action);
            }
            String stringExtra2 = intent.hasExtra(PushConstants.EXTRA_APP_ID) ? intent.getStringExtra(PushConstants.EXTRA_APP_ID) : null;
            if (intent.hasExtra("msg_id")) {
                stringExtra = intent.getStringExtra("msg_id");
            }
            C0279m.m4915a(this.f2949a, stringExtra, stringExtra2, action);
            return true;
        } else if ("com.baidu.android.pushservice.action.adnotification.ADCLICK".equals(action) || "com.baidu.android.pushservice.action.adnotification.ADDELETE".equals(action)) {
            if (C0192a.f2943d >= 1 && C0192a.f2943d <= 5) {
                C0374f.m5189a("pushadvertise: receive  click or delete action", this.f2949a);
            }
            ((PublicMsg) intent.getParcelableExtra("ad_msg")).handleADNotification(this.f2949a, action, intent.getStringExtra("msg_id"), intent.getStringExtra(PushConstants.EXTRA_APP_ID), intent.getStringExtra("action_type"), intent.getStringExtra("click_url"), intent.getStringExtra("advertise_Style"));
            return true;
        } else if ("com.baidu.android.pushservice.action.media.CLICK".equals(action) || "com.baidu.android.pushservice.action.media.DELETE".equals(action)) {
            ((PublicMsg) intent.getParcelableExtra("public_msg")).handleRichMediaNotification(this.f2949a, action, intent.getStringExtra(PushConstants.EXTRA_APP_ID));
            return true;
        } else if ("com.baidu.android.pushservice.action.lightapp.notification.CLICK".equals(action)) {
            C0306e.m5025a(this.f2949a, intent);
            return true;
        } else if ("com.baidu.android.pushservice.action.lightapp.notification.DELETE".equals(action)) {
            C0306e.m5034b(this.f2949a, intent);
            return true;
        } else if ("com.baidu.pushservice.action.TOKEN".equals(action)) {
            if (C0192a.m4341b()) {
                C0385a.m5311b("RegistrationService", "<<< ACTION_TOKEN ");
            }
            if (!ad.m4377a().m4384e()) {
                ad.m4377a().m4378a(this.f2949a, true);
            }
            return true;
        } else if (!PushConstants.ACTION_METHOD.equals(action)) {
            return false;
        } else {
            action = intent.getStringExtra("method_version");
            if (!(action == null || "V2".equals(action) || !action.equals("V1"))) {
                try {
                    localServerSocket = new LocalServerSocket(m4348b());
                } catch (Exception e) {
                    if (C0192a.m4341b()) {
                        C0385a.m5311b("RegistrationService", "---V1 Socket Adress (" + m4348b() + ") in use --- @ " + this.f2949a.getPackageName());
                    }
                }
                if (localServerSocket == null) {
                    Intent b = C0374f.m5198b(this.f2949a, "com.baidu.pushservice.action.start.SERVICEINFO");
                    Intent b2 = C0374f.m5198b(this.f2949a, "com.baidu.moplus.action.start.SERVICEINFO");
                    if (b == null && b2 == null) {
                        return false;
                    }
                    if (b != null) {
                        action = b.getStringExtra("method_version");
                        if ("V1".equals(action)) {
                            if (!C0192a.m4341b()) {
                                return false;
                            }
                            C0385a.m5311b("RegistrationService", "Method Version : " + action);
                            return false;
                        }
                    }
                    if (b2 != null) {
                        action = b2.getStringExtra("method_version");
                        if ("V1".equals(action)) {
                            if (!C0192a.m4341b()) {
                                return false;
                            }
                            C0385a.m5311b("RegistrationService", "Method Version : " + action);
                            return false;
                        }
                    }
                }
            }
            action = intent.getStringExtra(PushConstants.EXTRA_METHOD);
            if (PushConstants.METHOD_BIND.equals(action)) {
                m4349b(intent);
                z = true;
            } else if (PushConstants.METHOD_WEBAPP_BIND_FROM_DEEPLINK.equals(action)) {
                PushManager.startWork(this.f2949a, 3, intent.getStringExtra(PushConstants.EXTRA_WEB_BIND_API_KEY));
                z = true;
            } else if (PushConstants.METHOD_WEBAPP_BIND_INTENT.equals(action)) {
                m4350c(intent);
                z = true;
            } else if (PushConstants.METHOD_LAPP_BIND_INTENT.equals(action)) {
                m4351d(intent);
                z = true;
            } else if (PushConstants.METHOD_GET_LAPP_BIND_STATE.equals(action)) {
                m4352e(intent);
                z = true;
            } else if (PushConstants.METHOD_SDK_BIND.equals(action)) {
                m4353f(intent);
                z = true;
            } else if (PushConstants.METHOD_UNBIND.equals(action)) {
                m4354g(intent);
                z = true;
            } else if (PushConstants.METHOD_SDK_UNBIND.equals(action)) {
                m4355h(intent);
                z = true;
            } else if (PushConstants.METHOD_LAPP_UNBIND.equals(action)) {
                m4356i(intent);
                z = true;
            } else if ("com.baidu.android.pushservice.action.UNBINDAPP".equals(action)) {
                m4357j(intent);
                z = true;
            } else if (PushConstants.METHOD_FETCH.equals(action)) {
                m4358k(intent);
                z = true;
            } else if (PushConstants.METHOD_COUNT.equals(action)) {
                m4359l(intent);
                z = true;
            } else if (PushConstants.METHOD_DELETE.equals(action)) {
                m4360m(intent);
                z = true;
            } else if (PushConstants.METHOD_GBIND.equals(action)) {
                m4361n(intent);
                z = true;
            } else if (PushConstants.METHOD_SET_TAGS.equals(action) || PushConstants.METHOD_SET_SDK_TAGS.equals(action) || PushConstants.METHOD_SET_LAPP_TAGS.equals(action)) {
                m4362o(intent);
                z = true;
            } else if (PushConstants.METHOD_DEL_TAGS.equals(action) || PushConstants.METHOD_DEL_SDK_TAGS.equals(action) || PushConstants.METHOD_DEL_LAPP_TAGS.equals(action)) {
                m4363p(intent);
                z = true;
            } else if (PushConstants.METHOD_GUNBIND.equals(action)) {
                m4364q(intent);
                z = true;
            } else if (PushConstants.METHOD_GINFO.equals(action)) {
                m4365r(intent);
                z = true;
            } else if (PushConstants.METHOD_GLIST.equals(action)) {
                m4367t(intent);
                z = true;
            } else if (PushConstants.METHOD_LISTTAGS.equals(action) || PushConstants.METHOD_LIST_SDK_TAGS.equals(action) || PushConstants.METHOD_LIST_LAPP_TAGS.equals(action)) {
                m4366s(intent);
                z = true;
            } else if (PushConstants.METHOD_FETCHGMSG.equals(action)) {
                m4368u(intent);
                z = true;
            } else if (PushConstants.METHOD_COUNTGMSG.equals(action)) {
                m4369v(intent);
                z = true;
            } else if (PushConstants.METHOD_ONLINE.equals(action)) {
                m4370w(intent);
                z = true;
            } else if (PushConstants.METHOD_SEND.equals(action)) {
                m4371x(intent);
                z = true;
            } else if ("com.baidu.android.pushservice.action.SEND_APPSTAT".equals(action)) {
                m4373z(intent);
                z = true;
            } else if ("com.baidu.android.pushservice.action.SEND_LBS".equals(action)) {
                m4345A(intent);
                z = true;
            } else if ("com.baidu.android.pushservice.action.ENBALE_APPSTAT".equals(action)) {
                m4346B(intent);
                z = true;
            } else if (PushConstants.METHOD_SEND_MSG_TO_USER.equals(action)) {
                m4372y(intent);
                z = true;
            }
            if (localServerSocket == null) {
                return z;
            }
            try {
                localServerSocket.close();
                return z;
            } catch (IOException e2) {
                C0385a.m5313d("RegistrationService", "error " + e2.getMessage());
                return z;
            }
        }
    }
}
