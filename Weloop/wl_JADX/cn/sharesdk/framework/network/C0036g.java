package cn.sharesdk.framework.network;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: cn.sharesdk.framework.network.g */
public class C0036g extends InputStream {
    private ArrayList<InputStream> f1980a;
    private int f1981b;

    C0036g() {
        this.f1980a = new ArrayList();
    }

    private boolean m3007a() {
        return this.f1980a == null || this.f1980a.size() <= 0;
    }

    public void m3008a(InputStream inputStream) {
        this.f1980a.add(inputStream);
    }

    public int available() {
        return m3007a() ? 0 : ((InputStream) this.f1980a.get(this.f1981b)).available();
    }

    public void close() {
        Iterator it = this.f1980a.iterator();
        while (it.hasNext()) {
            ((InputStream) it.next()).close();
        }
    }

    public int read() {
        if (m3007a()) {
            return -1;
        }
        int read = ((InputStream) this.f1980a.get(this.f1981b)).read();
        while (read < 0) {
            this.f1981b++;
            if (this.f1981b >= this.f1980a.size()) {
                return read;
            }
            read = ((InputStream) this.f1980a.get(this.f1981b)).read();
        }
        return read;
    }

    public int read(byte[] bArr, int i, int i2) {
        if (m3007a()) {
            return -1;
        }
        int read = ((InputStream) this.f1980a.get(this.f1981b)).read(bArr, i, i2);
        while (read < 0) {
            this.f1981b++;
            if (this.f1981b >= this.f1980a.size()) {
                return read;
            }
            read = ((InputStream) this.f1980a.get(this.f1981b)).read(bArr, i, i2);
        }
        return read;
    }

    public long skip(long j) {
        throw new IOException();
    }
}
