.class public Lcom/yf/gattlib/server/a/b/b;
.super Lcom/yf/gattlib/server/a/b;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/yf/gattlib/server/a/b;-><init>()V

    .line 13
    return-void
.end method

.method private a(Landroid/bluetooth/BluetoothGattService;)V
    .locals 4

    .prologue
    .line 28
    new-instance v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v1, Lcom/yf/gattlib/server/a/b/d$a;->a:Ljava/util/UUID;

    const/16 v2, 0x10

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Ljava/util/UUID;II)V

    .line 33
    new-instance v1, Landroid/bluetooth/BluetoothGattDescriptor;

    sget-object v2, Lcom/yf/gattlib/server/a/a/a$a;->a:Ljava/util/UUID;

    const/16 v3, 0x11

    invoke-direct {v1, v2, v3}, Landroid/bluetooth/BluetoothGattDescriptor;-><init>(Ljava/util/UUID;I)V

    .line 37
    sget-object v2, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 38
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->addDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    .line 39
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattService;->addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 40
    return-void
.end method

.method private b(Landroid/bluetooth/BluetoothGattService;)V
    .locals 4

    .prologue
    .line 43
    new-instance v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v1, Lcom/yf/gattlib/server/a/b/d$a;->b:Ljava/util/UUID;

    const/16 v2, 0x8

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Ljava/util/UUID;II)V

    .line 48
    new-instance v1, Landroid/bluetooth/BluetoothGattDescriptor;

    sget-object v2, Lcom/yf/gattlib/server/a/a/a$a;->a:Ljava/util/UUID;

    const/16 v3, 0x11

    invoke-direct {v1, v2, v3}, Landroid/bluetooth/BluetoothGattDescriptor;-><init>(Ljava/util/UUID;I)V

    .line 52
    const/4 v2, 0x2

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 53
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->addDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    .line 54
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattService;->addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 56
    return-void

    .line 52
    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private c(Landroid/bluetooth/BluetoothGattService;)V
    .locals 4

    .prologue
    .line 59
    new-instance v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v1, Lcom/yf/gattlib/server/a/b/d$a;->c:Ljava/util/UUID;

    const/16 v2, 0x10

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Ljava/util/UUID;II)V

    .line 64
    new-instance v1, Landroid/bluetooth/BluetoothGattDescriptor;

    sget-object v2, Lcom/yf/gattlib/server/a/a/a$a;->a:Ljava/util/UUID;

    const/16 v3, 0x11

    invoke-direct {v1, v2, v3}, Landroid/bluetooth/BluetoothGattDescriptor;-><init>(Ljava/util/UUID;I)V

    .line 68
    sget-object v2, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 69
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->addDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    .line 70
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattService;->addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 71
    return-void
.end method


# virtual methods
.method public a()Landroid/bluetooth/BluetoothGattService;
    .locals 3

    .prologue
    .line 17
    new-instance v0, Landroid/bluetooth/BluetoothGattService;

    sget-object v1, Lcom/yf/gattlib/server/a/b/d;->a:Ljava/util/UUID;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothGattService;-><init>(Ljava/util/UUID;I)V

    .line 21
    invoke-direct {p0, v0}, Lcom/yf/gattlib/server/a/b/b;->a(Landroid/bluetooth/BluetoothGattService;)V

    .line 22
    invoke-direct {p0, v0}, Lcom/yf/gattlib/server/a/b/b;->b(Landroid/bluetooth/BluetoothGattService;)V

    .line 23
    invoke-direct {p0, v0}, Lcom/yf/gattlib/server/a/b/b;->c(Landroid/bluetooth/BluetoothGattService;)V

    .line 24
    return-object v0
.end method
