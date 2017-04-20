.class public Lcom/yf/gattlib/m/a/c;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:Z

.field private final d:[B

.field private final e:S

.field private f:Landroid/content/BroadcastReceiver;

.field private g:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/yf/gattlib/m/a/c;->d:[B

    .line 93
    const/16 v0, -0x3c

    iput-short v0, p0, Lcom/yf/gattlib/m/a/c;->e:S

    .line 94
    new-instance v0, Lcom/yf/gattlib/m/a/d;

    invoke-direct {v0, p0}, Lcom/yf/gattlib/m/a/d;-><init>(Lcom/yf/gattlib/m/a/c;)V

    iput-object v0, p0, Lcom/yf/gattlib/m/a/c;->f:Landroid/content/BroadcastReceiver;

    .line 111
    new-instance v0, Lcom/yf/gattlib/m/a/e;

    invoke-direct {v0, p0}, Lcom/yf/gattlib/m/a/e;-><init>(Lcom/yf/gattlib/m/a/c;)V

    iput-object v0, p0, Lcom/yf/gattlib/m/a/c;->g:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 24
    iput-object p1, p0, Lcom/yf/gattlib/m/a/c;->a:Landroid/content/Context;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/gattlib/m/a/c;->b:Z

    .line 27
    invoke-static {}, Lcom/yf/gattlib/c/e;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yf/gattlib/m/a/c;->c:Z

    .line 28
    return-void

    .line 92
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public static a(Landroid/content/Context;)Lcom/yf/gattlib/m/a/c;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/yf/gattlib/m/a/c;

    invoke-direct {v0, p0}, Lcom/yf/gattlib/m/a/c;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic a(Lcom/yf/gattlib/m/a/c;)[B
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/yf/gattlib/m/a/c;->d:[B

    return-object v0
.end method

.method static synthetic b(Lcom/yf/gattlib/m/a/c;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/yf/gattlib/m/a/c;->g:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/yf/gattlib/m/a/c;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 90
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 68
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/yf/gattlib/m/a/c;->b:Z

    .line 70
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-boolean v0, p0, Lcom/yf/gattlib/m/a/c;->c:Z

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/yf/gattlib/m/a/c;->g:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 76
    :try_start_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/m/a/c;->g:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    :goto_1
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/yf/gattlib/m/a/c;->g:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    :try_start_4
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 83
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 85
    :try_start_5
    iget-object v0, p0, Lcom/yf/gattlib/m/a/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/yf/gattlib/m/a/c;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 86
    :catch_1
    move-exception v0

    .line 87
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized a(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .locals 1

    .prologue
    .line 39
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/yf/gattlib/m/a/c;->a([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .locals 3

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/yf/gattlib/m/a/c;->g:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yf/gattlib/m/a/c;->b:Z

    .line 46
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 62
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 50
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/yf/gattlib/m/a/c;->c:Z

    if-eqz v0, :cond_4

    .line 51
    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_3

    .line 52
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/m/a/c;->g:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 54
    :cond_3
    :try_start_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/m/a/c;->g:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    goto :goto_0

    .line 57
    :cond_4
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 58
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/yf/gattlib/m/a/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/yf/gattlib/m/a/c;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 60
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
