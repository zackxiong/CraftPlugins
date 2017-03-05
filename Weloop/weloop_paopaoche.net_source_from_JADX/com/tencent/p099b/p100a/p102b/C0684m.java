package com.tencent.p099b.p100a.p102b;

import com.baidu.location.LocationClientOption;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: com.tencent.b.a.b.m */
final class C0684m {
    static int m7003a() {
        try {
            return new File("/sys/devices/system/cpu/").listFiles(new C0685n()).length;
        } catch (Exception e) {
            e.printStackTrace();
            return 1;
        }
    }

    static int m7004b() {
        int i = 0;
        try {
            String str = "";
            InputStream inputStream = new ProcessBuilder(new String[]{"/system/bin/cat", "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"}).start().getInputStream();
            byte[] bArr = new byte[24];
            while (inputStream.read(bArr) != -1) {
                str = str + new String(bArr);
            }
            inputStream.close();
            str = str.trim();
            if (str.length() > 0) {
                i = Integer.valueOf(str).intValue();
            }
        } catch (Throwable e) {
            C0683l.f5211k.m6938b(e);
        }
        return i * LocationClientOption.MIN_SCAN_SPAN;
    }

    static int m7005c() {
        int i = 0;
        try {
            String str = "";
            InputStream inputStream = new ProcessBuilder(new String[]{"/system/bin/cat", "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq"}).start().getInputStream();
            byte[] bArr = new byte[24];
            while (inputStream.read(bArr) != -1) {
                str = str + new String(bArr);
            }
            inputStream.close();
            str = str.trim();
            if (str.length() > 0) {
                i = Integer.valueOf(str).intValue();
            }
        } catch (Throwable th) {
            C0683l.f5211k.m6938b(th);
        }
        return i * LocationClientOption.MIN_SCAN_SPAN;
    }

    static String m7006d() {
        int i = 2;
        String[] strArr = new String[]{"", ""};
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/cpuinfo"), 8192);
            String[] split = bufferedReader.readLine().split("\\s+");
            while (i < split.length) {
                strArr[0] = strArr[0] + split[i] + " ";
                i++;
            }
            bufferedReader.close();
        } catch (IOException e) {
        }
        return strArr[0];
    }
}
