package cn.sharesdk.framework.network;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

/* renamed from: cn.sharesdk.framework.network.c */
public class C0033c extends C0031d {
    private File f1976a;

    protected InputStream m3000a() {
        return new FileInputStream(this.f1976a);
    }

    public void m3001a(File file) {
        this.f1976a = file;
    }

    public void m3002a(String str) {
        this.f1976a = new File(str);
    }

    protected long m3003b() {
        return this.f1976a.length();
    }

    public String toString() {
        return this.f1976a.toString();
    }
}
