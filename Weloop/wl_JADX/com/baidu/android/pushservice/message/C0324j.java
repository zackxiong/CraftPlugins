package com.baidu.android.pushservice.message;

import android.content.Context;
import android.os.Environment;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.message.p074a.C0301c;
import com.baidu.android.pushservice.message.p074a.C0312j;
import com.baidu.android.pushservice.message.p074a.C0313k;
import com.baidu.android.pushservice.p069c.C0202c;
import com.baidu.android.pushservice.p069c.C0203d;
import com.baidu.android.pushservice.p072f.C0277k;
import com.baidu.android.pushservice.p072f.C0279m;
import com.baidu.android.pushservice.util.C0372d;
import com.baidu.android.pushservice.util.C0374f;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import com.umeng.update.util.ProGuard;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashSet;
import java.util.Iterator;

/* renamed from: com.baidu.android.pushservice.message.j */
public class C0324j extends C0316c {
    private static final String f3389b;
    private HashSet<String> f3390c;

    static {
        f3389b = C0324j.class.getSimpleName();
    }

    public C0324j(Context context) {
        super(context);
        this.f3390c = new HashSet();
        this.f3390c = m5078a();
    }

    private String m5077a(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return "";
        }
        int i = 0;
        while (i < bArr.length) {
            if (bArr[i] == null) {
                break;
            }
            i++;
        }
        i = 0;
        return new String(bArr, 0, i);
    }

    private HashSet<String> m5078a() {
        String absolutePath = Environment.getExternalStorageDirectory().getAbsolutePath();
        File file = new File(absolutePath, "baidu/pushservice/files");
        if (!file.exists()) {
            file.mkdirs();
        }
        file = new File(absolutePath, "baidu/pushservice/files/mi");
        HashSet<String> hashSet = new HashSet();
        if (file.exists()) {
            try {
                BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
                for (Object readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
                    hashSet.add(readLine);
                }
                bufferedReader.close();
            } catch (FileNotFoundException e) {
                C0385a.m5313d(f3389b, "error " + e.getMessage());
            } catch (Exception e2) {
                C0385a.m5313d(f3389b, "error " + e2.getMessage());
            }
        }
        return hashSet;
    }

    private void m5079a(HashSet<String> hashSet) {
        String absolutePath = Environment.getExternalStorageDirectory().getAbsolutePath();
        File file = new File(absolutePath, "baidu/pushservice/files");
        if (!file.exists()) {
            file.mkdirs();
        }
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(new File(absolutePath, "baidu/pushservice/files/mi")));
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                bufferedWriter.write((String) it.next());
                bufferedWriter.newLine();
            }
            bufferedWriter.close();
        } catch (FileNotFoundException e) {
            C0385a.m5313d(f3389b, "error " + e.getMessage());
        } catch (Exception e2) {
            C0385a.m5313d(f3389b, "error " + e2.getMessage());
        }
    }

    private boolean m5080a(String str) {
        boolean z = false;
        if (this.f3390c.contains(str)) {
            this.f3390c.remove(str);
            z = true;
        }
        if (this.f3390c.size() >= 100) {
            this.f3390c.clear();
        }
        this.f3390c.add(str);
        m5079a(this.f3390c);
        return z;
    }

    public int m5081a(C0319e c0319e) {
        c0319e.f3371f = true;
        Object obj = c0319e.f3369d;
        if (obj == null) {
            return -1;
        }
        InputStream byteArrayInputStream = new ByteArrayInputStream(obj);
        C0372d c0372d = new C0372d(byteArrayInputStream);
        try {
            C0325k c0325k = new C0325k();
            byte[] bArr = new byte[ProGuard.f5670c];
            c0372d.m5160a(bArr);
            c0325k.m5085a(m5077a(bArr));
            c0325k.m5084a(c0372d.m5163d());
            c0325k.m5083a(c0372d.m5161b());
            if (byteArrayInputStream != null) {
                byteArrayInputStream.close();
            }
            if (c0372d != null) {
                c0372d.m5159a();
            }
            c0319e.m5057a(c0325k);
            int length = obj.length - 140;
            if (length <= 0) {
                length = 0;
            }
            Object obj2 = new byte[length];
            System.arraycopy(obj, 140, obj2, 0, length);
            if (C0192a.m4341b()) {
                C0385a.m5308a(f3389b, "New MSG: " + c0325k.toString());
                C0385a.m5308a(f3389b, "msgBody :" + new String(obj2));
                C0374f.m5201b("New MSG: " + c0325k.toString() + " msgBody :" + new String(obj2));
            }
            if (C0192a.f2943d > 0) {
                C0374f.m5189a("New MSG " + c0325k.toString() + " msgBody " + new String(obj2) + " at time of " + System.currentTimeMillis(), this.a);
            }
            if (m5080a(c0325k.m5087c())) {
                if (C0192a.m4341b()) {
                    C0385a.m5311b(f3389b, "Message ID(" + c0325k.m5087c() + ") received duplicated, ack success to server directly.");
                }
                C0385a.m5308a(f3389b, ">>> MSG ID duplicated, not deliver to app.");
                C0279m.m4914a(this.a, c0325k.m5082a(), c0325k.m5087c(), c0325k.m5088d(), obj2, 4, C0277k.f3243a);
                return 0;
            }
            C0301c a = new C0312j(this.a).m5043a(C0313k.m5044a(c0325k.m5088d()));
            int a2 = a != null ? a.m5018a(c0325k.m5082a(), c0325k.m5087c(), obj2) : 0;
            int i = C0277k.f3243a;
            if (C0203d.m4463a(this.a, c0325k.m5082a()).m4464a() == C0202c.LIGHT_APP_CLIENT_NEW) {
                i = C0277k.f3244b;
            }
            C0279m.m4914a(this.a, c0325k.m5082a(), c0325k.m5087c(), c0325k.m5088d(), obj2, a2, i);
            return a2;
        } catch (IOException e) {
            C0385a.m5313d(f3389b, e.getMessage());
            return -1;
        }
    }
}
