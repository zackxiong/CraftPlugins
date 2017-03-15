package com.tencent.p095a.p096a.p097a.p098a;

import android.content.Context;
import android.os.Environment;
import android.util.Log;
import com.umeng.update.UpdateConfig;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;

/* renamed from: com.tencent.a.a.a.a.b */
final class C0656b extends C0655f {
    C0656b(Context context) {
        super(context);
    }

    protected final void m6838a(String str) {
        synchronized (this) {
            Log.i("MID", "write mid to InternalStorage");
            C0654a.m6831a(Environment.getExternalStorageDirectory() + "/" + C0661h.m6861c("6X8Y4XdM2Vhvn0I="));
            try {
                BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(new File(Environment.getExternalStorageDirectory(), C0661h.m6861c("6X8Y4XdM2Vhvn0KfzcEatGnWaNU="))));
                bufferedWriter.write(C0661h.m6861c("4kU71lN96TJUomD1vOU9lgj9Tw==") + "," + str);
                bufferedWriter.write("\n");
                bufferedWriter.close();
            } catch (Throwable e) {
                Log.w("MID", e);
            }
        }
    }

    protected final boolean m6839a() {
        return C0661h.m6857a(this.a, UpdateConfig.f5445f) && Environment.getExternalStorageState().equals("mounted");
    }

    protected final String m6840b() {
        String str;
        synchronized (this) {
            Log.i("MID", "read mid from InternalStorage");
            try {
                for (String str2 : C0654a.m6832a(new File(Environment.getExternalStorageDirectory(), C0661h.m6861c("6X8Y4XdM2Vhvn0KfzcEatGnWaNU=")))) {
                    String[] split = str2.split(",");
                    if (split.length == 2 && split[0].equals(C0661h.m6861c("4kU71lN96TJUomD1vOU9lgj9Tw=="))) {
                        Log.i("MID", "read mid from InternalStorage:" + split[1]);
                        str2 = split[1];
                        break;
                    }
                }
                str2 = null;
            } catch (Throwable e) {
                Log.w("MID", e);
                str2 = null;
            }
        }
        return str2;
    }
}