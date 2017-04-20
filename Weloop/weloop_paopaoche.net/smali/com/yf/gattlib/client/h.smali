.class Lcom/yf/gattlib/client/h;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/gattlib/client/f;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/client/f;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/yf/gattlib/client/h;->a:Lcom/yf/gattlib/client/f;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 4

    .prologue
    .line 407
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    .line 408
    iget-object v0, p0, Lcom/yf/gattlib/client/h;->a:Lcom/yf/gattlib/client/f;

    invoke-static {v0}, Lcom/yf/gattlib/client/f;->e(Lcom/yf/gattlib/client/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 409
    iget-object v0, p0, Lcom/yf/gattlib/client/h;->a:Lcom/yf/gattlib/client/f;

    invoke-static {v0}, Lcom/yf/gattlib/client/f;->e(Lcom/yf/gattlib/client/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/client/a;

    .line 410
    invoke-virtual {v0, v2}, Lcom/yf/gattlib/client/a;->a(Landroid/bluetooth/BluetoothGattService;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 411
    invoke-virtual {v0, p1, p2}, Lcom/yf/gattlib/client/a;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 415
    :cond_0
    return-void

    .line 408
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 4

    .prologue
    .line 383
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    .line 384
    iget-object v0, p0, Lcom/yf/gattlib/client/h;->a:Lcom/yf/gattlib/client/f;

    invoke-static {v0}, Lcom/yf/gattlib/client/f;->e(Lcom/yf/gattlib/client/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 385
    iget-object v0, p0, Lcom/yf/gattlib/client/h;->a:Lcom/yf/gattlib/client/f;

    invoke-static {v0}, Lcom/yf/gattlib/client/f;->e(Lcom/yf/gattlib/client/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/client/a;

    .line 386
    invoke-virtual {v0, v2}, Lcom/yf/gattlib/client/a;->a(Landroid/bluetooth/BluetoothGattService;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 387
    invoke-virtual {v0, p1, p2, p3}, Lcom/yf/gattlib/client/a;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 391
    :cond_0
    return-void

    .line 384
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 4

    .prologue
    .line 395
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    .line 396
    iget-object v0, p0, Lcom/yf/gattlib/client/h;->a:Lcom/yf/gattlib/client/f;

    invoke-static {v0}, Lcom/yf/gattlib/client/f;->e(Lcom/yf/gattlib/client/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 397
    iget-object v0, p0, Lcom/yf/gattlib/client/h;->a:Lcom/yf/gattlib/client/f;

    invoke-static {v0}, Lcom/yf/gattlib/client/f;->e(Lcom/yf/gattlib/client/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/client/a;

    .line 398
    invoke-virtual {v0, v2}, Lcom/yf/gattlib/client/a;->a(Landroid/bluetooth/BluetoothGattService;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 399
    invoke-virtual {v0, p1, p2, p3}, Lcom/yf/gattlib/client/a;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 403
    :cond_0
    return-void

    .line 396
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 288
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/f/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onConnectionStateChange , status= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", newState= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", connectionState= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/client/h;->a:Lcom/yf/gattlib/client/f;

    invoke-static {v1}, Lcom/yf/gattlib/client/f;->b(Lcom/yf/gattlib/client/f;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GattClientProxy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 297
    iget-object v1, p0, Lcom/yf/gattlib/client/h;->a:Lcom/yf/gattlib/client/f;

    invoke-static {v1}, Lcom/yf/gattlib/client/f;->c(Lcom/yf/gattlib/client/f;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/yf/gattlib/client/h;->a:Lcom/yf/gattlib/client/f;

    invoke-static {v1}, Lcom/yf/gattlib/client/f;->c(Lcom/yf/gattlib/client/f;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/yf/gattlib/client/h;->a:Lcom/yf/gattlib/client/f;

    invoke-static {v1}, Lcom/yf/gattlib/client/f;->c(Lcom/yf/gattlib/client/f;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 298
    :cond_2
    iget-object v1, p0, Lcom/yf/gattlib/client/h;->a:Lcom/yf/gattlib/client/f;

    invoke-static {v1, v0}, Lcom/yf/gattlib/client/f;->a(Lcom/yf/gattlib/client/f;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 300
    :cond_3
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->k()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/client/h;->a:Lcom/yf/gattlib/client/f;

    invoke-static {v1}, Lcom/yf/gattlib/client/f;->d(Lcom/yf/gattlib/client/f;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 301
    iget-object v0, p0, Lcom/yf/gattlib/client/h;->a:Lcom/yf/gattlib/client/f;

    invoke-static {v0, p2}, Lcom/yf/gattlib/client/f;->a(Lcom/yf/gattlib/client/f;I)I

    .line 302
    if-ne p3, v5, :cond_7

    .line 303
    iget-object v0, p0, Lcom/yf/gattlib/client/h;->a:Lcom/yf/gattlib/client/f;

    invoke-virtual {v0, p2, v4}, Lcom/yf/gattlib/client/f;->a(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    invoke-static {}, Lcom/yf/gattlib/b/d;->a()Lcom/yf/gattlib/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/b/d;->d()V

    .line 309
    iget-object v0, p0, Lcom/yf/gattlib/client/h;->a:Lcom/yf/gattlib/client/f;

    invoke-static {v0}, Lcom/yf/gattlib/client/f;->b(Lcom/yf/gattlib/client/f;)I

    move-result v0

    if-eq v0, v4, :cond_4

    .line 310
    iget-object v0, p0, Lcom/yf/gattlib/client/h;->a:Lcom/yf/gattlib/client/f;

    invoke-virtual {v0}, Lcom/yf/gattlib/client/f;->d()V

    goto/16 :goto_0

    .line 313
    :cond_4
    iget-object v0, p0, Lcom/yf/gattlib/client/h;->a:Lcom/yf/gattlib/client/f;

    invoke-static {v0, v3}, Lcom/yf/gattlib/client/f;->b(Lcom/yf/gattlib/client/f;I)I

    .line 314
    iget-object v0, p0, Lcom/yf/gattlib/client/h;->a:Lcom/yf/gattlib/client/f;

    invoke-static {v0, v5}, Lcom/yf/gattlib/client/f;->c(Lcom/yf/gattlib/client/f;I)I

    .line 315
    iget-object v0, p0, Lcom/yf/gattlib/client/h;->a:Lcom/yf/gattlib/client/f;

    invoke-static {v0}, Lcom/yf/gattlib/client/f;->a(Lcom/yf/gattlib/client/f;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-nez v0, :cond_5

    .line 316
    iget-object v0, p0, Lcom/yf/gattlib/client/h;->a:Lcom/yf/gattlib/client/f;

    invoke-static {v0, p1}, Lcom/yf/gattlib/client/f;->a(Lcom/yf/gattlib/client/f;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;

    .line 319
    :cond_5
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->k()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/client/h;->a:Lcom/yf/gattlib/client/f;

    invoke-static {v1}, Lcom/yf/gattlib/client/f;->d(Lcom/yf/gattlib/client/f;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1b58

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 320
    invoke-static {p1}, Lcom/yf/gattlib/b/b;->b(Landroid/bluetooth/BluetoothGatt;)V

    .line 321
    iget-object v0, p0, Lcom/yf/gattlib/client/h;->a:Lcom/yf/gattlib/client/f;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lcom/yf/gattlib/client/f;->a(Lcom/yf/gattlib/client/f;Landroid/bluetooth/BluetoothDevice;II)V

    .line 322
    const-string v0, "GattClientProxy GattClientProxy onConnectionStateChange() Connected to GATT server."

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 323
    const-string v0, "GattClientProxy GattClientProxy onConnectionStateChange() Connected to GATT server."

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 336
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/yf/gattlib/client/h;->a:Lcom/yf/gattlib/client/f;

    invoke-static {v0}, Lcom/yf/gattlib/client/f;->e(Lcom/yf/gattlib/client/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_0

    .line 337
    iget-object v0, p0, Lcom/yf/gattlib/client/h;->a:Lcom/yf/gattlib/client/f;

    invoke-static {v0}, Lcom/yf/gattlib/client/f;->e(Lcom/yf/gattlib/client/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/client/a;

    .line 338
    invoke-virtual {v0, p1, p2, p3}, Lcom/yf/gattlib/client/a;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    .line 336
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 324
    :cond_7
    if-nez p3, :cond_6

    .line 325
    invoke-static {}, Lcom/yf/gattlib/p/g;->b()Lcom/yf/gattlib/p/g$d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "****** Disconnet to : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ******\r\n\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yf/gattlib/p/g$d;->a(Ljava/lang/String;)V

    .line 329
    invoke-static {}, Lcom/yf/gattlib/p/g;->b()Lcom/yf/gattlib/p/g$d;

    move-result-object v0

    invoke-interface {v0}, Lcom/yf/gattlib/p/g$d;->b()V

    .line 330
    iget-object v0, p0, Lcom/yf/gattlib/client/h;->a:Lcom/yf/gattlib/client/f;

    invoke-static {v0, v3}, Lcom/yf/gattlib/client/f;->c(Lcom/yf/gattlib/client/f;I)I

    .line 331
    const-string v0, "GattClientProxy"

    const-string v1, " GattClientProxy onConnectionStateChange() Disconnected from GATT server. "

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v0, "GattClientProxy GattClientProxy onConnectionStateChange() Disconnected from GATT server. "

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 333
    iget-object v0, p0, Lcom/yf/gattlib/client/h;->a:Lcom/yf/gattlib/client/f;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lcom/yf/gattlib/client/f;->a(Lcom/yf/gattlib/client/f;Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_1
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 4

    .prologue
    .line 419
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    .line 420
    iget-object v0, p0, Lcom/yf/gattlib/client/h;->a:Lcom/yf/gattlib/client/f;

    invoke-static {v0}, Lcom/yf/gattlib/client/f;->e(Lcom/yf/gattlib/client/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 421
    iget-object v0, p0, Lcom/yf/gattlib/client/h;->a:Lcom/yf/gattlib/client/f;

    invoke-static {v0}, Lcom/yf/gattlib/client/f;->e(Lcom/yf/gattlib/client/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/client/a;

    .line 422
    invoke-virtual {v0, v2}, Lcom/yf/gattlib/client/a;->a(Landroid/bluetooth/BluetoothGattService;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 423
    invoke-virtual {v0, p1, p2, p3}, Lcom/yf/gattlib/client/a;->onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 427
    :cond_0
    return-void

    .line 420
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 4

    .prologue
    .line 431
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    .line 432
    iget-object v0, p0, Lcom/yf/gattlib/client/h;->a:Lcom/yf/gattlib/client/f;

    invoke-static {v0}, Lcom/yf/gattlib/client/f;->e(Lcom/yf/gattlib/client/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 433
    iget-object v0, p0, Lcom/yf/gattlib/client/h;->a:Lcom/yf/gattlib/client/f;

    invoke-static {v0}, Lcom/yf/gattlib/client/f;->e(Lcom/yf/gattlib/client/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/client/a;

    .line 434
    invoke-virtual {v0, v2}, Lcom/yf/gattlib/client/a;->a(Landroid/bluetooth/BluetoothGattService;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 435
    invoke-virtual {v0, p1, p2, p3}, Lcom/yf/gattlib/client/a;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 439
    :cond_0
    return-void

    .line 432
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/yf/gattlib/client/h;->a:Lcom/yf/gattlib/client/f;

    invoke-static {v0}, Lcom/yf/gattlib/client/f;->e(Lcom/yf/gattlib/client/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 452
    iget-object v0, p0, Lcom/yf/gattlib/client/h;->a:Lcom/yf/gattlib/client/f;

    invoke-static {v0}, Lcom/yf/gattlib/client/f;->e(Lcom/yf/gattlib/client/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/client/a;

    .line 453
    invoke-virtual {v0, p1, p2, p3}, Lcom/yf/gattlib/client/a;->onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V

    .line 451
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 455
    :cond_0
    return-void
.end method

.method public onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/yf/gattlib/client/h;->a:Lcom/yf/gattlib/client/f;

    invoke-static {v0}, Lcom/yf/gattlib/client/f;->e(Lcom/yf/gattlib/client/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 444
    iget-object v0, p0, Lcom/yf/gattlib/client/h;->a:Lcom/yf/gattlib/client/f;

    invoke-static {v0}, Lcom/yf/gattlib/client/f;->e(Lcom/yf/gattlib/client/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/client/a;

    .line 445
    invoke-virtual {v0, p1, p2}, Lcom/yf/gattlib/client/a;->onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V

    .line 443
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 447
    :cond_0
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 2

    .prologue
    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/gattlib/client/h;->a:Lcom/yf/gattlib/client/f;

    invoke-static {v1}, Lcom/yf/gattlib/client/f;->f(Lcom/yf/gattlib/client/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 349
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/f/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 380
    :cond_0
    return-void

    .line 354
    :cond_1
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->k()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/client/h;->a:Lcom/yf/gattlib/client/f;

    invoke-static {v1}, Lcom/yf/gattlib/client/f;->d(Lcom/yf/gattlib/client/f;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GattClientProxy GattClientProxy onServicesDiscovered() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GattClientProxy GattClientProxy onServicesDiscovered() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 357
    iget-object v0, p0, Lcom/yf/gattlib/client/h;->a:Lcom/yf/gattlib/client/f;

    invoke-virtual {v0, p2}, Lcom/yf/gattlib/client/f;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/yf/gattlib/client/h;->a:Lcom/yf/gattlib/client/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/client/f;->a(Z)V

    .line 376
    iget-object v0, p0, Lcom/yf/gattlib/client/h;->a:Lcom/yf/gattlib/client/f;

    invoke-static {v0}, Lcom/yf/gattlib/client/f;->e(Lcom/yf/gattlib/client/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 377
    iget-object v0, p0, Lcom/yf/gattlib/client/h;->a:Lcom/yf/gattlib/client/f;

    invoke-static {v0}, Lcom/yf/gattlib/client/f;->e(Lcom/yf/gattlib/client/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/client/a;

    .line 378
    invoke-virtual {v0, p1, p2}, Lcom/yf/gattlib/client/a;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V

    .line 376
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method
