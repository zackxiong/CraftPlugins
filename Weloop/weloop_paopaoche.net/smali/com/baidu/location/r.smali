.class Lcom/baidu/location/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/e;


# static fields
.field private static a:Lcom/baidu/location/r;


# instance fields
.field public hj:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/r;->hj:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/r;->hj:Landroid/os/Handler;

    return-void
.end method

.method public static bO()Lcom/baidu/location/r;
    .locals 1

    sget-object v0, Lcom/baidu/location/r;->a:Lcom/baidu/location/r;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/r;

    invoke-direct {v0}, Lcom/baidu/location/r;-><init>()V

    sput-object v0, Lcom/baidu/location/r;->a:Lcom/baidu/location/r;

    :cond_0
    sget-object v0, Lcom/baidu/location/r;->a:Lcom/baidu/location/r;

    return-object v0
.end method


# virtual methods
.method public bP()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized bQ()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public bR()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized bS()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method
