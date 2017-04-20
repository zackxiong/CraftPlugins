.class public final Lcom/yf/gattlib/b/d;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/gattlib/b/d$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/Thread;

.field private c:Z

.field private d:Z

.field private final e:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/yf/gattlib/b/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yf/gattlib/b/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v0, p0, Lcom/yf/gattlib/b/d;->c:Z

    .line 26
    iput-boolean v0, p0, Lcom/yf/gattlib/b/d;->d:Z

    .line 27
    new-instance v0, Lcom/yf/gattlib/b/e;

    invoke-direct {v0, p0}, Lcom/yf/gattlib/b/e;-><init>(Lcom/yf/gattlib/b/d;)V

    iput-object v0, p0, Lcom/yf/gattlib/b/d;->e:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    return-void
.end method

.method public static a()Lcom/yf/gattlib/b/d;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/yf/gattlib/b/d$a;->a:Lcom/yf/gattlib/b/d;

    return-object v0
.end method

.method private declared-synchronized a(Z)V
    .locals 1

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/yf/gattlib/b/d;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public b()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 80
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/yf/gattlib/b/d;->a:Ljava/lang/String;

    const-string v1, "stop scan"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/b/d;->e:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/gattlib/b/d;->d:Z

    .line 89
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/yf/gattlib/b/d;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yf/gattlib/b/d;->a(Z)V

    .line 134
    iget-object v0, p0, Lcom/yf/gattlib/b/d;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/gattlib/b/d;->b:Ljava/lang/Thread;

    .line 137
    :cond_0
    return-void
.end method
