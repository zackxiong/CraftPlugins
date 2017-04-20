.class public Lcom/yf/gattlib/server/a;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private final a:Z

.field private b:Landroid/bluetooth/BluetoothManager;

.field private c:Landroid/content/Context;

.field private d:Landroid/bluetooth/BluetoothGattServer;

.field private e:Z

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lcom/yf/gattlib/server/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/bluetooth/BluetoothGattServerCallback;

.field private h:Landroid/bluetooth/BluetoothGattServerCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothManager;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v2, p0, Lcom/yf/gattlib/server/a;->e:Z

    .line 211
    new-instance v0, Lcom/yf/gattlib/server/b;

    invoke-direct {v0, p0}, Lcom/yf/gattlib/server/b;-><init>(Lcom/yf/gattlib/server/a;)V

    iput-object v0, p0, Lcom/yf/gattlib/server/a;->g:Landroid/bluetooth/BluetoothGattServerCallback;

    .line 289
    new-instance v0, Lcom/yf/gattlib/server/c;

    invoke-direct {v0, p0}, Lcom/yf/gattlib/server/c;-><init>(Lcom/yf/gattlib/server/a;)V

    iput-object v0, p0, Lcom/yf/gattlib/server/a;->h:Landroid/bluetooth/BluetoothGattServerCallback;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/server/a;->f:Ljava/util/Map;

    .line 47
    iput-object p2, p0, Lcom/yf/gattlib/server/a;->b:Landroid/bluetooth/BluetoothManager;

    .line 48
    iput-object p1, p0, Lcom/yf/gattlib/server/a;->c:Landroid/content/Context;

    .line 49
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    const-string v1, "gatt server"

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/c/c;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yf/gattlib/server/a;->a:Z

    .line 50
    const-string v1, "GattServerManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gatt server is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/yf/gattlib/server/a;->a:Z

    if-eqz v0, :cond_0

    const-string v0, " running"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void

    .line 50
    :cond_0
    const-string v0, "not running"

    goto :goto_0
.end method

