.class public Lorg/acra/ACRA;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static synthetic $SWITCH_TABLE$org$acra$ReportingInteractionMode:[I = null

.field public static final DEV_LOGGING:Z = false

.field public static final LOG_TAG:Ljava/lang/String;

.field public static final PREF_ALWAYS_ACCEPT:Ljava/lang/String; = "acra.alwaysaccept"

.field public static final PREF_DISABLE_ACRA:Ljava/lang/String; = "acra.disable"

.field public static final PREF_ENABLE_ACRA:Ljava/lang/String; = "acra.enable"

.field public static final PREF_ENABLE_DEVICE_ID:Ljava/lang/String; = "acra.deviceid.enable"

.field public static final PREF_ENABLE_SYSTEM_LOGS:Ljava/lang/String; = "acra.syslog.enable"

.field public static final PREF_LAST_VERSION_NR:Ljava/lang/String; = "acra.lastVersionNr"

.field public static final PREF_USER_EMAIL_ADDRESS:Ljava/lang/String; = "acra.user.email"

.field private static configProxy:Lorg/acra/b;

.field private static errorReporterSingleton:Lorg/acra/ErrorReporter;

.field public static log:Lorg/acra/d/a;

.field private static mApplication:Landroid/app/Application;

.field private static mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private static mReportsCrashes:Lorg/acra/a/a;


# direct methods
.method static synthetic $SWITCH_TABLE$org$acra$ReportingInteractionMode()[I
    .locals 3

    .prologue
    .line 40
    sget-object v0, Lorg/acra/ACRA;->$SWITCH_TABLE$org$acra$ReportingInteractionMode:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/acra/ReportingInteractionMode;->values()[Lorg/acra/ReportingInteractionMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/acra/ReportingInteractionMode;->DIALOG:Lorg/acra/ReportingInteractionMode;

    invoke-virtual {v1}, Lorg/acra/ReportingInteractionMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;

    invoke-virtual {v1}, Lorg/acra/ReportingInteractionMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    invoke-virtual {v1}, Lorg/acra/ReportingInteractionMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    invoke-virtual {v1}, Lorg/acra/ReportingInteractionMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lorg/acra/ACRA;->$SWITCH_TABLE$org$acra$ReportingInteractionMode:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lorg/acra/ACRA;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    .line 46
    new-instance v0, Lorg/acra/d/b;

    invoke-direct {v0}, Lorg/acra/d/b;-><init>()V

    sput-object v0, Lorg/acra/ACRA;->log:Lorg/acra/d/a;

    .line 296
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/content/SharedPreferences;)Z
    .locals 1

    .prologue
    .line 196
    invoke-static {p0}, Lorg/acra/ACRA;->shouldDisableACRA(Landroid/content/SharedPreferences;)Z

    move-result v0

    return v0
.end method

.method static checkCrashResources()V
    .locals 3

    .prologue
    .line 214
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/b;

    move-result-object v0

    .line 215
    invoke-static {}, Lorg/acra/ACRA;->$SWITCH_TABLE$org$acra$ReportingInteractionMode()[I

    move-result-object v1

    invoke-interface {v0}, Lorg/acra/a/a;->r()Lorg/acra/ReportingInteractionMode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/acra/ReportingInteractionMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 238
    :cond_0
    return-void

    .line 217
    :pswitch_0
    invoke-interface {v0}, Lorg/acra/a/a;->C()I

    move-result v0

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Lorg/acra/c;

    .line 219
    const-string v1, "TOAST mode: you have to define the resToastText parameter in your application @ReportsCrashes() annotation."

    .line 218
    invoke-direct {v0, v1}, Lorg/acra/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :pswitch_1
    invoke-interface {v0}, Lorg/acra/a/a;->A()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/acra/a/a;->B()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/acra/a/a;->z()I

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    invoke-interface {v0}, Lorg/acra/a/a;->w()I

    move-result v0

    if-nez v0, :cond_0

    .line 225
    :cond_1
    new-instance v0, Lorg/acra/c;

    .line 226
    const-string v1, "NOTIFICATION mode: you have to define at least the resNotifTickerText, resNotifTitle, resNotifText, resDialogText parameters in your application @ReportsCrashes() annotation."

    .line 225
    invoke-direct {v0, v1}, Lorg/acra/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :pswitch_2
    invoke-interface {v0}, Lorg/acra/a/a;->w()I

    move-result v0

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Lorg/acra/c;

    .line 232
    const-string v1, "DIALOG mode: you have to define at least the resDialogText parameters in your application @ReportsCrashes() annotation."

    .line 231
    invoke-direct {v0, v1}, Lorg/acra/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getACRASharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 250
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/b;

    move-result-object v0

    .line 251
    const-string v1, ""

    invoke-interface {v0}, Lorg/acra/a/a;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 252
    sget-object v1, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-interface {v0}, Lorg/acra/a/a;->E()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lorg/acra/a/a;->D()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 254
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method static getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 313
    sget-object v0, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public static getConfig()Lorg/acra/b;
    .locals 3

    .prologue
    .line 264
    sget-object v0, Lorg/acra/ACRA;->configProxy:Lorg/acra/b;

    if-nez v0, :cond_1

    .line 265
    sget-object v0, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 266
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/d/a;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    .line 267
    const-string v2, "Calling ACRA.getConfig() before ACRA.init() gives you an empty configuration instance. You might prefer calling ACRA.getNewDefaultConfig(Application) to get an instance with default values taken from a @ReportsCrashes annotation."

    .line 266
    invoke-interface {v0, v1, v2}, Lorg/acra/d/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    sget-object v0, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lorg/acra/ACRA;->getNewDefaultConfig(Landroid/app/Application;)Lorg/acra/b;

    move-result-object v0

    sput-object v0, Lorg/acra/ACRA;->configProxy:Lorg/acra/b;

    .line 271
    :cond_1
    sget-object v0, Lorg/acra/ACRA;->configProxy:Lorg/acra/b;

    return-object v0
.end method

.method public static getErrorReporter()Lorg/acra/ErrorReporter;
    .locals 2

    .prologue
    .line 178
    sget-object v0, Lorg/acra/ACRA;->errorReporterSingleton:Lorg/acra/ErrorReporter;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access ErrorReporter before ACRA#init"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    sget-object v0, Lorg/acra/ACRA;->errorReporterSingleton:Lorg/acra/ErrorReporter;

    return-object v0
.end method

.method public static getNewDefaultConfig(Landroid/app/Application;)Lorg/acra/b;
    .locals 3

    .prologue
    .line 289
    if-eqz p0, :cond_0

    .line 290
    new-instance v1, Lorg/acra/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lorg/acra/a/a;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/acra/a/a;

    invoke-direct {v1, v0}, Lorg/acra/b;-><init>(Lorg/acra/a/a;)V

    move-object v0, v1

    .line 292
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/acra/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/acra/b;-><init>(Lorg/acra/a/a;)V

    goto :goto_0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 5

    .prologue
    .line 118
    sget-object v0, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/d/a;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "ACRA#init called more than once. Won\'t do anything more."

    invoke-interface {v0, v1, v2}, Lorg/acra/d/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :goto_0
    return-void

    .line 123
    :cond_0
    sput-object p0, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    .line 124
    sget-object v0, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/acra/a/a;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/acra/a/a;

    sput-object v0, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    .line 125
    sget-object v0, Lorg/acra/ACRA;->mReportsCrashes:Lorg/acra/a/a;

    if-nez v0, :cond_1

    .line 126
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/d/a;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ACRA#init called but no ReportsCrashes annotation on Application "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-interface {v0, v1, v2}, Lorg/acra/d/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    :cond_1
    invoke-static {}, Lorg/acra/ACRA;->getACRASharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 134
    :try_start_0
    invoke-static {}, Lorg/acra/ACRA;->checkCrashResources()V

    .line 136
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/d/a;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ACRA is enabled for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", intializing..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/acra/d/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-static {v1}, Lorg/acra/ACRA;->shouldDisableACRA(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 140
    :goto_1
    new-instance v2, Lorg/acra/ErrorReporter;

    sget-object v3, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-direct {v2, v3, v1, v0}, Lorg/acra/ErrorReporter;-><init>(Landroid/app/Application;Landroid/content/SharedPreferences;Z)V

    .line 143
    invoke-virtual {v2}, Lorg/acra/ErrorReporter;->d()V

    .line 145
    sput-object v2, Lorg/acra/ACRA;->errorReporterSingleton:Lorg/acra/ErrorReporter;
    :try_end_0
    .catch Lorg/acra/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_2
    new-instance v0, Lorg/acra/a;

    invoke-direct {v0}, Lorg/acra/a;-><init>()V

    sput-object v0, Lorg/acra/ACRA;->mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 168
    sget-object v0, Lorg/acra/ACRA;->mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_0

    .line 139
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 147
    :catch_0
    move-exception v0

    .line 148
    sget-object v2, Lorg/acra/ACRA;->log:Lorg/acra/d/a;

    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Error : "

    invoke-interface {v2, v3, v4, v0}, Lorg/acra/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method static isDebuggable()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 304
    sget-object v1, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 306
    :try_start_0
    sget-object v2, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 308
    :cond_0
    :goto_0
    return v0

    .line 307
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setConfig(Lorg/acra/b;)V
    .locals 0

    .prologue
    .line 281
    sput-object p0, Lorg/acra/ACRA;->configProxy:Lorg/acra/b;

    .line 282
    return-void
.end method

.method public static setLog(Lorg/acra/d/a;)V
    .locals 0

    .prologue
    .line 317
    sput-object p0, Lorg/acra/ACRA;->log:Lorg/acra/d/a;

    .line 318
    return-void
.end method

.method private static shouldDisableACRA(Landroid/content/SharedPreferences;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 197
    .line 199
    :try_start_0
    const-string v2, "acra.enable"

    const/4 v3, 0x1

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 200
    const-string v3, "acra.disable"

    if-eqz v2, :cond_0

    move v1, v0

    :cond_0
    invoke-interface {p0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 204
    :goto_0
    return v0

    .line 201
    :catch_0
    move-exception v1

    goto :goto_0
.end method
