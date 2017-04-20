.class public Lcom/yf/gattlib/server/android/e;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/server/android/a;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/yf/gattlib/server/android/e;->a:Landroid/content/Context;

    .line 25
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yf/gattlib/server/android/d;)V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/yf/gattlib/server/android/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", autoConnect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p1, Lcom/yf/gattlib/server/android/d;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onlyUart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p1, Lcom/yf/gattlib/server/android/d;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->d(Ljava/lang/String;)V

    .line 78
    const-string v0, "connect"

    invoke-static {v0}, Lcom/yf/gattlib/server/android/c;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 79
    const-string v1, "EXTRA_CONFIG"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 80
    const-class v1, Lcom/yf/gattlib/server/android/GattServerService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 82
    return-void
.end method

.method private static a(Lcom/yf/gattlib/f/b;Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 48
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 50
    invoke-static {}, Lcom/yf/gattlib/b/d;->a()Lcom/yf/gattlib/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/gattlib/b/d;->b()V

    .line 52
    invoke-static {}, Lcom/yf/gattlib/client/f;->a()Lcom/yf/gattlib/client/f;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yf/gattlib/client/f;->a(Ljava/lang/String;)Z

    move-result v1

    .line 53
    const-string v2, "ConnectDeviceCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "server: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", connected="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string v0, "connect"

    return-object v0
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 4

    .prologue
    .line 29
    const-string v0, "EXTRA_CONFIG"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/server/android/d;

    .line 30
    iget-object v1, v0, Lcom/yf/gattlib/server/android/d;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 43
    :goto_0
    return v0

    .line 34
    :cond_0
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v1

    .line 35
    iget-object v2, v0, Lcom/yf/gattlib/server/android/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/yf/gattlib/f/b;->c(Ljava/lang/String;)V

    .line 36
    iget-object v2, v0, Lcom/yf/gattlib/server/android/d;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/yf/gattlib/db/LastConnection;->update(Ljava/lang/String;)V

    .line 37
    iget-object v2, v0, Lcom/yf/gattlib/server/android/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/yf/gattlib/f/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    const-string v0, "ConnectDeviceCommand"

    const-string v1, "already connected"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x1

    goto :goto_0

    .line 41
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectDeviceCommand 6. ConnectDeviceCommand onExcute address = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/yf/gattlib/server/android/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectDeviceCommand 6. ConnectDeviceCommand onExcute address = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/yf/gattlib/server/android/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 43
    iget-object v0, v0, Lcom/yf/gattlib/server/android/d;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/yf/gattlib/server/android/e;->a(Lcom/yf/gattlib/f/b;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