.method private a(Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/BluetoothGattServerCallback;
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/yf/gattlib/server/a;->f:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/server/a/a;

    .line 193
    if-eqz v0, :cond_0

    .line 194
    invoke-interface {v0}, Lcom/yf/gattlib/server/a/a;->b()Lcom/yf/gattlib/server/a/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/yf/gattlib/server/a/c;->a()Landroid/bluetooth/BluetoothGattServerCallback;

    move-result-object v0

    .line 197
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/server/a;->h:Landroid/bluetooth/BluetoothGattServerCallback;

    goto :goto_0
.end method

.method static synthetic a(Lcom/yf/gattlib/server/a;Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/BluetoothGattServerCallback;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/yf/gattlib/server/a;->a(Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/BluetoothGattServerCallback;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/yf/gattlib/server/a;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/yf/gattlib/server/a;->f:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lcom/yf/gattlib/server/a;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/yf/gattlib/server/a;->e:Z

    return p1
.end method

.method private b(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 3

    .prologue
    .line 203
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yf.gattlib.intent.action.CONNECTION_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    const-string v1, "GattServer.extract.DEVICE_ADDRESS"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const-string v1, "GattServer.extract.DEVICE_STATUS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    const-string v1, "GattServer.extract.DEVICE_NEW_STATE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 207
    const-string v1, "connection_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 208
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yf/gattlib/a/a;->a(Landroid/content/Intent;)V

    .line 209
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/yf/gattlib/server/a;->a:Z

    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/server/a;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/server/a/a;

    .line 76
    invoke-interface {v0}, Lcom/yf/gattlib/server/a/a;->c()V

    goto :goto_1

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/yf/gattlib/server/a;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 79
    iget-object v0, p0, Lcom/yf/gattlib/server/a;->d:Landroid/bluetooth/BluetoothGattServer;

    if-eqz v0, :cond_2

    .line 80
    invoke-virtual {p0}, Lcom/yf/gattlib/server/a;->b()V

    .line 81
    iget-object v0, p0, Lcom/yf/gattlib/server/a;->d:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattServer;->clearServices()V

    .line 82
    iget-object v0, p0, Lcom/yf/gattlib/server/a;->d:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattServer;->close()V

    .line 84
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/gattlib/server/a;->d:Landroid/bluetooth/BluetoothGattServer;

    goto :goto_0
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/yf/gattlib/server/a;->a:Z

    if-nez v0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    const-string v0, "GattServerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/yf/gattlib/server/a;->d:Landroid/bluetooth/BluetoothGattServer;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/yf/gattlib/server/a;->d:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattServer;->cancelConnection(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 2

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/yf/gattlib/server/a;->a:Z

    if-nez v0, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/yf/gattlib/server/a;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/server/a/a;

    .line 172
    invoke-interface {v0}, Lcom/yf/gattlib/server/a/a;->b()Lcom/yf/gattlib/server/a/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/yf/gattlib/server/a/c;->a()Landroid/bluetooth/BluetoothGattServerCallback;

    move-result-object v0

    .line 173
    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattServerCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_1

    .line 176
    :cond_2
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/f/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-direct {p0, p1, p2, p3}, Lcom/yf/gattlib/server/a;->b(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Landroid/bluetooth/BluetoothManager;)V
    .locals 3

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/yf/gattlib/server/a;->a:Z

    if-nez v0, :cond_1

    .line 68
    :cond_0
    return-void

    .line 60
    :cond_1
    iput-object p2, p0, Lcom/yf/gattlib/server/a;->b:Landroid/bluetooth/BluetoothManager;

    .line 61
    iput-object p1, p0, Lcom/yf/gattlib/server/a;->c:Landroid/content/Context;

    .line 63
    iget-object v0, p0, Lcom/yf/gattlib/server/a;->b:Landroid/bluetooth/BluetoothManager;

    iget-object v1, p0, Lcom/yf/gattlib/server/a;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/yf/gattlib/server/a;->g:Landroid/bluetooth/BluetoothGattServerCallback;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothManager;->openGattServer(Landroid/content/Context;Landroid/bluetooth/BluetoothGattServerCallback;)Landroid/bluetooth/BluetoothGattServer;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/server/a;->d:Landroid/bluetooth/BluetoothGattServer;

    .line 65
    iget-object v0, p0, Lcom/yf/gattlib/server/a;->d:Landroid/bluetooth/BluetoothGattServer;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/yf/gattlib/e/g;

    const-string v1, "openGattServer return null"

    invoke-direct {v0, v1}, Lcom/yf/gattlib/e/g;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/yf/gattlib/server/a/a;)V
    .locals 2

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/yf/gattlib/server/a;->a:Z

    if-nez v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/server/a;->f:Ljava/util/Map;

    invoke-interface {p1}, Lcom/yf/gattlib/server/a/a;->a()Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lcom/yf/gattlib/server/a;->d:Landroid/bluetooth/BluetoothGattServer;

    invoke-interface {p1}, Lcom/yf/gattlib/server/a/a;->a()Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattServer;->addService(Landroid/bluetooth/BluetoothGattService;)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/yf/gattlib/server/a;->a:Z

    if-nez v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 141
    invoke-virtual {p0, v0}, Lcom/yf/gattlib/server/a;->a(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/yf/gattlib/server/a;->a:Z

    if-nez v0, :cond_1

    .line 98
    :cond_0
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/yf/gattlib/server/a;->d:Landroid/bluetooth/BluetoothGattServer;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/yf/gattlib/server/a;->b:Landroid/bluetooth/BluetoothManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothManager;->getConnectedDevices(I)Ljava/util/List;

    move-result-object v0

    .line 94
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 95
    iget-object v2, p0, Lcom/yf/gattlib/server/a;->d:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGattServer;->cancelConnection(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/yf/gattlib/server/a;->a:Z

    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x1

    .line 104
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/yf/gattlib/server/a;->e:Z

    goto :goto_0
.end method

.method public d()Landroid/bluetooth/BluetoothGattServer;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/yf/gattlib/server/a;->d:Landroid/bluetooth/BluetoothGattServer;

    return-object v0
.end method
