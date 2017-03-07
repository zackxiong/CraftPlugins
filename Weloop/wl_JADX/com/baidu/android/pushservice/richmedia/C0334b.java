package com.baidu.android.pushservice.richmedia;

import android.content.Context;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.richmedia.C0347n.C0346a;
import com.baidu.android.pushservice.util.PushDatabase;
import com.baidu.android.pushservice.util.PushDatabase.C0360g;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashSet;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import org.apache.http.HttpResponse;

/* renamed from: com.baidu.android.pushservice.richmedia.b */
public class C0334b extends Thread implements Comparable<C0334b> {
    public static int f3435e;
    public static int f3436f;
    private static HashSet<C0347n> f3437h;
    protected C0166q f3438a;
    public WeakReference<Context> f3439b;
    protected long f3440c;
    public C0347n f3441d;
    private C0344l f3442g;
    private boolean f3443i;

    static {
        f3437h = new HashSet();
        f3435e = 1;
        f3436f = 2;
    }

    public C0334b(Context context, C0166q c0166q, C0347n c0347n) {
        this.f3442g = C0344l.m5135a(C0334b.class.getName());
        this.f3443i = false;
        this.f3438a = c0166q;
        this.f3439b = new WeakReference(context);
        this.f3440c = System.currentTimeMillis();
        this.f3441d = c0347n;
    }

    private int m5120a(String str) {
        try {
            return ((HttpURLConnection) new URL(str).openConnection()).getContentLength();
        } catch (MalformedURLException e) {
            C0385a.m5313d("HttpTask", "error " + e.getMessage());
            return 0;
        } catch (IOException e2) {
            C0385a.m5313d("HttpTask", "error " + e2.getMessage());
            return 0;
        }
    }

    private C0360g m5121a(Context context, String str) {
        List selectFileDownloadingInfo = PushDatabase.selectFileDownloadingInfo(context);
        if (selectFileDownloadingInfo != null) {
            for (int i = 0; i < selectFileDownloadingInfo.size(); i++) {
                if (((C0360g) selectFileDownloadingInfo.get(i)).f3537b.equalsIgnoreCase(str)) {
                    return (C0360g) selectFileDownloadingInfo.get(i);
                }
            }
        }
        return null;
    }

    private void m5122a(C0350p c0350p) {
        try {
            if (this.f3438a == null || c0350p == null) {
                C0334b.m5126b(this.f3441d);
                return;
            }
            if (c0350p.f3478c == 0) {
                String str = c0350p.f3480e;
                if (c0350p.f3476a == C0346a.REQ_TYPE_GET_ZIP && str != null) {
                    String substring = str.substring(0, str.lastIndexOf("."));
                    File file = new File(str);
                    C0334b.m5123a(file, substring);
                    file.delete();
                    c0350p.f3480e = substring;
                }
                this.f3438a.m4196a(this, c0350p);
            } else if (c0350p.f3478c == 1) {
                this.f3438a.m4197a(this, new Throwable("error: response http error errorCode=" + c0350p.f3477b));
            } else if (c0350p.f3478c == 3) {
                this.f3438a.m4197a(this, new Throwable("error: request error,request is null or fileName is null."));
            } else if (c0350p.f3478c == 2) {
                this.f3438a.m4198b(this);
            } else if (c0350p.f3478c == -1) {
                this.f3438a.m4197a(this, new Throwable("IOException"));
            }
            C0334b.m5126b(this.f3441d);
        } catch (Throwable th) {
            C0334b.m5126b(this.f3441d);
        }
    }

    private static void m5123a(File file, String str) {
        try {
            InputStream fileInputStream = new FileInputStream(file);
            ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(fileInputStream));
            while (true) {
                ZipEntry nextEntry = zipInputStream.getNextEntry();
                if (nextEntry != null) {
                    try {
                        C0385a.m5308a("DownloadCompleteReceiver: ", "unzip----=" + nextEntry);
                        byte[] bArr = new byte[4096];
                        String name = nextEntry.getName();
                        String[] strArr = null;
                        if (name.length() > 0) {
                            strArr = name.split("/");
                        }
                        File file2 = new File(str + "/" + strArr[strArr.length - 1]);
                        if (!nextEntry.isDirectory()) {
                            File file3 = new File(file2.getParent());
                            if (!file3.exists()) {
                                file3.mkdirs();
                            }
                            if (!file2.exists()) {
                                file2.createNewFile();
                            }
                            OutputStream fileOutputStream = new FileOutputStream(file2);
                            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream, 4096);
                            while (true) {
                                int read = zipInputStream.read(bArr, 0, 4096);
                                if (read == -1) {
                                    break;
                                }
                                bufferedOutputStream.write(bArr, 0, read);
                            }
                            bufferedOutputStream.flush();
                            bufferedOutputStream.close();
                            if (fileOutputStream != null) {
                                fileOutputStream.close();
                            }
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                } else {
                    fileInputStream.close();
                    zipInputStream.close();
                    return;
                }
            }
        } catch (Exception e2) {
            C0385a.m5313d("HttpTask", "error " + e2.getMessage());
        }
    }

    private static synchronized boolean m5124a(C0347n c0347n) {
        boolean add;
        synchronized (C0334b.class) {
            add = f3437h.add(c0347n);
        }
        return add;
    }

