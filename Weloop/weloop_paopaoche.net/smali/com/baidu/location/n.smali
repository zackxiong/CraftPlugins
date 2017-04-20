.class public Lcom/baidu/location/n;
.super Landroid/app/Service;

# interfaces
.implements Lcom/baidu/location/LLSInterface;
.implements Lcom/baidu/location/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/n$a;
    }
.end annotation


# static fields
.field private static Z:Landroid/content/Context;

.field static a:Lcom/baidu/location/n$a;

.field private static ad:J

.field public static g0:Z

.field public static gR:Z

.field public static gS:J


# instance fields
.field Y:Landroid/os/Messenger;

.field private aa:Landroid/os/Looper;

.field private ab:Landroid/os/HandlerThread;

.field private ac:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/n;->a:Lcom/baidu/location/n$a;

    sput-object v0, Lcom/baidu/location/n;->Z:Landroid/content/Context;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/location/n;->gR:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/baidu/location/n;->ad:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/n;->Y:Landroid/os/Messenger;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/n;->ac:Z

    return-void
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/location/n;->gR:Z

    invoke-static {}, Lcom/baidu/location/aj;->at()Lcom/baidu/location/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/aj;->ay()V

    invoke-static {}, Lcom/baidu/location/D;->cs()Lcom/baidu/location/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/D;->cy()V

    invoke-static {}, Lcom/baidu/location/i;->cY()Lcom/baidu/location/i;

    invoke-static {}, Lcom/baidu/location/ao;->bg()Lcom/baidu/location/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/ao;->a5()V

    invoke-static {}, Lcom/baidu/location/aa;->I()Lcom/baidu/location/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/aa;->L()V

    invoke-static {}, Lcom/baidu/location/v;->aI()Lcom/baidu/location/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/v;->b()V

    invoke-static {}, Lcom/baidu/location/g;->cP()Lcom/baidu/location/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/g;->cU()V

    invoke-static {}, Lcom/baidu/location/k;->bj()Lcom/baidu/location/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/k;->bk()V

    invoke-static {}, Lcom/baidu/location/d;->do()Lcom/baidu/location/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/d;->for()V

    invoke-static {}, Lcom/baidu/location/m;->bs()Lcom/baidu/location/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/m;->bt()V

    return-void
.end method

.method private a(Landroid/os/Message;)V
    .locals 1

    invoke-static {}, Lcom/baidu/location/T;->q()Lcom/baidu/location/T;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/T;->new(Landroid/os/Message;)V

    invoke-static {}, Lcom/baidu/location/k;->bj()Lcom/baidu/location/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/k;->bl()V

    invoke-static {}, Lcom/baidu/location/L;->ac()Lcom/baidu/location/L;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/L;->ae()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/n;->a()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/n;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/n;->a(Landroid/os/Message;)V

    return-void
.end method

.method private b()V
    .locals 1

    invoke-static {}, Lcom/baidu/location/aj;->at()Lcom/baidu/location/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/aj;->as()V

    invoke-static {}, Lcom/baidu/location/v;->aI()Lcom/baidu/location/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/v;->c()V

    invoke-static {}, Lcom/baidu/location/r;->bO()Lcom/baidu/location/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/r;->bQ()V

    invoke-static {}, Lcom/baidu/location/Z;->x()V

    invoke-static {}, Lcom/baidu/location/T;->q()Lcom/baidu/location/T;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/T;->o()V

    iget-boolean v0, p0, Lcom/baidu/location/n;->ac:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_0
    return-void
.end method

.method private b(Landroid/os/Message;)V
    .locals 1

    invoke-static {}, Lcom/baidu/location/T;->q()Lcom/baidu/location/T;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/T;->do(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/location/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/n;->b()V

    return-void
.end method

.method static synthetic b(Lcom/baidu/location/n;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/n;->b(Landroid/os/Message;)V

    return-void
.end method

.method public static bu()J
    .locals 2

    sget-wide v0, Lcom/baidu/location/n;->ad:J

    return-wide v0
.end method

.method public static bv()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/baidu/location/n;->a:Lcom/baidu/location/n$a;

    return-object v0
.end method

.method private c(Landroid/os/Message;)V
    .locals 1

    invoke-static {}, Lcom/baidu/location/T;->q()Lcom/baidu/location/T;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/T;->int(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic c(Lcom/baidu/location/n;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/n;->c(Landroid/os/Message;)V

    return-void
.end method

.method private d(Landroid/os/Message;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/baidu/location/n;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/n;->d(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public getVersion()D
    .locals 2

    const-wide v0, 0x4014d70a40000000L    # 5.210000038146973

    return-wide v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    const-string v0, "cache_exception"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "kill_process"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/baidu/location/n;->ac:Z

    const-string v2, "debug_dev"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/baidu/location/n;->g0:Z

    const-string v2, "interval"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Lcom/baidu/location/n;->gS:J

    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Lcom/baidu/location/m;->bs()Lcom/baidu/location/m;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/n;->Y:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/baidu/location/n;->ad:J

    sput-object p1, Lcom/baidu/location/n;->Z:Landroid/content/Context;

    invoke-static {}, Lcom/baidu/location/B;->a()Landroid/os/HandlerThread;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/n;->ab:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/baidu/location/n;->ab:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/n;->aa:Landroid/os/Looper;

    new-instance v0, Lcom/baidu/location/n$a;

    iget-object v1, p0, Lcom/baidu/location/n;->aa:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/n$a;-><init>(Lcom/baidu/location/n;Landroid/os/Looper;)V

    sput-object v0, Lcom/baidu/location/n;->a:Lcom/baidu/location/n$a;

    new-instance v0, Landroid/os/Messenger;

    sget-object v1, Lcom/baidu/location/n;->a:Lcom/baidu/location/n$a;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/location/n;->Y:Landroid/os/Messenger;

    sget-object v0, Lcom/baidu/location/n;->a:Lcom/baidu/location/n$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/location/n$a;->sendEmptyMessage(I)Z

    const-string v0, "baidu_location_service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "baidu location service start1 ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/location/n;->gR:Z

    invoke-static {}, Lcom/baidu/location/D;->cs()Lcom/baidu/location/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/D;->co()V

    invoke-static {}, Lcom/baidu/location/R;->for()Lcom/baidu/location/R;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/R;->do()V

    invoke-static {}, Lcom/baidu/location/aa;->I()Lcom/baidu/location/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/aa;->H()V

    invoke-static {}, Lcom/baidu/location/ao;->bg()Lcom/baidu/location/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/ao;->a7()V

    invoke-static {}, Lcom/baidu/location/d;->do()Lcom/baidu/location/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/d;->if()V

    sget-object v0, Lcom/baidu/location/n;->a:Lcom/baidu/location/n$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/location/n$a;->sendEmptyMessage(I)Z

    const-string v0, "baidu_location_service"

    const-string v1, "baidu location service stop ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onUnBind(Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
