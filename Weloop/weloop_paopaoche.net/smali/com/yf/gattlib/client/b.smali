.class public Lcom/yf/gattlib/client/b;
.super Lcom/yf/gattlib/client/a;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/gattlib/client/b$1;,
        Lcom/yf/gattlib/client/b$a;
    }
.end annotation


# instance fields
.field private a:[Ljava/util/UUID;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/yf/gattlib/client/a;-><init>()V

    .line 16
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/util/UUID;

    const/4 v1, 0x0

    sget-object v2, Lcom/yf/gattlib/client/i;->b:Ljava/util/UUID;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/yf/gattlib/client/i;->e:Ljava/util/UUID;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/yf/gattlib/client/i;->l:Ljava/util/UUID;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/yf/gattlib/client/i;->w:Ljava/util/UUID;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/yf/gattlib/client/b;->a:[Ljava/util/UUID;

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Lcom/yf/gattlib/client/b$1;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/yf/gattlib/client/b;-><init>()V

    return-void
.end method

.method public static a()Lcom/yf/gattlib/client/b;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/yf/gattlib/client/b$a;->a:Lcom/yf/gattlib/client/b;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/UUID;Ljava/util/UUID;)V
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Lcom/yf/gattlib/client/f;->a()Lcom/yf/gattlib/client/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/client/f;->g()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 56
    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/yf/gattlib/e/e;

    const-string v1, "Null Gatt"

    invoke-direct {v0, v1}, Lcom/yf/gattlib/e/e;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    .line 60
    if-nez v1, :cond_1

    .line 61
    new-instance v0, Lcom/yf/gattlib/e/e;

    const-string v1, "Null Service"

    invoke-direct {v0, v1}, Lcom/yf/gattlib/e/e;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_1
    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 65
    return-void
.end method

.method public a(Landroid/bluetooth/BluetoothGattService;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 38
    iget-object v3, p0, Lcom/yf/gattlib/client/b;->a:[Ljava/util/UUID;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 39
    invoke-virtual {v5, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 40
    const/4 v0, 0x1

    .line 43
    :cond_0
    return v0

    .line 38
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/yf/gattlib/client/f;->a()Lcom/yf/gattlib/client/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yf/gattlib/client/f;->a(Lcom/yf/gattlib/client/a;)V

    .line 33
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 5

    .prologue
    .line 49
    invoke-static {}, Lcom/yf/gattlib/client/c;->a()Lcom/yf/gattlib/client/c;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/yf/gattlib/client/c;->a(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;[B)V

    .line 51
    return-void
.end method
