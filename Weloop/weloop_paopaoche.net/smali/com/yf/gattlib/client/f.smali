.class public Lcom/yf/gattlib/client/f;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/gattlib/client/f$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/bluetooth/BluetoothManager;

.field private c:Landroid/bluetooth/BluetoothAdapter;

.field private d:Landroid/bluetooth/BluetoothGatt;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:I

.field private h:I

.field private final i:[B

.field private j:I

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yf/gattlib/client/a;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/bluetooth/BluetoothDevice;

.field private m:Ljava/lang/Runnable;

.field private n:Landroid/bluetooth/BluetoothGattCallback;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v1, p0, Lcom/yf/gattlib/client/f;->f:Z

    .line 41
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/yf/gattlib/client/f;->i:[B

    .line 43
    iput v1, p0, Lcom/yf/gattlib/client/f;->j:I

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/client/f;->k:Ljava/util/List;

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/gattlib/client/f;->l:Landroid/bluetooth/BluetoothDevice;

    .line 274
    new-instance v0, Lcom/yf/gattlib/client/g;

    invoke-direct {v0, p0}, Lcom/yf/gattlib/client/g;-><init>(Lcom/yf/gattlib/client/f;)V

    iput-object v0, p0, Lcom/yf/gattlib/client/f;->m:Ljava/lang/Runnable;

    .line 285
    new-instance v0, Lcom/yf/gattlib/client/h;

    invoke-direct {v0, p0}, Lcom/yf/gattlib/client/h;-><init>(Lcom/yf/gattlib/client/f;)V

    iput-object v0, p0, Lcom/yf/gattlib/client/f;->n:Landroid/bluetooth/BluetoothGattCallback;

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Lcom/yf/gattlib/client/g;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/yf/gattlib/client/f;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yf/gattlib/client/f;I)I
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcom/yf/gattlib/client/f;->g:I

    return p1
.end method

.method static synthetic a(Lcom/yf/gattlib/client/f;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/yf/gattlib/client/f;->l:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic a(Lcom/yf/gattlib/client/f;)Landroid/bluetooth/BluetoothGatt;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yf/gattlib/client/f;->d:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method static synthetic a(Lcom/yf/gattlib/client/f;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/yf/gattlib/client/f;->d:Landroid/bluetooth/BluetoothGatt;

    return-object p1
.end method

.method public static a()Lcom/yf/gattlib/client/f;
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/yf/gattlib/client/f$a;->a()Lcom/yf/gattlib/client/f;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 3

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yf.gattlib.intent.action.CONNECTION_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    const-string v1, "GattServer.extract.DEVICE_ADDRESS"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-string v1, "GattServer.extract.DEVICE_STATUS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    const-string v1, "GattServer.extract.DEVICE_NEW_STATE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    const-string v1, "connection_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yf/gattlib/a/a;->a(Landroid/content/Intent;)V

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/yf/gattlib/client/f;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/yf/gattlib/client/f;->a(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic b(Lcom/yf/gattlib/client/f;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/yf/gattlib/client/f;->j:I

    return v0
.end method

.method static synthetic b(Lcom/yf/gattlib/client/f;I)I
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcom/yf/gattlib/client/f;->h:I

    return p1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 130
    iget-object v2, p0, Lcom/yf/gattlib/client/f;->i:[B

    monitor-enter v2

    .line 132
    :try_start_0
    const-string v3, "client: doConnect, into"

    invoke-static {v3}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 133
    iget-object v3, p0, Lcom/yf/gattlib/client/f;->c:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 134
    :cond_0
    const-string v1, "GattClientProxy connect: BluetoothAdapter not initialized or unspecified address."

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 136
    const-string v1, "client: doConnect, null address"

    invoke-static {v1}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 137
    monitor-exit v2

    .line 186
    :goto_0
    return v0

    .line 141
    :cond_1
    iget-object v3, p0, Lcom/yf/gattlib/client/f;->l:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/yf/gattlib/client/f;->l:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 142
    :cond_2
    iget-object v3, p0, Lcom/yf/gattlib/client/f;->c:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iput-object v3, p0, Lcom/yf/gattlib/client/f;->l:Landroid/bluetooth/BluetoothDevice;

    .line 145
    :cond_3
    iget-object v3, p0, Lcom/yf/gattlib/client/f;->l:Landroid/bluetooth/BluetoothDevice;

    if-nez v3, :cond_4

    .line 146
    const-string v1, "GattClientProxy Device not found.  Unable to connect."

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 147
    const-string v1, " client: doConnect, null device"

    invoke-static {v1}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 148
    monitor-exit v2

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 151
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/yf/gattlib/client/f;->e:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/yf/gattlib/client/f;->e:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    .line 156
    :cond_5
    if-eqz v0, :cond_6

    .line 162
    :cond_6
    invoke-direct {p0}, Lcom/yf/gattlib/client/f;->h()Z

    move-result v3

    if-nez v3, :cond_7

    .line 163
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/yf/gattlib/client/f;->d:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_7

    .line 164
    const-string v0, "GattClientProxy Trying to use an existing mBluetoothGatt for connection."

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 166
    const-string v0, "client: doConnect, use an existing"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lcom/yf/gattlib/client/f;->d:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->connect()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 168
    const/4 v0, 0x1

    iput v0, p0, Lcom/yf/gattlib/client/f;->j:I

    .line 169
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 174
    :cond_7
    iget-object v0, p0, Lcom/yf/gattlib/client/f;->d:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_8

    .line 175
    iget-object v0, p0, Lcom/yf/gattlib/client/f;->d:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/gattlib/client/f;->d:Landroid/bluetooth/BluetoothGatt;

    .line 178
    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/gattlib/client/f;->f:Z

    .line 179
    const/4 v0, 0x0

    iput v0, p0, Lcom/yf/gattlib/client/f;->g:I

    .line 181
    iget-object v0, p0, Lcom/yf/gattlib/client/f;->l:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/yf/gattlib/client/f;->a:Landroid/content/Context;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/yf/gattlib/client/f;->n:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, v3, v4, v5}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/client/f;->d:Landroid/bluetooth/BluetoothGatt;

    .line 182
    const-string v0, "GattClientProxy Trying to create a new connection."

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 183
    const-string v0, " client: doConnect, device.connectGatt"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 184
    iput-object p1, p0, Lcom/yf/gattlib/client/f;->e:Ljava/lang/String;

    .line 185
    const/4 v0, 0x1

    iput v0, p0, Lcom/yf/gattlib/client/f;->j:I

    .line 186
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/yf/gattlib/client/f;I)I
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcom/yf/gattlib/client/f;->j:I

    return p1
.end method

.method static synthetic c(Lcom/yf/gattlib/client/f;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yf/gattlib/client/f;->l:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic d(Lcom/yf/gattlib/client/f;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yf/gattlib/client/f;->m:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic e(Lcom/yf/gattlib/client/f;)Ljava/util/List;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yf/gattlib/client/f;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/yf/gattlib/client/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yf/gattlib/client/f;->e:Ljava/lang/String;

    return-object v0
.end method

.method private h()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/yf/gattlib/client/f;->f:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/yf/gattlib/client/f;->g:I

    if-eqz v0, :cond_1

    .line 197
    :cond_0
    const/4 v0, 0x1

    .line 199
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/yf/gattlib/client/f;->l:Landroid/bluetooth/BluetoothDevice;

    .line 124
    return-void
.end method

.method public a(Lcom/yf/gattlib/client/a;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yf/gattlib/client/f;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/yf/gattlib/client/f;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/yf/gattlib/client/f;->f:Z

    .line 192
    return-void
.end method

.method public a(I)Z
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/yf/gattlib/client/f;->j:I

    invoke-virtual {p0, p1, v0}, Lcom/yf/gattlib/client/f;->a(II)Z

    move-result v0

    return v0
.end method

.method public a(II)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GattClientProxy reconnectByNewStatus status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " connectionState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GattClientProxy reconnectByNewStatus status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " connectionState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 245
    iput p1, p0, Lcom/yf/gattlib/client/f;->g:I

    .line 246
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 248
    iget-object v1, p0, Lcom/yf/gattlib/client/f;->c:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/yf/gattlib/client/f;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 249
    invoke-virtual {p0}, Lcom/yf/gattlib/client/f;->d()V

    .line 250
    invoke-direct {p0, v1, p1, v0}, Lcom/yf/gattlib/client/f;->a(Landroid/bluetooth/BluetoothDevice;II)V

    .line 253
    const/4 v0, 0x1

    .line 255
    :cond_0
    return v0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 82
    iput-object p1, p0, Lcom/yf/gattlib/client/f;->a:Landroid/content/Context;

    .line 83
    iget-object v0, p0, Lcom/yf/gattlib/client/f;->b:Landroid/bluetooth/BluetoothManager;

    if-nez v0, :cond_0

    .line 84
    const-string v0, "bluetooth"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    iput-object v0, p0, Lcom/yf/gattlib/client/f;->b:Landroid/bluetooth/BluetoothManager;

    .line 86
    iget-object v0, p0, Lcom/yf/gattlib/client/f;->b:Landroid/bluetooth/BluetoothManager;

    if-nez v0, :cond_0

    .line 87
    const-string v0, "GattClientProxy"

    const-string v2, "Unable to initialize BluetoothManager."

    invoke-static {v0, v2}, Lcom/yf/gattlib/p/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 98
    :goto_0
    return v0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/client/f;->b:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/client/f;->c:Landroid/bluetooth/BluetoothAdapter;

    .line 93
    iget-object v0, p0, Lcom/yf/gattlib/client/f;->c:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    .line 94
    const-string v0, "GattClientProxy"

    const-string v2, "Unable to obtain a BluetoothAdapter."

    invoke-static {v0, v2}, Lcom/yf/gattlib/p/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 95
    goto :goto_0

    .line 98
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 102
    invoke-static {}, Lcom/yf/gattlib/p/g;->b()Lcom/yf/gattlib/p/g$d;

    move-result-object v0

    invoke-interface {v0}, Lcom/yf/gattlib/p/g$d;->a()V

    .line 103
    invoke-static {}, Lcom/yf/gattlib/p/g;->b()Lcom/yf/gattlib/p/g$d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "******New connection to : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ******"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yf/gattlib/p/g$d;->a(Ljava/lang/String;)V

    .line 105
    iget v0, p0, Lcom/yf/gattlib/client/f;->j:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/yf/gattlib/client/f;->j:I

    if-nez v0, :cond_1

    .line 107
    :cond_0
    iget v0, p0, Lcom/yf/gattlib/client/f;->h:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 108
    const/16 v0, 0x101

    iput v0, p0, Lcom/yf/gattlib/client/f;->g:I

    .line 109
    iput v3, p0, Lcom/yf/gattlib/client/f;->h:I

    .line 114
    :cond_1
    :goto_0
    iput v4, p0, Lcom/yf/gattlib/client/f;->j:I

    .line 115
    invoke-direct {p0, p1}, Lcom/yf/gattlib/client/f;->b(Ljava/lang/String;)Z

    move-result v0

    .line 116
    if-nez v0, :cond_2

    .line 117
    iput v3, p0, Lcom/yf/gattlib/client/f;->j:I

    .line 119
    :cond_2
    return v0

    .line 111
    :cond_3
    iget v0, p0, Lcom/yf/gattlib/client/f;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yf/gattlib/client/f;->h:I

    goto :goto_0
.end method

.method public b()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/yf/gattlib/client/f;->l:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 203
    iget v0, p0, Lcom/yf/gattlib/client/f;->j:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 5

    .prologue
    .line 207
    iget-object v1, p0, Lcom/yf/gattlib/client/f;->i:[B

    monitor-enter v1

    .line 208
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/yf/gattlib/client/f;->j:I

    .line 209
    iget-object v0, p0, Lcom/yf/gattlib/client/f;->c:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yf/gattlib/client/f;->d:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_1

    .line 210
    :cond_0
    const-string v0, "GattClientProxy"

    const-string v2, "disconnect: BluetoothAdapter not initialized"

    invoke-static {v0, v2}, Lcom/yf/gattlib/p/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    monitor-exit v1

    .line 219
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/yf/gattlib/client/f;->d:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 214
    const-string v2, "GattClientProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnect "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/yf/gattlib/client/f;->d:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 217
    invoke-virtual {p0}, Lcom/yf/gattlib/client/f;->e()V

    .line 218
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()V
    .locals 3

    .prologue
    .line 222
    iget-object v1, p0, Lcom/yf/gattlib/client/f;->i:[B

    monitor-enter v1

    .line 223
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/yf/gattlib/client/f;->j:I

    .line 224
    iget-object v0, p0, Lcom/yf/gattlib/client/f;->d:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    .line 225
    monitor-exit v1

    .line 236
    :goto_0
    return-void

    .line 227
    :cond_0
    const-string v0, "GattClientProxy"

    const-string v2, "mBluetoothGatt closed"

    invoke-static {v0, v2}, Lcom/yf/gattlib/p/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/yf/gattlib/client/f;->e:Ljava/lang/String;

    .line 230
    iget-object v0, p0, Lcom/yf/gattlib/client/f;->d:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/gattlib/client/f;->d:Landroid/bluetooth/BluetoothGatt;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
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

    .line 232
    :catch_0
    move-exception v0

    .line 233
    :try_start_3
    const-string v2, "GattClientProxy"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/yf/gattlib/client/f;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()Landroid/bluetooth/BluetoothGatt;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/yf/gattlib/client/f;->d:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method
