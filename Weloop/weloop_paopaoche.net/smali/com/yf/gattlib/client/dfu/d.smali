.class Lcom/yf/gattlib/client/dfu/d;
.super Lcom/yf/gattlib/client/a;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/gattlib/client/dfu/b;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/client/dfu/b;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/yf/gattlib/client/dfu/d;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-direct {p0}, Lcom/yf/gattlib/client/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/bluetooth/BluetoothGattService;)Z
    .locals 2

    .prologue
    .line 193
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v0

    sget-object v1, Lcom/yf/gattlib/client/dfu/b;->b:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/16 v6, 0x10

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 272
    .line 281
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    aget-byte v0, v0, v5

    .line 282
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    aget-byte v1, v1, v4

    .line 286
    if-ne v0, v6, :cond_2

    if-ne v1, v4, :cond_2

    .line 287
    const-string v0, "DFUManager"

    const-string v1, "Received notification for StartDFU"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    aget-byte v0, v0, v3

    if-ne v0, v4, :cond_1

    .line 289
    const-string v0, "DFUManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File length is valid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v2

    aget-byte v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/d;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v0}, Lcom/yf/gattlib/client/dfu/b;->h(Lcom/yf/gattlib/client/dfu/b;)V

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    aget-byte v0, v0, v3

    .line 293
    const-string v1, "DFUManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid File Length ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Lcom/yf/gattlib/client/dfu/d;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v1}, Lcom/yf/gattlib/client/dfu/b;->a(Lcom/yf/gattlib/client/dfu/b;)Lcom/yf/gattlib/client/dfu/f;

    move-result-object v1

    const-string v2, "Invalid File Length"

    invoke-interface {v1, v2, v0}, Lcom/yf/gattlib/client/dfu/f;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 300
    :cond_2
    const/16 v2, 0x11

    if-ne v0, v2, :cond_4

    .line 301
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    .line 302
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    .line 303
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v2

    aget-byte v2, v2, v7

    and-int/lit16 v2, v2, 0xff

    .line 304
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    const/4 v4, 0x4

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    .line 305
    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v3, 0x18

    or-int/2addr v0, v1

    int-to-long v0, v0

    const-wide/16 v2, -0x1

    and-long/2addr v0, v2

    .line 307
    iget-object v2, p0, Lcom/yf/gattlib/client/dfu/d;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v2}, Lcom/yf/gattlib/client/dfu/b;->i(Lcom/yf/gattlib/client/dfu/b;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    .line 308
    iget-object v2, p0, Lcom/yf/gattlib/client/dfu/d;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v2, v0, v1}, Lcom/yf/gattlib/client/dfu/b;->a(Lcom/yf/gattlib/client/dfu/b;J)J

    .line 312
    :goto_1
    const-string v0, "DFUManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bytes received in Packet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/gattlib/client/dfu/d;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v2}, Lcom/yf/gattlib/client/dfu/b;->i(Lcom/yf/gattlib/client/dfu/b;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/d;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v0, v5}, Lcom/yf/gattlib/client/dfu/b;->f(Lcom/yf/gattlib/client/dfu/b;Z)Z

    .line 314
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/d;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v0}, Lcom/yf/gattlib/client/dfu/b;->j(Lcom/yf/gattlib/client/dfu/b;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/d;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v0}, Lcom/yf/gattlib/client/dfu/b;->j(Lcom/yf/gattlib/client/dfu/b;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_0

    .line 310
    :cond_3
    iget-object v2, p0, Lcom/yf/gattlib/client/dfu/d;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v2, v0, v1}, Lcom/yf/gattlib/client/dfu/b;->b(Lcom/yf/gattlib/client/dfu/b;J)J

    goto :goto_1

    .line 320
    :cond_4
    if-ne v0, v6, :cond_7

    if-ne v1, v7, :cond_7

    .line 321
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/d;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v0}, Lcom/yf/gattlib/client/dfu/b;->k(Lcom/yf/gattlib/client/dfu/b;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 322
    const-string v0, "DFUManager"

    const-string v1, "RECEIVE_FIRMWARE_IMAGE, isLastPacket is false!"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 325
    :cond_5
    const-string v0, "DFUManager"

    const-string v1, "File has been transfered"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    aget-byte v0, v0, v3

    if-ne v0, v4, :cond_6

    .line 327
    const-string v0, "DFUManager"

    const-string v1, "Successful File transfer!"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/d;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v0}, Lcom/yf/gattlib/client/dfu/b;->a(Lcom/yf/gattlib/client/dfu/b;)Lcom/yf/gattlib/client/dfu/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/yf/gattlib/client/dfu/f;->d()V

    .line 329
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/d;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v0}, Lcom/yf/gattlib/client/dfu/b;->l(Lcom/yf/gattlib/client/dfu/b;)V

    goto/16 :goto_0

    .line 331
    :cond_6
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    aget-byte v0, v0, v3

    .line 332
    const-string v1, "DFUManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File transfer failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v1, p0, Lcom/yf/gattlib/client/dfu/d;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v1}, Lcom/yf/gattlib/client/dfu/b;->a(Lcom/yf/gattlib/client/dfu/b;)Lcom/yf/gattlib/client/dfu/f;

    move-result-object v1

    const-string v2, "File transfer failed"

    invoke-interface {v1, v2, v0}, Lcom/yf/gattlib/client/dfu/f;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 338
    :cond_7
    if-ne v0, v6, :cond_9

    const/4 v0, 0x4

    if-ne v1, v0, :cond_9

    .line 339
    const-string v0, "DFUManager"

    const-string v1, "Transfered file has been validated"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    aget-byte v0, v0, v3

    if-ne v0, v4, :cond_8

    .line 341
    const-string v0, "DFUManager"

    const-string v1, "Successful File Transfer Validation!"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/d;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v0}, Lcom/yf/gattlib/client/dfu/b;->a(Lcom/yf/gattlib/client/dfu/b;)Lcom/yf/gattlib/client/dfu/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/yf/gattlib/client/dfu/f;->e()V

    .line 343
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/d;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v0}, Lcom/yf/gattlib/client/dfu/b;->m(Lcom/yf/gattlib/client/dfu/b;)V

    .line 344
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/d;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v0, v5}, Lcom/yf/gattlib/client/dfu/b;->g(Lcom/yf/gattlib/client/dfu/b;Z)Z

    goto/16 :goto_0

    .line 346
    :cond_8
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    aget-byte v0, v0, v3

    .line 347
    const-string v1, "DFUManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File validation failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v1, p0, Lcom/yf/gattlib/client/dfu/d;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v1}, Lcom/yf/gattlib/client/dfu/b;->a(Lcom/yf/gattlib/client/dfu/b;)Lcom/yf/gattlib/client/dfu/f;

    move-result-object v1

    const-string v2, "File validation failed"

    invoke-interface {v1, v2, v0}, Lcom/yf/gattlib/client/dfu/f;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 351
    :cond_9
    const-string v0, "DFUManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v2

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 233
    const-string v0, "DFUManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCharacteristicWrite ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    if-nez p3, :cond_4

    .line 235
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    sget-object v1, Lcom/yf/gattlib/client/dfu/b;->d:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    sget-object v1, Lcom/yf/gattlib/client/dfu/b;->c:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/d;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v0}, Lcom/yf/gattlib/client/dfu/b;->b(Lcom/yf/gattlib/client/dfu/b;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 245
    const-string v0, "DFUManager"

    const-string v1, "successfully written startDFU and now writing file size"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/d;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v0}, Lcom/yf/gattlib/client/dfu/b;->c(Lcom/yf/gattlib/client/dfu/b;)V

    .line 247
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/d;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v0, v3}, Lcom/yf/gattlib/client/dfu/b;->c(Lcom/yf/gattlib/client/dfu/b;Z)Z

    goto :goto_0

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/d;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v0}, Lcom/yf/gattlib/client/dfu/b;->d(Lcom/yf/gattlib/client/dfu/b;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 249
    const-string v0, "DFUManager"

    const-string v1, "successfully written Packet received notification and now writing receive firmware image"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/d;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v0}, Lcom/yf/gattlib/client/dfu/b;->e(Lcom/yf/gattlib/client/dfu/b;)V

    .line 251
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/d;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v0, v3}, Lcom/yf/gattlib/client/dfu/b;->d(Lcom/yf/gattlib/client/dfu/b;Z)Z

    goto :goto_0

    .line 252
    :cond_3
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/d;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v0}, Lcom/yf/gattlib/client/dfu/b;->f(Lcom/yf/gattlib/client/dfu/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    const-string v0, "DFUManager"

    const-string v1, "successfully written ReceiveFirmwareImage and now writing file"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/d;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v0, v3}, Lcom/yf/gattlib/client/dfu/b;->e(Lcom/yf/gattlib/client/dfu/b;Z)Z

    .line 256
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/d;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v0}, Lcom/yf/gattlib/client/dfu/b;->g(Lcom/yf/gattlib/client/dfu/b;)V

    goto :goto_0

    .line 260
    :cond_4
    const-string v0, "DFUManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error on writing characteristic ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/d;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v0, v3}, Lcom/yf/gattlib/client/dfu/b;->a(Lcom/yf/gattlib/client/dfu/b;Z)Z

    .line 262
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/d;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v0}, Lcom/yf/gattlib/client/dfu/b;->a(Lcom/yf/gattlib/client/dfu/b;)Lcom/yf/gattlib/client/dfu/f;

    move-result-object v0

    const-string v1, "Error on writing characteristic"

    invoke-interface {v0, v1, p3}, Lcom/yf/gattlib/client/dfu/f;->a(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 2

    .prologue
    .line 202
    if-nez p3, :cond_0

    .line 203
    const-string v0, "DFUManager"

    const-string v1, "Device disconnected"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/d;->a:Lcom/yf/gattlib/client/dfu/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yf/gattlib/client/dfu/b;->a(Lcom/yf/gattlib/client/dfu/b;Z)Z

    .line 205
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/d;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v0}, Lcom/yf/gattlib/client/dfu/b;->a(Lcom/yf/gattlib/client/dfu/b;)Lcom/yf/gattlib/client/dfu/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/yf/gattlib/client/dfu/f;->b()V

    .line 207
    :cond_0
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 3

    .prologue
    .line 361
    if-nez p3, :cond_1

    .line 362
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/d;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v0}, Lcom/yf/gattlib/client/dfu/b;->n(Lcom/yf/gattlib/client/dfu/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/d;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v0}, Lcom/yf/gattlib/client/dfu/b;->o(Lcom/yf/gattlib/client/dfu/b;)V

    .line 372
    :goto_0
    return-void

    .line 365
    :cond_0
    const-string v0, "DFUManager"

    const-string v1, "Notification is disabled!"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 368
    :cond_1
    const-string v0, "DFUManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error on writing descriptor ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/d;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v0}, Lcom/yf/gattlib/client/dfu/b;->a(Lcom/yf/gattlib/client/dfu/b;)Lcom/yf/gattlib/client/dfu/f;

    move-result-object v0

    const-string v1, "Error on writing descriptor"

    invoke-interface {v0, v1, p3}, Lcom/yf/gattlib/client/dfu/f;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 215
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/d;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v0, v1}, Lcom/yf/gattlib/client/dfu/b;->b(Lcom/yf/gattlib/client/dfu/b;Z)Z

    .line 216
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/d;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v0, v1}, Lcom/yf/gattlib/client/dfu/b;->a(Lcom/yf/gattlib/client/dfu/b;Z)Z

    .line 217
    if-nez p2, :cond_0

    .line 218
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/yf/gattlib/client/dfu/d;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v1, v0}, Lcom/yf/gattlib/client/dfu/b;->a(Lcom/yf/gattlib/client/dfu/b;Ljava/util/List;)V

    .line 223
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/d;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v0}, Lcom/yf/gattlib/client/dfu/b;->a(Lcom/yf/gattlib/client/dfu/b;)Lcom/yf/gattlib/client/dfu/f;

    move-result-object v0

    const-string v1, "Error on discovering services"

    invoke-interface {v0, v1, p2}, Lcom/yf/gattlib/client/dfu/f;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method
