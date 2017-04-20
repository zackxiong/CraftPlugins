.class public Lcom/yf/gattlib/client/b/ai;
.super Lcom/yf/gattlib/client/a;
.source "ProGuard"


# instance fields
.field private a:Lcom/yf/gattlib/client/b/be;

.field private b:Lcom/yf/gattlib/c/g;

.field private c:Ljava/util/UUID;

.field private d:Ljava/lang/String;

.field private e:Landroid/bluetooth/BluetoothGattCharacteristic;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/client/b/be;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/yf/gattlib/client/a;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/yf/gattlib/client/b/ai;->a:Lcom/yf/gattlib/client/b/be;

    .line 40
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->l()Lcom/yf/gattlib/c/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/yf/gattlib/c/b;->c()Lcom/yf/gattlib/c/g;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/client/b/ai;->b:Lcom/yf/gattlib/c/g;

    .line 41
    iget-object v0, p0, Lcom/yf/gattlib/client/b/ai;->b:Lcom/yf/gattlib/c/g;

    invoke-virtual {v0}, Lcom/yf/gattlib/c/g;->a()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/client/b/ai;->c:Ljava/util/UUID;

    .line 42
    return-void
.end method


# virtual methods
.method public a([BII)V
    .locals 11

    .prologue
    const/16 v2, 0x1e

    .line 92
    iget-object v0, p0, Lcom/yf/gattlib/client/b/ai;->e:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/yf/gattlib/e/b;

    const-string v1, "No rx characteristic"

    invoke-direct {v0, v1}, Lcom/yf/gattlib/e/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    invoke-static {}, Lcom/yf/gattlib/client/f;->a()Lcom/yf/gattlib/client/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/client/f;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    new-instance v0, Lcom/yf/gattlib/e/b;

    const-string v1, "Disconnected!!!"

    invoke-direct {v0, v1}, Lcom/yf/gattlib/e/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1
    invoke-static {p1, p2}, Lcom/yf/gattlib/p/f;->a([BI)Ljava/util/List;

    move-result-object v0

    .line 101
    invoke-static {}, Lcom/yf/gattlib/client/f;->a()Lcom/yf/gattlib/client/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/gattlib/client/f;->g()Landroid/bluetooth/BluetoothGatt;

    move-result-object v6

    .line 102
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 103
    int-to-long v4, p3

    invoke-static {v4, v5}, Lcom/yf/gattlib/p/k;->a(J)V

    .line 106
    iget-object v1, p0, Lcom/yf/gattlib/client/b/ai;->e:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 107
    if-nez v6, :cond_3

    .line 108
    new-instance v0, Lcom/yf/gattlib/e/b;

    const-string v1, "gatt is null"

    invoke-direct {v0, v1}, Lcom/yf/gattlib/e/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_3
    iget-object v1, p0, Lcom/yf/gattlib/client/b/ai;->e:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v6, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v3

    .line 112
    if-nez v3, :cond_5

    .line 113
    const/4 v4, 0x0

    .line 114
    if-le p3, v2, :cond_4

    move v1, p3

    :goto_1
    move v10, v1

    move v1, v3

    move v3, v10

    .line 115
    :goto_2
    if-nez v1, :cond_6

    const/4 v5, 0x5

    if-ge v4, v5, :cond_6

    .line 116
    mul-int/lit8 v1, v3, 0x2

    .line 117
    int-to-long v8, v1

    invoke-static {v8, v9}, Lcom/yf/gattlib/p/k;->a(J)V

    .line 118
    iget-object v3, p0, Lcom/yf/gattlib/client/b/ai;->e:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v6, v3}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v5

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " retry "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " write TXchar - status= "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " , value= "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 121
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RxBleCallback"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 122
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v1

    move v1, v5

    .line 123
    goto :goto_2

    :cond_4
    move v1, v2

    .line 114
    goto :goto_1

    :cond_5
    move v1, v3

    .line 126
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " write TXchar - status= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , value= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RxBleCallback"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 128
    if-nez v1, :cond_2

    .line 129
    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 132
    :cond_7
    return-void
.end method

.method public a(Landroid/bluetooth/BluetoothGattService;)Z
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/client/b/ai;->c:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 5

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yf/gattlib/client/b/ai;->a:Lcom/yf/gattlib/client/b/be;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/yf/gattlib/client/b/ai;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/client/b/be;->a([B[Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0, p1, p2, p3}, Lcom/yf/gattlib/client/a;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 88
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 51
    const-string v0, "RxBleCallback onServicesDiscovered() "

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 52
    const-string v0, "RxBleCallback onServicesDiscovered() "

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/yf/gattlib/client/b/ai;->c:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yf/gattlib/client/b/ai;->d:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lcom/yf/gattlib/client/b/ai;->b:Lcom/yf/gattlib/c/g;

    invoke-virtual {v1}, Lcom/yf/gattlib/c/g;->b()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    iput-object v1, p0, Lcom/yf/gattlib/client/b/ai;->e:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 57
    iget-object v1, p0, Lcom/yf/gattlib/client/b/ai;->e:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 59
    iget-object v1, p0, Lcom/yf/gattlib/client/b/ai;->b:Lcom/yf/gattlib/c/g;

    invoke-virtual {v1}, Lcom/yf/gattlib/c/g;->c()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 61
    invoke-virtual {p1, v0, v2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 62
    sget-object v1, Lcom/yf/gattlib/client/i;->a:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    .line 63
    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 64
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    .line 65
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/k;->a(J)V

    .line 66
    const-string v0, "RxBleCallback BroadcastProxy notifyChanged : rx_service_uuid"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 67
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v0

    const-string v1, "rx_service_uuid"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    :cond_0
    return-void
.end method
