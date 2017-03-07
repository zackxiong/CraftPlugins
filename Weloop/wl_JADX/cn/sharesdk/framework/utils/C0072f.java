package cn.sharesdk.framework.utils;

import android.util.Base64;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.util.HashMap;

/* renamed from: cn.sharesdk.framework.utils.f */
public class C0072f {
    private File f2106a;
    private HashMap<String, Object> f2107b;

    private void m3270a() {
        if (this.f2107b != null && this.f2106a != null) {
            try {
                if (!this.f2106a.getParentFile().exists()) {
                    this.f2106a.getParentFile().mkdirs();
                }
                synchronized (this.f2107b) {
                    OutputStream fileOutputStream = new FileOutputStream(this.f2106a);
                    if (fileOutputStream.getChannel().tryLock() != null) {
                        ObjectOutputStream objectOutputStream = new ObjectOutputStream(fileOutputStream);
                        objectOutputStream.writeObject(this.f2107b);
                        objectOutputStream.flush();
                        objectOutputStream.close();
                    } else {
                        fileOutputStream.close();
                    }
                }
            } catch (Throwable th) {
                C0071e.m3269c(th);
            }
        }
    }

    private void m3271b(String str, Object obj) {
        if (this.f2107b == null) {
            this.f2107b = new HashMap();
        }
        this.f2107b.put(str, obj);
    }

    private Object m3272d(String str) {
        return this.f2107b == null ? null : this.f2107b.get(str);
    }

    public void m3273a(String str) {
        try {
            this.f2106a = new File(str);
            if (this.f2106a.exists()) {
                ObjectInputStream objectInputStream = new ObjectInputStream(new FileInputStream(this.f2106a));
                this.f2107b = (HashMap) objectInputStream.readObject();
                objectInputStream.close();
            }
        } catch (Throwable th) {
            C0071e.m3269c(th);
        }
    }

    public void m3274a(String str, Object obj) {
        try {
            OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            objectOutputStream.writeObject(obj);
            objectOutputStream.flush();
            objectOutputStream.close();
            m3275a(str, Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2));
        } catch (Throwable th) {
            C0071e.m3269c(th);
        }
    }

    public void m3275a(String str, String str2) {
        m3271b(str, str2);
        m3270a();
    }

    public String m3276b(String str) {
        Object d = m3272d(str);
        return d == null ? null : d instanceof String ? (String) d : String.valueOf(d);
    }

    public Object m3277c(String str) {
        try {
            ObjectInputStream objectInputStream = new ObjectInputStream(new ByteArrayInputStream(Base64.decode(m3276b(str), 2)));
            Object readObject = objectInputStream.readObject();
            objectInputStream.close();
            return readObject;
        } catch (Throwable th) {
            C0071e.m3266b(th);
            return null;
        }
    }
}
