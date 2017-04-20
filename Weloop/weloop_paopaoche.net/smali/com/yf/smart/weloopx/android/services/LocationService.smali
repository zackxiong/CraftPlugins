.class public Lcom/yf/smart/weloopx/android/services/LocationService;
.super Landroid/app/Service;
.source "ProGuard"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/yftech/pedometer/Recognizer$Reporter;


# static fields
.field private static volatile k:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private A:Lcom/yf/gattlib/d/b$a;

.field private B:Landroid/content/BroadcastReceiver;

.field private C:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private D:Lcom/baidu/location/BDLocationListener;

.field private E:Ljava/lang/Runnable;

.field private F:Ljava/lang/Runnable;

.field private G:Landroid/content/BroadcastReceiver;

.field private H:Ljava/lang/Runnable;

.field private a:Lcom/baidu/location/LocationClient;

.field private final b:I

.field private c:Lcom/baidu/location/LocationClientOption;

.field private d:Lcom/yftech/pedometer/Recognizer;

.field private final e:[I

.field private f:J

.field private g:J

.field private h:I

.field private i:Lcom/yf/gattlib/c/c;

.field private j:Lcom/yf/smart/weloopx/g/j;

.field private l:Z

.field private m:Landroid/os/Handler;

.field private n:Landroid/os/Handler;

.field private o:Z

.field private p:I

.field private q:Lcom/yf/smart/weloopx/android/services/a;

.field private r:Z

.field private s:Lcom/yf/smart/weloopx/android/a/c;

.field private t:Landroid/support/v4/app/ag$d;

.field private final u:Ljava/util/Timer;

.field private v:Lcom/yf/smart/weloopx/g/d;

.field private final w:Ljava/util/Timer;

.field private x:Landroid/os/Handler;

.field private y:Lcom/yf/smart/weloopx/data/l;

.field private z:Lcom/yf/smart/weloopx/b/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 65
    const/16 v0, 0x3c

    iput v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->b:I

    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->e:[I

    .line 74
    iput v1, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->h:I

    .line 81
    iput-boolean v1, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->l:Z

    .line 88
    const/4 v0, 0x1

    iput v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->p:I

    .line 90
    sget-object v0, Lcom/yf/smart/weloopx/android/services/a;->a:Lcom/yf/smart/weloopx/android/services/a;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->q:Lcom/yf/smart/weloopx/android/services/a;

    .line 95
    new-instance v0, Landroid/support/v4/app/ag$d;

    invoke-direct {v0, p0}, Landroid/support/v4/app/ag$d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->t:Landroid/support/v4/app/ag$d;

    .line 98
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->u:Ljava/util/Timer;

    .line 106
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->w:Ljava/util/Timer;

    .line 107
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->x:Landroid/os/Handler;

    .line 161
    new-instance v0, Lcom/yf/smart/weloopx/android/services/b;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/services/b;-><init>(Lcom/yf/smart/weloopx/android/services/LocationService;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->A:Lcom/yf/gattlib/d/b$a;

    .line 254
    new-instance v0, Lcom/yf/smart/weloopx/android/services/d;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/services/d;-><init>(Lcom/yf/smart/weloopx/android/services/LocationService;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->B:Landroid/content/BroadcastReceiver;

    .line 290
    new-instance v0, Lcom/yf/smart/weloopx/android/services/e;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/services/e;-><init>(Lcom/yf/smart/weloopx/android/services/LocationService;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->C:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 378
    new-instance v0, Lcom/yf/smart/weloopx/android/services/f;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/services/f;-><init>(Lcom/yf/smart/weloopx/android/services/LocationService;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->D:Lcom/baidu/location/BDLocationListener;

    .line 452
    new-instance v0, Lcom/yf/smart/weloopx/android/services/g;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/services/g;-><init>(Lcom/yf/smart/weloopx/android/services/LocationService;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->E:Ljava/lang/Runnable;

    .line 459
    new-instance v0, Lcom/yf/smart/weloopx/android/services/h;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/services/h;-><init>(Lcom/yf/smart/weloopx/android/services/LocationService;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->F:Ljava/lang/Runnable;

    .line 534
    new-instance v0, Lcom/yf/smart/weloopx/android/services/i;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/services/i;-><init>(Lcom/yf/smart/weloopx/android/services/LocationService;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->G:Landroid/content/BroadcastReceiver;

    .line 638
    new-instance v0, Lcom/yf/smart/weloopx/android/services/c;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/services/c;-><init>(Lcom/yf/smart/weloopx/android/services/LocationService;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->H:Ljava/lang/Runnable;

    return-void

    .line 70
    :array_0
    .array-data 4
        0x1
        0x4
    .end array-data
.end method

.method private A()V
    .locals 2

    .prologue
    .line 717
    const-string v0, "LocationService \u66f4\u65b0\u65ad\u8fde\u3001\u91cd\u8fde\u60c5\u51b5 "

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 718
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->y:Lcom/yf/smart/weloopx/data/l;

    invoke-static {}, Lcom/yf/gattlib/p/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/l;->c(Ljava/lang/String;)V

    .line 719
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->y:Lcom/yf/smart/weloopx/data/l;

    invoke-static {}, Lcom/yf/gattlib/p/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/l;->b(Ljava/lang/String;)V

    .line 720
    return-void
.end method

.method private B()Ljava/lang/String;
    .locals 4

    .prologue
    .line 733
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 734
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 735
    add-int/lit8 v1, v1, 0x14

    .line 736
    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/yf/gattlib/p/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v0, 0xa

    if-ge v2, v0, :cond_0

    const-string v0, "0"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private a()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    .line 178
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/LocationService;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->s:Lcom/yf/smart/weloopx/android/a/c;

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/services/LocationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/LocationService;->c()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, v0, v3, v2}, Lcom/yf/smart/weloopx/android/a/c;->a(Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    .line 187
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->s:Lcom/yf/smart/weloopx/android/a/c;

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/services/LocationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v1, v0, v3}, Lcom/yf/smart/weloopx/android/a/c;->a(Landroid/app/NotificationManager;I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/services/LocationService;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/LocationService;->d()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 723
    invoke-static {p1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 724
    invoke-static {p1}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 725
    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 610
    new-instance v0, Lcom/yf/smart/weloopx/f/b;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/f/b;-><init>(Landroid/content/Context;)V

    .line 611
    new-instance v1, Lcom/yf/smart/weloopx/android/services/k;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/services/k;-><init>(Lcom/yf/smart/weloopx/android/services/LocationService;)V

    invoke-virtual {v0, v1, p1}, Lcom/yf/smart/weloopx/f/b;->a(Lcom/yf/smart/weloopx/f/b$a;Z)V

    .line 636
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/services/LocationService;Z)Z
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/services/LocationService;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/LocationService;->A()V

    return-void
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/services/LocationService;Z)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/services/LocationService;->a(Z)V

    return-void
.end method

.method private b()Z
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->i:Lcom/yf/gattlib/c/c;

    const-string v1, "connect_notification"

    iget-boolean v2, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->r:Z

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/c/c;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private c()Landroid/app/Notification;
    .locals 4

    .prologue
    .line 196
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 198
    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 201
    const-string v2, "!!!"

    .line 202
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f07006f

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/services/LocationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 204
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->t:Landroid/support/v4/app/ag$d;

    const v3, 0x7f07004c

    invoke-virtual {p0, v3}, Lcom/yf/smart/weloopx/android/services/LocationService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/ag$d;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/ag$d;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/ag$d;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/ag$d;

    move-result-object v0

    const v2, 0x7f0200d8

    invoke-virtual {v0, v2}, Landroid/support/v4/app/ag$d;->a(I)Landroid/support/v4/app/ag$d;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/app/ag$d;->a(Z)Landroid/support/v4/app/ag$d;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/ag$d;->a(J)Landroid/support/v4/app/ag$d;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ag$d;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/ag$d;

    .line 211
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->t:Landroid/support/v4/app/ag$d;

    invoke-virtual {v0}, Landroid/support/v4/app/ag$d;->a()Landroid/app/Notification;

    move-result-object v0

    return-object v0

    .line 202
    :cond_0
    const v0, 0x7f070071

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/services/LocationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/android/services/LocationService;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/LocationService;->s()V

    return-void
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/android/services/LocationService;)Lcom/yf/gattlib/c/c;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->i:Lcom/yf/gattlib/c/c;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/LocationService;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/services/LocationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 218
    const/16 v1, 0x64

    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/LocationService;->c()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private e()V
    .locals 7

    .prologue
    .line 223
    const-wide/32 v4, 0x493e0

    .line 224
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 225
    add-long v2, v0, v4

    .line 227
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->B:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v6, "com.yf.smart.weloopx.location.alarm.xx"

    invoke-direct {v1, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/yf/smart/weloopx/android/services/LocationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 228
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/services/LocationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 229
    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/LocationService;->g()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->l:Z

    .line 232
    return-void
.end method

.method static synthetic e(Lcom/yf/smart/weloopx/android/services/LocationService;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->o:Z

    return v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->l:Z

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->B:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/services/LocationService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/services/LocationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 242
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/LocationService;->g()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 243
    return-void

    .line 238
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic f(Lcom/yf/smart/weloopx/android/services/LocationService;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/LocationService;->i()V

    return-void
.end method

.method private g()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 248
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yf.smart.weloopx.location.alarm.xx"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    const-string v1, "1"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 250
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/yf/smart/weloopx/android/services/LocationService;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/LocationService;->a()V

    return-void
.end method

.method static synthetic h(Lcom/yf/smart/weloopx/android/services/LocationService;)Lcom/yf/smart/weloopx/g/j;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->j:Lcom/yf/smart/weloopx/g/j;

    return-object v0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 279
    new-instance v0, Lcom/yf/smart/weloopx/g/j;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/g/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->j:Lcom/yf/smart/weloopx/g/j;

    .line 280
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->i:Lcom/yf/gattlib/c/c;

    const-string v1, "KEY_TRAJECTORY_SWITCH"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/c/c;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->o:Z

    .line 281
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->i:Lcom/yf/gattlib/c/c;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->C:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/c/c;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 283
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->m:Landroid/os/Handler;

    .line 284
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->n:Landroid/os/Handler;

    .line 285
    new-instance v0, Lcom/yftech/pedometer/Recognizer;

    invoke-direct {v0, p0}, Lcom/yftech/pedometer/Recognizer;-><init>(Lcom/yftech/pedometer/Recognizer$Reporter;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->d:Lcom/yftech/pedometer/Recognizer;

    .line 286
    invoke-static {}, Lcom/yf/gattlib/c/e;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->r:Z

    .line 287
    return-void
.end method

.method static synthetic i(Lcom/yf/smart/weloopx/android/services/LocationService;)Lcom/yf/smart/weloopx/android/services/a;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->q:Lcom/yf/smart/weloopx/android/services/a;

    return-object v0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->o:Z

    if-eqz v0, :cond_0

    .line 306
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/LocationService;->j()V

    .line 310
    :goto_0
    return-void

    .line 308
    :cond_0
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/LocationService;->k()V

    goto :goto_0
.end method

.method static synthetic j(Lcom/yf/smart/weloopx/android/services/LocationService;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->h:I

    return v0
.end method

.method private j()V
    .locals 0

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/LocationService;->w()V

    .line 314
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/LocationService;->m()V

    .line 315
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/LocationService;->l()V

    .line 316
    return-void
.end method

.method private k()V
    .locals 0

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/LocationService;->x()V

    .line 320
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/LocationService;->m()V

    .line 321
    return-void
.end method

.method static synthetic k(Lcom/yf/smart/weloopx/android/services/LocationService;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/LocationService;->x()V

    return-void
.end method

.method static synthetic l(Lcom/yf/smart/weloopx/android/services/LocationService;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->F:Ljava/lang/Runnable;

    return-object v0
.end method

.method private l()V
    .locals 6

    .prologue
    .line 327
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/services/LocationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 328
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->e:[I

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget v4, v2, v1

    .line 329
    invoke-virtual {v0, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    const v5, 0x9c40

    invoke-virtual {v0, p0, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 328
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 333
    :cond_0
    return-void
.end method

.method static synthetic m(Lcom/yf/smart/weloopx/android/services/LocationService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->n:Landroid/os/Handler;

    return-object v0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 336
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/services/LocationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 337
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 338
    return-void
.end method

.method private n()V
    .locals 2

    .prologue
    .line 341
    new-instance v0, Lcom/baidu/location/LocationClient;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/services/LocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/location/LocationClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->a:Lcom/baidu/location/LocationClient;

    .line 342
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->a:Lcom/baidu/location/LocationClient;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->D:Lcom/baidu/location/BDLocationListener;

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient;->registerLocationListener(Lcom/baidu/location/BDLocationListener;)V

    .line 343
    return-void
.end method

.method static synthetic n(Lcom/yf/smart/weloopx/android/services/LocationService;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/LocationService;->z()V

    return-void
.end method

.method private o()V
    .locals 3

    .prologue
    .line 347
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->a:Lcom/baidu/location/LocationClient;

    if-nez v0, :cond_0

    .line 348
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/LocationService;->n()V

    .line 350
    :cond_0
    new-instance v0, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v0}, Lcom/baidu/location/LocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->c:Lcom/baidu/location/LocationClientOption;

    .line 351
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setOpenGps(Z)V

    .line 353
    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setTimeOut(I)V

    .line 354
    sget-object v1, Lcom/baidu/location/LocationClientOption$LocationMode;->Hight_Accuracy:Lcom/baidu/location/LocationClientOption$LocationMode;

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setLocationMode(Lcom/baidu/location/LocationClientOption$LocationMode;)V

    .line 355
    const-string v1, "gcj02"

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setCoorType(Ljava/lang/String;)V

    .line 356
    iget v1, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->p:I

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setScanSpan(I)V

    .line 358
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->a:Lcom/baidu/location/LocationClient;

    invoke-virtual {v1, v0}, Lcom/baidu/location/LocationClient;->setLocOption(Lcom/baidu/location/LocationClientOption;)V

    .line 359
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->a:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->start()V

    .line 360
    const-string v0, "LocationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start location: locationTrackInterval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method private p()V
    .locals 2

    .prologue
    .line 368
    const-string v0, "LocationService"

    const-string v1, "stop track: 1"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->a:Lcom/baidu/location/LocationClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->a:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    const-string v0, "LocationService"

    const-string v1, "stop track: 2"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->a:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->stop()V

    .line 373
    :cond_0
    return-void
.end method

.method private q()V
    .locals 4

    .prologue
    .line 467
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 468
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->E:Ljava/lang/Runnable;

    const-wide/32 v2, 0x3a980

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 469
    return-void
.end method

.method private r()V
    .locals 6

    .prologue
    .line 473
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->q:Lcom/yf/smart/weloopx/android/services/a;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/services/a;->a()I

    move-result v0

    sget-object v1, Lcom/yf/smart/weloopx/android/services/a;->b:Lcom/yf/smart/weloopx/android/services/a;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/services/a;->a()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->q:Lcom/yf/smart/weloopx/android/services/a;

    .line 477
    iget v1, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->h:I

    const/16 v2, 0x3c

    if-lt v1, v2, :cond_3

    .line 478
    sget-object v1, Lcom/yf/smart/weloopx/android/services/a;->b:Lcom/yf/smart/weloopx/android/services/a;

    iput-object v1, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->q:Lcom/yf/smart/weloopx/android/services/a;

    .line 479
    iget-wide v2, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->f:J

    iput-wide v2, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->g:J

    .line 480
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/LocationService;->q()V

    .line 485
    :cond_2
    :goto_1
    const-string v1, "LocationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stepOfCurMinute="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sensorSportMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->q:Lcom/yf/smart/weloopx/android/services/a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->q:Lcom/yf/smart/weloopx/android/services/a;

    if-eq v0, v1, :cond_0

    .line 487
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/LocationService;->s()V

    goto :goto_0

    .line 481
    :cond_3
    iget-wide v2, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->f:J

    iget-wide v4, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->g:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3

    cmp-long v1, v2, v4

    if-ltz v1, :cond_2

    .line 482
    sget-object v1, Lcom/yf/smart/weloopx/android/services/a;->a:Lcom/yf/smart/weloopx/android/services/a;

    iput-object v1, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->q:Lcom/yf/smart/weloopx/android/services/a;

    goto :goto_1
.end method

.method private s()V
    .locals 0

    .prologue
    .line 492
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/LocationService;->u()V

    .line 493
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/LocationService;->t()V

    .line 494
    return-void
.end method

.method private t()V
    .locals 2

    .prologue
    .line 497
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/LocationService;->p()V

    .line 498
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->o:Z

    if-nez v0, :cond_0

    .line 509
    :goto_0
    return-void

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->q:Lcom/yf/smart/weloopx/android/services/a;

    sget-object v1, Lcom/yf/smart/weloopx/android/services/a;->a:Lcom/yf/smart/weloopx/android/services/a;

    if-ne v0, v1, :cond_1

    .line 503
    const/4 v0, 0x1

    iput v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->p:I

    .line 507
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationService \u5b9a\u4f4d\u626b\u63cf\u95f4\u9694\u65f6\u95f4 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 508
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/LocationService;->o()V

    goto :goto_0

    .line 505
    :cond_1
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->p:I

    goto :goto_1
.end method

.method private u()V
    .locals 2

    .prologue
    .line 512
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->q:Lcom/yf/smart/weloopx/android/services/a;

    sget-object v1, Lcom/yf/smart/weloopx/android/services/a;->a:Lcom/yf/smart/weloopx/android/services/a;

    if-eq v0, v1, :cond_2

    .line 514
    :cond_0
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/LocationService;->f()V

    .line 522
    :cond_1
    :goto_0
    return-void

    .line 518
    :cond_2
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->l:Z

    if-nez v0, :cond_1

    .line 521
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/LocationService;->e()V

    goto :goto_0
.end method

.method private v()V
    .locals 2

    .prologue
    .line 526
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 527
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 528
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 529
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 530
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->G:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/yf/smart/weloopx/android/services/LocationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 531
    return-void
.end method

.method private w()V
    .locals 4

    .prologue
    .line 549
    const-class v1, Lcom/yf/smart/weloopx/android/services/LocationService;

    monitor-enter v1

    .line 550
    :try_start_0
    const-string v0, "LocationService"

    const-string v2, "acquire"

    invoke-static {v0, v2}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    sget-object v0, Lcom/yf/smart/weloopx/android/services/LocationService;->k:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 552
    const-string v0, "LocationService"

    const-string v2, "acquire 1"

    invoke-static {v0, v2}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/services/LocationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 554
    const/4 v2, 0x1

    const-string v3, "StepService"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/yf/smart/weloopx/android/services/LocationService;->k:Landroid/os/PowerManager$WakeLock;

    .line 556
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    :goto_0
    return-void

    .line 559
    :cond_0
    :try_start_1
    sget-object v0, Lcom/yf/smart/weloopx/android/services/LocationService;->k:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 560
    sget-object v0, Lcom/yf/smart/weloopx/android/services/LocationService;->k:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 564
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 561
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private x()V
    .locals 3

    .prologue
    .line 568
    const-class v1, Lcom/yf/smart/weloopx/android/services/LocationService;

    monitor-enter v1

    .line 569
    :try_start_0
    const-string v0, "LocationService"

    const-string v2, "release"

    invoke-static {v0, v2}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    sget-object v0, Lcom/yf/smart/weloopx/android/services/LocationService;->k:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 572
    :try_start_1
    const-string v0, "LocationService"

    const-string v2, "release 1"

    invoke-static {v0, v2}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    sget-object v0, Lcom/yf/smart/weloopx/android/services/LocationService;->k:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 577
    const/4 v0, 0x0

    :try_start_2
    sput-object v0, Lcom/yf/smart/weloopx/android/services/LocationService;->k:Landroid/os/PowerManager$WakeLock;

    .line 580
    :cond_0
    :goto_0
    monitor-exit v1

    .line 581
    return-void

    .line 574
    :catch_0
    move-exception v0

    .line 577
    const/4 v0, 0x0

    sput-object v0, Lcom/yf/smart/weloopx/android/services/LocationService;->k:Landroid/os/PowerManager$WakeLock;

    goto :goto_0

    .line 580
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 577
    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    :try_start_3
    sput-object v2, Lcom/yf/smart/weloopx/android/services/LocationService;->k:Landroid/os/PowerManager$WakeLock;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private y()V
    .locals 6

    .prologue
    .line 586
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/LocationService;->B()Ljava/lang/String;

    move-result-object v0

    .line 587
    invoke-static {v0}, Lcom/yf/gattlib/p/b;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LocationService \u8ddd\u79bb\u4e0a\u4f20\u7edf\u8ba1\u4fe1\u606ffixedTime = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u8fd8\u6709\u591a\u957f\u65f6\u95f4 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 589
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    .line 602
    :goto_0
    return-void

    .line 593
    :cond_0
    new-instance v1, Lcom/yf/smart/weloopx/android/services/j;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/services/j;-><init>(Lcom/yf/smart/weloopx/android/services/LocationService;)V

    .line 600
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->u:Ljava/util/Timer;

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method private z()V
    .locals 3

    .prologue
    .line 664
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    const-string v1, "KEY_AUTO_SYNC_DATA"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/c/c;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 665
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocationService \u81ea\u52a8\u540c\u6b65\u6570\u636e\u5f00\u5173 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yf/smart/weloopx/android/services/LocationService;->a(Ljava/lang/String;)V

    .line 666
    if-nez v0, :cond_1

    .line 711
    :cond_0
    :goto_0
    return-void

    .line 670
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->v:Lcom/yf/smart/weloopx/g/d;

    invoke-virtual {v0, p0}, Lcom/yf/smart/weloopx/g/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 671
    const-string v0, "LocationService \u6ca1\u6709\u7f51\u7edc\u4e0d\u540c\u6b65"

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/services/LocationService;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 674
    :cond_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->v:Lcom/yf/smart/weloopx/g/d;

    invoke-virtual {v0, p0}, Lcom/yf/smart/weloopx/g/d;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 675
    const-string v0, "LocationService \u5904\u4e8e\u524d\u53f0\uff0c\u4e0d\u6267\u884c\u540c\u6b65\u6570\u636e"

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/services/LocationService;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 679
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 680
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 681
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocationService \u73b0\u5728\u7684\u65f6\u95f4 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yf/smart/weloopx/android/services/LocationService;->a(Ljava/lang/String;)V

    .line 682
    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 686
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->o()Z

    move-result v0

    if-nez v0, :cond_4

    .line 687
    const-string v0, "LocationService \u8bbe\u5907\u6ca1\u6709\u521d\u59cb\u5316\u3001\u8bbe\u5907\u65e0\u8fde\u63a5\uff0c\u4e0d\u540c\u6b65"

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/services/LocationService;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 709
    :cond_4
    invoke-static {}, Lcom/yf/smart/weloopx/c/x;->a()Lcom/yf/smart/weloopx/c/x;

    move-result-object v0

    invoke-static {}, Lcom/yf/gattlib/p/b;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/yf/smart/weloopx/c/x;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 450
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 119
    const-string v0, "LocationService \u5f00\u59cb\u5b9a\u4f4d\u670d\u52a1 Start location service"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 120
    new-instance v0, Lcom/yf/smart/weloopx/data/l;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/data/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->y:Lcom/yf/smart/weloopx/data/l;

    .line 121
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->i:Lcom/yf/gattlib/c/c;

    .line 122
    new-instance v0, Lcom/yf/smart/weloopx/android/a/c;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/a/c;-><init>(Landroid/app/Service;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->s:Lcom/yf/smart/weloopx/android/a/c;

    .line 123
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/services/LocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mapapi/SDKInitializer;->initialize(Landroid/content/Context;)V

    .line 124
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/LocationService;->h()V

    .line 125
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/LocationService;->i()V

    .line 126
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/LocationService;->s()V

    .line 127
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/LocationService;->v()V

    .line 128
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/LocationService;->a()V

    .line 129
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->A:Lcom/yf/gattlib/d/b$a;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/b;->a(Lcom/yf/gattlib/d/b$a;)V

    .line 130
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/LocationService;->y()V

    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/services/LocationService;->a(Z)V

    .line 135
    new-instance v0, Lcom/yf/smart/weloopx/g/d;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/g/d;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->v:Lcom/yf/smart/weloopx/g/d;

    .line 137
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->z:Lcom/yf/smart/weloopx/b/b;

    .line 138
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 263
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->A:Lcom/yf/gattlib/d/b$a;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/b;->b(Lcom/yf/gattlib/d/b$a;)V

    .line 264
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/LocationService;->f()V

    .line 265
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 266
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->F:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 267
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->G:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/services/LocationService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 268
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/LocationService;->x()V

    .line 269
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/LocationService;->p()V

    .line 270
    const-string v0, "LocationService Destory location service"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->x:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->x:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->H:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 274
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 275
    return-void
.end method

.method public onRecongnizerChanged(II)V
    .locals 4

    .prologue
    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onRecongnizerChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocationService"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 416
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    .line 421
    iget-wide v2, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->f:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 422
    iget v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->h:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->h:I

    .line 427
    :goto_1
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/LocationService;->r()V

    .line 429
    sget-boolean v0, Lcom/yf/smart/weloopx/g/j;->a:Z

    if-eqz v0, :cond_0

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationService value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stepOfCurMinute = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 424
    :cond_2
    iput-wide v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->f:J

    .line 425
    iput p2, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->h:I

    goto :goto_1
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    .prologue
    .line 443
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->d:Lcom/yftech/pedometer/Recognizer;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/yftech/pedometer/Recognizer;->onSensorChanged(IJ[F)V

    .line 445
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .prologue
    .line 151
    if-eqz p1, :cond_0

    .line 152
    const-string v0, "evt_switch_location_mode"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/android/services/a;

    .line 153
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->q:Lcom/yf/smart/weloopx/android/services/a;

    if-eq v0, v1, :cond_0

    .line 154
    iput-object v0, p0, Lcom/yf/smart/weloopx/android/services/LocationService;->q:Lcom/yf/smart/weloopx/android/services/a;

    .line 155
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/LocationService;->s()V

    .line 158
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
