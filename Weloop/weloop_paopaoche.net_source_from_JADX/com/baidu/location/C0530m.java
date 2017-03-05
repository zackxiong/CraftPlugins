package com.baidu.location;

import android.os.Environment;
import android.os.Process;
import java.io.File;
import java.io.PrintWriter;
import java.io.RandomAccessFile;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.Thread.UncaughtExceptionHandler;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;

/* renamed from: com.baidu.location.m */
public class C0530m implements C0452e, UncaughtExceptionHandler {
    private static C0530m f4089a;

    static {
        f4089a = null;
    }

    private C0530m() {
    }

    private String m6041a(Throwable th) {
        Writer stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        th.printStackTrace(printWriter);
        printWriter.close();
        return stringWriter.toString();
    }

    public static C0530m bs() {
        if (f4089a == null) {
            f4089a = new C0530m();
        }
        return f4089a;
    }

    boolean m6042a(String str, String str2) {
        if (!C0453D.cq()) {
            return false;
        }
        try {
            HttpUriRequest httpPost = new HttpPost(C0465K.aV);
            List arrayList = new ArrayList();
            arrayList.add(new BasicNameValuePair("e0", str));
            arrayList.add(new BasicNameValuePair("e1", str2));
            httpPost.setEntity(new UrlEncodedFormEntity(arrayList, "utf-8"));
            HttpClient defaultHttpClient = new DefaultHttpClient();
            defaultHttpClient.getParams().setParameter("http.connection.timeout", Integer.valueOf(C0452e.f3818M));
            defaultHttpClient.getParams().setParameter("http.socket.timeout", Integer.valueOf(C0452e.f3818M));
            return defaultHttpClient.execute(httpPost).getStatusLine().getStatusCode() == 200;
        } catch (Exception e) {
            return false;
        }
    }

    public void bt() {
        String str = null;
        try {
            File file = new File((Environment.getExternalStorageDirectory().getPath() + "/traces") + "/error_fs.dat");
            if (file.exists()) {
                RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
                randomAccessFile.seek(280);
                if (1326 == randomAccessFile.readInt()) {
                    String str2;
                    byte[] bArr;
                    randomAccessFile.seek(308);
                    int readInt = randomAccessFile.readInt();
                    if (readInt <= 0 || readInt >= 2048) {
                        str2 = null;
                    } else {
                        bArr = new byte[readInt];
                        randomAccessFile.read(bArr, 0, readInt);
                        str2 = new String(bArr, 0, readInt);
                    }
                    randomAccessFile.seek(600);
                    readInt = randomAccessFile.readInt();
                    if (readInt > 0 && readInt < 2048) {
                        bArr = new byte[readInt];
                        randomAccessFile.read(bArr, 0, readInt);
                        str = new String(bArr, 0, readInt);
                    }
                    if (m6042a(str2, str)) {
                        randomAccessFile.seek(280);
                        randomAccessFile.writeInt(12346);
                    }
                }
                randomAccessFile.close();
            }
        } catch (Exception e) {
        }
    }

    public void m6043if(File file, String str, String str2) {
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            randomAccessFile.seek(280);
            randomAccessFile.writeInt(12346);
            randomAccessFile.seek(300);
            randomAccessFile.writeLong(System.currentTimeMillis());
            byte[] bytes = str.getBytes();
            randomAccessFile.writeInt(bytes.length);
            randomAccessFile.write(bytes, 0, bytes.length);
            randomAccessFile.seek(600);
            bytes = str2.getBytes();
            randomAccessFile.writeInt(bytes.length);
            randomAccessFile.write(bytes, 0, bytes.length);
            if (!m6042a(str, str2)) {
                randomAccessFile.seek(280);
                randomAccessFile.writeInt(1326);
            }
            randomAccessFile.close();
        } catch (Exception e) {
        }
    }

    public void uncaughtException(Thread thread, Throwable th) {
        File file;
        String a;
        String k;
        Object obj;
        String str;
        File file2;
        File file3 = null;
        if (System.currentTimeMillis() - C0532n.bu() < 10000 && 5.21f > C0513f.getFrameVersion()) {
            if (System.currentTimeMillis() - C0474P.m5704if().m5705a() < 40000) {
                file = new File(C0465K.m5643long() + File.separator + C0513f.getJarFileName());
                if (file.exists()) {
                    file.delete();
                }
            } else {
                C0474P.m5704if().m5710if(System.currentTimeMillis());
            }
        }
        if (C0526k.gl) {
            RandomAccessFile randomAccessFile;
            try {
                a = m6041a(th);
                try {
                    String str2 = C0518i.cY().m5972char(false) + C0479T.m5734q().m5748p();
                    k = str2 != null ? Jni.m5622k(str2) : null;
                } catch (Exception e) {
                    Object obj2 = a;
                    obj = file;
                    k = null;
                    str = Environment.getExternalStorageDirectory().getPath() + "/traces";
                    file = new File(str + "/error_fs.dat");
                    if (file.exists()) {
                        randomAccessFile = new RandomAccessFile(file, "rw");
                        randomAccessFile.seek(300);
                        if (System.currentTimeMillis() - randomAccessFile.readLong() > 604800000) {
                            m6043if(file, k, a);
                        }
                        randomAccessFile.close();
                    } else {
                        file2 = new File(str);
                        if (!file2.exists()) {
                            file2.mkdirs();
                        }
                        if (file.createNewFile()) {
                            file3 = file;
                        }
                        m6043if(file3, k, a);
                    }
                    Process.killProcess(Process.myPid());
                    return;
                }
            } catch (Exception e2) {
                file = null;
                obj = file;
                k = null;
                str = Environment.getExternalStorageDirectory().getPath() + "/traces";
                file = new File(str + "/error_fs.dat");
                if (file.exists()) {
                    randomAccessFile = new RandomAccessFile(file, "rw");
                    randomAccessFile.seek(300);
                    if (System.currentTimeMillis() - randomAccessFile.readLong() > 604800000) {
                        m6043if(file, k, a);
                    }
                    randomAccessFile.close();
                } else {
                    file2 = new File(str);
                    if (file2.exists()) {
                        file2.mkdirs();
                    }
                    if (file.createNewFile()) {
                        file3 = file;
                    }
                    m6043if(file3, k, a);
                }
                Process.killProcess(Process.myPid());
                return;
            }
            try {
                str = Environment.getExternalStorageDirectory().getPath() + "/traces";
                file = new File(str + "/error_fs.dat");
                if (file.exists()) {
                    file2 = new File(str);
                    if (file2.exists()) {
                        file2.mkdirs();
                    }
                    if (file.createNewFile()) {
                        file3 = file;
                    }
                    m6043if(file3, k, a);
                } else {
                    randomAccessFile = new RandomAccessFile(file, "rw");
                    randomAccessFile.seek(300);
                    if (System.currentTimeMillis() - randomAccessFile.readLong() > 604800000) {
                        m6043if(file, k, a);
                    }
                    randomAccessFile.close();
                }
            } catch (Exception e3) {
            }
            Process.killProcess(Process.myPid());
            return;
        }
        Process.killProcess(Process.myPid());
    }
}
