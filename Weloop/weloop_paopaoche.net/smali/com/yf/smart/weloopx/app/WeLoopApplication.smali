.class public Lcom/yf/smart/weloopx/app/WeLoopApplication;
.super Landroid/app/Application;
.source "ProGuard"


# annotations
.annotation runtime Lorg/acra/a/a;
    C = 0x7f0700a0
    j = ""
    p = "weizongshang@yftech.com;yuzaixin@yftech.com;yuyonghong@yftech.com;huangxiaojie@yftech.com;503319102@qq.com"
    r = .enum Lorg/acra/ReportingInteractionMode;->DIALOG:Lorg/acra/ReportingInteractionMode;
    s = 0x7f07009c
    u = 0x108009b
    v = 0x7f07009d
    w = 0x7f07009e
    x = 0x7f07009f
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 70
    :try_start_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/app/WeLoopApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/app/WeLoopApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 72
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 73
    const-string v1, "wechat_app_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/yf/smart/weloopx/app/WeLoopApplication;->a:Ljava/lang/String;

    .line 74
    const-string v1, "wechat_app_secret"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yf/smart/weloopx/app/WeLoopApplication;->b:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 80
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    const-string v1, "app"

    invoke-static {v1, v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 77
    :catch_1
    move-exception v0

    .line 78
    const-string v1, "app"

    invoke-static {v1, v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/yf/smart/weloopx/app/WeLoopApplication;->e()V

    .line 84
    invoke-direct {p0}, Lcom/yf/smart/weloopx/app/WeLoopApplication;->d()V

    .line 85
    invoke-direct {p0}, Lcom/yf/smart/weloopx/app/WeLoopApplication;->g()V

    .line 86
    invoke-direct {p0}, Lcom/yf/smart/weloopx/app/WeLoopApplication;->f()V

    .line 87
    invoke-direct {p0}, Lcom/yf/smart/weloopx/app/WeLoopApplication;->h()V

    .line 88
    invoke-static {}, Lcom/yf/smart/weloopx/android/a/a;->a()Lcom/yf/smart/weloopx/android/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/a/a;->b()V

    .line 89
    return-void
.end method

.method private c()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 92
    const-string v0, ""

    .line 93
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 94
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/app/WeLoopApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 95
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 97
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v2, :cond_0

    .line 99
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 100
    const-string v2, "WeLoopApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentProcName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 104
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 101
    goto :goto_0

    :cond_2
    move v0, v1

    .line 104
    goto :goto_0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/app/WeLoopApplication;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v2, 0xa00000

    invoke-static {v0, v2, v3}, Lcom/yf/smart/weloopx/f/n;->a(Ljava/lang/String;J)V

    .line 109
    invoke-static {p0}, Lcom/yf/smart/weloopx/f/a;->a(Landroid/content/Context;)V

    .line 110
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 113
    invoke-static {p0}, Lorg/acra/ACRA;->init(Landroid/app/Application;)V

    .line 114
    invoke-static {p0}, Lcom/yf/gattlib/p/a;->b(Landroid/content/Context;)I

    move-result v0

    .line 115
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    :goto_0
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(I)V

    .line 116
    new-instance v0, Lcom/yf/smart/weloopx/e/a;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/e/a;-><init>()V

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Lcom/yf/gattlib/p/o;)V

    .line 117
    const-string v0, "weloopx.txt"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/yf/gattlib/p/c;->c()V

    .line 119
    return-void

    .line 115
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 122
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    new-instance v1, Lcom/yf/smart/weloopx/a/b;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/a/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/a/b;->a(Lcom/yf/gattlib/c/b;)V

    .line 123
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    new-instance v1, Lcom/yf/smart/weloopx/c/c;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/c/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/f/b;->a(Lcom/yf/gattlib/f/a;)V

    .line 124
    invoke-static {}, Lcom/yf/smart/weloopx/c/n;->a()V

    .line 125
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 128
    new-instance v0, Luk/co/chrisjenx/calligraphy/a$a;

    invoke-direct {v0}, Luk/co/chrisjenx/calligraphy/a$a;-><init>()V

    const-string v1, "fonts/diy.otf"

    invoke-virtual {v0, v1}, Luk/co/chrisjenx/calligraphy/a$a;->a(Ljava/lang/String;)Luk/co/chrisjenx/calligraphy/a$a;

    move-result-object v0

    const v1, 0x7f010001

    invoke-virtual {v0, v1}, Luk/co/chrisjenx/calligraphy/a$a;->a(I)Luk/co/chrisjenx/calligraphy/a$a;

    move-result-object v0

    invoke-virtual {v0}, Luk/co/chrisjenx/calligraphy/a$a;->a()Luk/co/chrisjenx/calligraphy/a;

    move-result-object v0

    invoke-static {v0}, Luk/co/chrisjenx/calligraphy/a;->a(Luk/co/chrisjenx/calligraphy/a;)V

    .line 132
    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 135
    new-instance v0, Lcom/yf/smart/weloopx/b/a/f;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/b/a/f;-><init>(Landroid/content/Context;)V

    .line 136
    new-instance v0, Lcom/yf/smart/weloopx/b/a/a;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/b/a/a;-><init>(Landroid/content/Context;)V

    .line 137
    new-instance v0, Lcom/yf/smart/weloopx/b/a/d;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/b/a/d;-><init>()V

    .line 138
    new-instance v0, Lcom/yf/smart/weloopx/f/o;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/f/o;-><init>()V

    .line 139
    invoke-static {}, Lcom/yf/smart/weloopx/d/a;->b()Lcom/yf/smart/weloopx/d/a;

    move-result-object v0

    sget-object v1, Lcom/yf/smart/weloopx/d/c;->a:Lcom/yf/smart/weloopx/d/c;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v3, v2}, Lcom/yf/smart/weloopx/d/a;->a(Lcom/yf/smart/weloopx/d/c;I[Ljava/lang/Object;)Z

    .line 140
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 58
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yf/gattlib/a/b;->a(Landroid/app/Application;)V

    .line 59
    invoke-static {}, Lcom/yf/smart/weloopx/d/a;->a()V

    .line 60
    invoke-direct {p0}, Lcom/yf/smart/weloopx/app/WeLoopApplication;->a()V

    .line 61
    invoke-direct {p0}, Lcom/yf/smart/weloopx/app/WeLoopApplication;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/yf/smart/weloopx/app/WeLoopApplication;->b()V

    .line 63
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->m()Z

    .line 65
    :cond_0
    return-void
.end method
