.class Lcom/yf/gattlib/server/b;
.super Landroid/bluetooth/BluetoothGattServerCallback;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/gattlib/server/a;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/server/a;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/yf/gattlib/server/b;->a:Lcom/yf/gattlib/server/a;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattServerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/yf/gattlib/server/b;->a:Lcom/yf/gattlib/server/a;

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/server/a;->a(Lcom/yf/gattlib/server/a;Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/BluetoothGattServerCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/bluetooth/BluetoothGattServerCallback;->onCharacteristicReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 247
    return-void
.end method

.method public onCharacteristicWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattCharacteristic;ZZI[B)V
    .locals 8

    .prologue
    .line 255
    iget-object v0, p0, Lcom/yf/gattlib/server/b;->a:Lcom/yf/gattlib/server/a;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/server/a;->a(Lcom/yf/gattlib/server/a;Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/BluetoothGattServerCallback;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/BluetoothGattServerCallback;->onCharacteristicWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattCharacteristic;ZZI[B)V

    .line 258
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 3

    .prologue
    .line 216
    const-string v0, "GattServerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectionStateChange , status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    packed-switch p3, :pswitch_data_0

    .line 233
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/yf/gattlib/server/b;->a:Lcom/yf/gattlib/server/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yf/gattlib/server/a;->a(Landroid/bluetooth/BluetoothDevice;II)V

    .line 234
    :goto_1
    return-void

    .line 219
    :pswitch_1
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/f/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    const-string v0, "GattServerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectionStateChange , status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", not current device!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/server/b;->a:Lcom/yf/gattlib/server/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yf/gattlib/server/a;->a(Lcom/yf/gattlib/server/a;Z)Z

    goto :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDescriptorReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattDescriptor;)V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/yf/gattlib/server/b;->a:Lcom/yf/gattlib/server/a;

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/server/a;->a(Lcom/yf/gattlib/server/a;Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/BluetoothGattServerCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/bluetooth/BluetoothGattServerCallback;->onDescriptorReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattDescriptor;)V

    .line 266
    return-void
.end method

.method public onDescriptorWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattDescriptor;ZZI[B)V
    .locals 8

    .prologue
    .line 273
    const-string v0, "GattServerManager onDescriptorWriteRequest() "

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/yf/gattlib/server/b;->a:Lcom/yf/gattlib/server/a;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/server/a;->a(Lcom/yf/gattlib/server/a;Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/BluetoothGattServerCallback;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/BluetoothGattServerCallback;->onDescriptorWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattDescriptor;ZZI[B)V

    .line 277
    return-void
.end method

.method public onExecuteWrite(Landroid/bluetooth/BluetoothDevice;IZ)V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/yf/gattlib/server/b;->a:Lcom/yf/gattlib/server/a;

    invoke-static {v0}, Lcom/yf/gattlib/server/a;->a(Lcom/yf/gattlib/server/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/server/a/a;

    .line 282
    invoke-interface {v0}, Lcom/yf/gattlib/server/a/a;->b()Lcom/yf/gattlib/server/a/c;

    move-result-object v0

    .line 283
    invoke-interface {v0}, Lcom/yf/gattlib/server/a/c;->a()Landroid/bluetooth/BluetoothGattServerCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattServerCallback;->onExecuteWrite(Landroid/bluetooth/BluetoothDevice;IZ)V

    goto :goto_0

    .line 285
    :cond_0
    return-void
.end method

.method public onServiceAdded(ILandroid/bluetooth/BluetoothGattService;)V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/yf/gattlib/server/b;->a:Lcom/yf/gattlib/server/a;

    invoke-static {v0, p2}, Lcom/yf/gattlib/server/a;->a(Lcom/yf/gattlib/server/a;Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/BluetoothGattServerCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothGattServerCallback;->onServiceAdded(ILandroid/bluetooth/BluetoothGattService;)V

    .line 240
    return-void
.end method