    private C0350p m5125b() {
        C0350p c0350p = new C0350p();
        c0350p.f3479d = this.f3441d;
        if (this.f3441d != null) {
            c0350p.f3476a = this.f3441d.m5141b();
            if (this.f3441d.f3462b == null) {
                if (C0192a.m4341b()) {
                    C0385a.m5311b("HttpTask", "download file Request error: " + this.f3441d);
                }
                c0350p.f3478c = 3;
            } else if (C0334b.m5124a(this.f3441d)) {
                C0360g c0360g;
                C0360g a = m5121a((Context) this.f3439b.get(), this.f3441d.m5144d());
                if (a == null) {
                    c0360g = new C0360g();
                    c0360g.f3537b = this.f3441d.m5144d();
                    c0360g.f3536a = this.f3441d.f3461a;
                    c0360g.f3538c = this.f3441d.f3463c;
                    c0360g.f3539d = this.f3441d.f3464d;
                    c0360g.f3542g = 0;
                    c0360g.f3543h = m5120a(c0360g.f3537b);
                    c0360g.f3544i = f3435e;
                    c0360g.f3541f = c0360g.f3537b.substring(c0360g.f3537b.lastIndexOf(47) + 1);
                    c0360g.f3540e = this.f3441d.f3462b;
                    try {
                        PushDatabase.insertFileDownloadingInfo((Context) this.f3439b.get(), c0360g);
                    } catch (Exception e) {
                        C0385a.m5311b("HttpTask", "HttpTask insertFileDownloadingInfo");
                    }
                } else {
                    a.f3543h = m5120a(a.f3537b);
                    c0360g = a;
                }
                if (c0360g.f3544i == f3436f) {
                    c0350p.f3478c = 0;
                    c0350p.f3479d = this.f3441d;
                    c0350p.f3480e = c0360g.f3540e + "/" + c0360g.f3541f;
                    return c0350p;
                }
                this.f3442g.m5136b("Request url: " + this.f3441d.m5144d() + " success");
                if (this.f3438a != null) {
                    this.f3438a.m4194a(this);
                }
                C0333a c0333a = new C0333a();
                try {
                    HttpResponse a2 = c0333a.m5118a(this.f3441d.m5143c(), this.f3441d.m5144d(), this.f3441d.m5138a(), this.f3441d.f3466f);
                    if (a2.getStatusLine().getStatusCode() == 200) {
                        InputStream content = a2.getEntity().getContent();
                        File file = new File(c0360g.f3540e);
                        if (!file.exists()) {
                            file.mkdirs();
                        }
                        File file2 = new File(c0360g.f3540e + "/" + c0360g.f3541f);
                        if (!file2.exists()) {
                            file2.createNewFile();
                        }
                        RandomAccessFile randomAccessFile = new RandomAccessFile(file2, "rw");
                        randomAccessFile.seek((long) c0360g.f3542g);
                        byte[] bArr = new byte[102400];
                        int i = c0360g.f3542g;
                        C0345m c0345m = new C0345m();
                        c0345m.f3458b = (long) c0360g.f3543h;
                        c0345m.f3457a = (long) i;
                        m5129a(c0345m);
                        do {
                            if (this.f3443i) {
                                break;
                            }
                            int read = content.read(bArr);
                            if (read == -1) {
                                break;
                            }
                            try {
                                randomAccessFile.write(bArr, 0, read);
                                i += read;
                                c0345m = new C0345m();
                                c0345m.f3458b = (long) c0360g.f3543h;
                                c0345m.f3457a = (long) i;
                                m5129a(c0345m);
                            } catch (IOException e2) {
                                C0385a.m5313d("HttpTask", e2.getMessage());
                                if (content != null) {
                                    content.close();
                                }
                                randomAccessFile.close();
                            } catch (Throwable th) {
                                if (content != null) {
                                    content.close();
                                }
                                randomAccessFile.close();
                            }
                        } while (i != c0360g.f3543h);
                        if (content != null) {
                            content.close();
                        }
                        randomAccessFile.close();
                        if (this.f3443i) {
                            PushDatabase.deleteFileDownloadingInfo((Context) this.f3439b.get(), c0360g.f3537b);
                            c0350p.f3478c = 2;
                            file2.delete();
                        } else {
                            c0360g.f3542g = i;
                            c0360g.f3544i = f3436f;
                            PushDatabase.updateFileDownloadingInfo((Context) this.f3439b.get(), c0360g.f3537b, c0360g);
                            c0350p.f3478c = 0;
                            c0350p.f3480e = file2.getAbsolutePath();
                        }
                    } else {
                        c0350p.f3478c = 1;
                        c0350p.f3477b = a2.getStatusLine().getStatusCode();
                    }
                    if (c0333a != null) {
                        c0333a.m5119a();
                    }
                } catch (Exception e3) {
                    if (C0192a.m4341b()) {
                        C0385a.m5311b("HttpTask", "download file Exception:" + e3.getMessage());
                    }
                    c0350p.f3478c = -1;
                    if (c0333a != null) {
                        c0333a.m5119a();
                    }
                } catch (Throwable th2) {
                    if (c0333a != null) {
                        c0333a.m5119a();
                    }
                }
            } else {
                this.f3442g.m5137c("Request url: " + this.f3441d.m5144d() + " failed, already in queue");
                this.f3438a = null;
                this.f3441d = null;
                return null;
            }
        }
        return c0350p;
    }

    private static synchronized boolean m5126b(C0347n c0347n) {
        boolean remove;
        synchronized (C0334b.class) {
            remove = f3437h.remove(c0347n);
        }
        return remove;
    }

    public int m5127a(C0334b c0334b) {
        if (c0334b == null) {
            return -1;
        }
        long a = c0334b.m5128a();
        return this.f3440c <= a ? this.f3440c < a ? 1 : 0 : -1;
    }

    public long m5128a() {
        return this.f3440c;
    }

    protected void m5129a(C0345m c0345m) {
        if (this.f3438a != null) {
            this.f3438a.m4195a(this, c0345m);
        }
    }

    public /* synthetic */ int compareTo(Object obj) {
        return m5127a((C0334b) obj);
    }

    public void run() {
        m5122a(m5125b());
    }
}
