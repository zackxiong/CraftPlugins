package org.acra;

import android.app.Application;
import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.content.pm.PackageManager.NameNotFoundException;
import android.preference.PreferenceManager;
import org.acra.p164d.ProGuard;

/* compiled from: ProGuard */
public class ACRA {
    private static /* synthetic */ int[] $SWITCH_TABLE$org$acra$ReportingInteractionMode = null;
    public static final boolean DEV_LOGGING = false;
    public static final String LOG_TAG;
    public static final String PREF_ALWAYS_ACCEPT = "acra.alwaysaccept";
    public static final String PREF_DISABLE_ACRA = "acra.disable";
    public static final String PREF_ENABLE_ACRA = "acra.enable";
    public static final String PREF_ENABLE_DEVICE_ID = "acra.deviceid.enable";
    public static final String PREF_ENABLE_SYSTEM_LOGS = "acra.syslog.enable";
    public static final String PREF_LAST_VERSION_NR = "acra.lastVersionNr";
    public static final String PREF_USER_EMAIL_ADDRESS = "acra.user.email";
    private static ProGuard configProxy;
    private static ErrorReporter errorReporterSingleton;
    public static ProGuard log;
    private static Application mApplication;
    private static OnSharedPreferenceChangeListener mPrefListener;
    private static org.acra.p158a.ProGuard mReportsCrashes;

    static /* synthetic */ int[] $SWITCH_TABLE$org$acra$ReportingInteractionMode() {
        int[] iArr = $SWITCH_TABLE$org$acra$ReportingInteractionMode;
        if (iArr == null) {
            iArr = new int[ReportingInteractionMode.values().length];
            try {
                iArr[ReportingInteractionMode.DIALOG.ordinal()] = 4;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[ReportingInteractionMode.NOTIFICATION.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[ReportingInteractionMode.SILENT.ordinal()] = 1;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[ReportingInteractionMode.TOAST.ordinal()] = 3;
            } catch (NoSuchFieldError e4) {
            }
            $SWITCH_TABLE$org$acra$ReportingInteractionMode = iArr;
        }
        return iArr;
    }

    static {
        LOG_TAG = ACRA.class.getSimpleName();
        log = new ProGuard();
    }

    public static void init(Application application) {
        if (mApplication != null) {
            log.m12148b(LOG_TAG, "ACRA#init called more than once. Won't do anything more.");
            return;
        }
        mApplication = application;
        mReportsCrashes = (org.acra.p158a.ProGuard) mApplication.getClass().getAnnotation(org.acra.p158a.ProGuard.class);
        if (mReportsCrashes == null) {
            log.m12150c(LOG_TAG, "ACRA#init called but no ReportsCrashes annotation on Application " + mApplication.getPackageName());
            return;
        }
        SharedPreferences aCRASharedPreferences = getACRASharedPreferences();
        try {
            checkCrashResources();
            log.m12146a(LOG_TAG, "ACRA is enabled for " + mApplication.getPackageName() + ", intializing...");
            ErrorReporter errorReporter = new ErrorReporter(mApplication, aCRASharedPreferences, shouldDisableACRA(aCRASharedPreferences) ? DEV_LOGGING : true);
            errorReporter.m11998d();
            errorReporterSingleton = errorReporter;
        } catch (Throwable e) {
            log.m12147a(LOG_TAG, "Error : ", e);
        }
        mPrefListener = new ProGuard();
        aCRASharedPreferences.registerOnSharedPreferenceChangeListener(mPrefListener);
    }

    public static ErrorReporter getErrorReporter() {
        if (errorReporterSingleton != null) {
            return errorReporterSingleton;
        }
        throw new IllegalStateException("Cannot access ErrorReporter before ACRA#init");
    }

    private static boolean shouldDisableACRA(SharedPreferences sharedPreferences) {
        boolean z = true;
        boolean z2 = DEV_LOGGING;
        try {
            boolean z3 = sharedPreferences.getBoolean(PREF_ENABLE_ACRA, true);
            String str = PREF_DISABLE_ACRA;
            if (z3) {
                z = DEV_LOGGING;
            }
            z2 = sharedPreferences.getBoolean(str, z);
        } catch (Exception e) {
        }
        return z2;
    }

    static void checkCrashResources() {
        org.acra.p158a.ProGuard config = getConfig();
        switch ($SWITCH_TABLE$org$acra$ReportingInteractionMode()[config.m12031r().ordinal()]) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                if (config.m11999A() == 0 || config.m12000B() == 0 || config.m12039z() == 0 || config.m12036w() == 0) {
                    throw new ProGuard("NOTIFICATION mode: you have to define at least the resNotifTickerText, resNotifTitle, resNotifText, resDialogText parameters in your application @ReportsCrashes() annotation.");
                }
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                if (config.m12001C() == 0) {
                    throw new ProGuard("TOAST mode: you have to define the resToastText parameter in your application @ReportsCrashes() annotation.");
                }
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_theme /*4*/:
                if (config.m12036w() == 0) {
                    throw new ProGuard("DIALOG mode: you have to define at least the resDialogText parameters in your application @ReportsCrashes() annotation.");
                }
            default:
        }
    }

    public static SharedPreferences getACRASharedPreferences() {
        org.acra.p158a.ProGuard config = getConfig();
        if ("".equals(config.m12003E())) {
            return PreferenceManager.getDefaultSharedPreferences(mApplication);
        }
        return mApplication.getSharedPreferences(config.m12003E(), config.m12002D());
    }

    public static ProGuard getConfig() {
        if (configProxy == null) {
            if (mApplication == null) {
                log.m12148b(LOG_TAG, "Calling ACRA.getConfig() before ACRA.init() gives you an empty configuration instance. You might prefer calling ACRA.getNewDefaultConfig(Application) to get an instance with default values taken from a @ReportsCrashes annotation.");
            }
            configProxy = getNewDefaultConfig(mApplication);
        }
        return configProxy;
    }

    public static void setConfig(ProGuard proGuard) {
        configProxy = proGuard;
    }

    public static ProGuard getNewDefaultConfig(Application application) {
        if (application != null) {
            return new ProGuard((org.acra.p158a.ProGuard) application.getClass().getAnnotation(org.acra.p158a.ProGuard.class));
        }
        return new ProGuard(null);
    }

    static boolean isDebuggable() {
        try {
            if ((mApplication.getPackageManager().getApplicationInfo(mApplication.getPackageName(), 0).flags & 2) > 0) {
                return true;
            }
            return DEV_LOGGING;
        } catch (NameNotFoundException e) {
            return DEV_LOGGING;
        }
    }

    static Application getApplication() {
        return mApplication;
    }

    public static void setLog(ProGuard proGuard) {
        log = proGuard;
    }
}
