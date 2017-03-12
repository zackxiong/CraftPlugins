package com.baidu.location;

import android.location.Location;
import com.baidu.location.aj.C0502a;

public class an {
    private static long f4018a;
    private static C0502a f4019b;
    private static Location f4020c;

    public static Location m5892a() {
        return f4020c;
    }

    public static void m5893a(long j) {
        f4018a = j;
    }

    public static void m5894a(Location location) {
        f4020c = location;
    }

    public static void m5895a(C0502a c0502a) {
        f4019b = c0502a;
    }

    public static long m5896do() {
        return f4018a;
    }

    public static C0502a m5897if() {
        return f4019b;
    }
}
