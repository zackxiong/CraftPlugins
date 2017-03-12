package com.baidu.mapapi;

import android.app.Application;
import android.content.Context;
import com.baidu.mapapi.utils.C0587b;
import java.io.File;

public class SDKInitializer {
    public static final String SDK_BROADCAST_ACTION_STRING_NETWORK_ERROR = "network error";
    public static final String SDK_BROADTCAST_ACTION_STRING_PERMISSION_CHECK_ERROR = "permission check error";
    public static final String SDK_BROADTCAST_INTENT_EXTRA_INFO_KEY_ERROR_CODE = "error_code";
    private static boolean f4190a;

    private SDKInitializer() {
    }

    public static void initialize(Context context) {
        initialize(null, context);
    }

    public static void initialize(String str, Context context) {
        if (!f4190a) {
            if (context == null) {
                throw new IllegalArgumentException("context can not be null");
            } else if (context instanceof Application) {
                C0556a.m6153a().m6156a(context);
                C0556a.m6153a().m6160c();
                if (!(str == null || str.equals(""))) {
                    try {
                        File file = new File(str + "/test.0");
                        if (file.exists()) {
                            file.delete();
                        }
                        file.createNewFile();
                        if (file.exists()) {
                            file.delete();
                        }
                        C0587b.m6380a(str);
                    } catch (Exception e) {
                        e.printStackTrace();
                        throw new IllegalArgumentException("provided sdcard path can not used.");
                    }
                }
                f4190a = true;
            } else {
                throw new RuntimeException("context must be an Application Context");
            }
        }
    }
}
