.class Lcom/yf/gattlib/server/a/b/c$a;
.super Landroid/bluetooth/BluetoothGattServerCallback;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/server/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/gattlib/server/a/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yf/gattlib/server/a/b/c;


# direct methods
.method private constructor <init>(Lcom/yf/gattlib/server/a/b/c;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/yf/gattlib/server/a/b/c$a;->a:Lcom/yf/gattlib/server/a/b/c;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattServerCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yf/gattlib/server/a/b/c;Lcom/yf/gattlib/server/a/b/c$1;)V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/yf/gattlib/server/a/b/c$a;-><init>(Lcom/yf/gattlib/server/a/b/c;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/bluetooth/BluetoothGattServerCallback;
    .locals 0

    .prologue
    .line 241
    return-object p0
.end method

.method public onCharacteristicReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 6

    .prologue
    .line 163
    const-string v0, "AncsServiceController onCharacteristicWriteRequest 0"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/c$a;->a:Lcom/yf/gattlib/server/a/b/c;

    invoke-static {v0}, Lcom/yf/gattlib/server/a/b/c;->b(Lcom/yf/gattlib/server/a/b/c;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/server/a/d;

    .line 165
    if-eqz v0, :cond_0

    .line 166
    const-string v1, "AncsServiceController onCharacteristicWriteRequest 0.1"

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 167
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/yf/gattlib/server/a/d;->a(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 173
    :goto_0
    return-void

    .line 170
    :cond_0
    const-string v0, "AncsServiceController onCharacteristicWriteRequest 0.2"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/c$a;->a:Lcom/yf/gattlib/server/a/b/c;

    invoke-static {v0}, Lcom/yf/gattlib/server/a/b/c;->c(Lcom/yf/gattlib/server/a/b/c;)Landroid/bluetooth/BluetoothGattServer;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v5

    move-object v1, p1

    move v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothGattServer;->sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z

    goto :goto_0
.end method

.method public onCharacteristicWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattCharacteristic;ZZI[B)V
    .locals 8

    .prologue
    .line 181
    const-string v0, "AncsServiceController onCharacteristicWriteRequest 1"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/c$a;->a:Lcom/yf/gattlib/server/a/b/c;

    invoke-static {v0}, Lcom/yf/gattlib/server/a/b/c;->b(Lcom/yf/gattlib/server/a/b/c;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/server/a/d;

    .line 183
    if-eqz v0, :cond_0

    .line 184
    const-string v1, "AncsServiceController onCharacteristicWriteRequest 1.1"

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    .line 185
    invoke-interface/range {v0 .. v7}, Lcom/yf/gattlib/server/a/d;->a(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattCharacteristic;ZZI[B)V

    .line 187
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->e()Lcom/yf/gattlib/a/a;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.yf.smart.push.msg"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/a/a;->c(Landroid/content/Intent;)V

    .line 194
    :goto_0
    return-void

    .line 190
    :cond_0
    const-string v0, "AncsServiceController onCharacteristicWriteRequest 2"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p3, p7}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 192
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/c$a;->a:Lcom/yf/gattlib/server/a/b/c;

    invoke-static {v0}, Lcom/yf/gattlib/server/a/b/c;->c(Lcom/yf/gattlib/server/a/b/c;)Landroid/bluetooth/BluetoothGattServer;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v5

    move-object v1, p1

    move v2, p2

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothGattServer;->sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z

    goto :goto_0
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 2

    .prologue
    .line 138
    packed-switch p3, :pswitch_data_0

    .line 154
    :goto_0
    :pswitch_0
    return-void

    .line 140
    :pswitch_1
    const-string v0, "AncsServiceController MyBluetoothGattServerCallback -10"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/c$a;->a:Lcom/yf/gattlib/server/a/b/c;

    sget-object v1, Lcom/yf/gattlib/server/a/b/d$a;->b:Ljava/util/UUID;

    invoke-static {v0, p1, v1}, Lcom/yf/gattlib/server/a/b/c;->a(Lcom/yf/gattlib/server/a/b/c;Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;)V

    .line 142
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/c$a;->a:Lcom/yf/gattlib/server/a/b/c;

    sget-object v1, Lcom/yf/gattlib/server/a/b/d$a;->c:Ljava/util/UUID;

    invoke-static {v0, p1, v1}, Lcom/yf/gattlib/server/a/b/c;->a(Lcom/yf/gattlib/server/a/b/c;Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;)V

    .line 143
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/c$a;->a:Lcom/yf/gattlib/server/a/b/c;

    sget-object v1, Lcom/yf/gattlib/server/a/b/d$a;->a:Ljava/util/UUID;

    invoke-static {v0, p1, v1}, Lcom/yf/gattlib/server/a/b/c;->a(Lcom/yf/gattlib/server/a/b/c;Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;)V

    .line 144
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/yf/gattlib/server/a/b/d;->a:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/db/Relationship;->createRelationship(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :pswitch_2
    const-string v0, "AncsServiceController MyBluetoothGattServerCallback -9"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/c$a;->a:Lcom/yf/gattlib/server/a/b/c;

    invoke-static {v0}, Lcom/yf/gattlib/server/a/b/c;->a(Lcom/yf/gattlib/server/a/b/c;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/yf/gattlib/server/a/b/d;->a:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/db/Relationship;->getRelationship(Ljava/lang/String;Ljava/lang/String;)Lcom/yf/gattlib/db/Relationship;

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDescriptorReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattDescriptor;)V
    .locals 6

    .prologue
    .line 200
    const-string v0, "AncsServiceController onDescriptorReadRequest 3"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/c$a;->a:Lcom/yf/gattlib/server/a/b/c;

    invoke-static {v0}, Lcom/yf/gattlib/server/a/b/c;->c(Lcom/yf/gattlib/server/a/b/c;)Landroid/bluetooth/BluetoothGattServer;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v5

    move-object v1, p1

    move v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothGattServer;->sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z

    .line 203
    return-void
.end method

.method public onDescriptorWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattDescriptor;ZZI[B)V
    .locals 6

    .prologue
    .line 210
    const-string v0, "AncsServiceController onDescriptorWriteRequest 4"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p3, p7}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 212
    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    invoke-static {v0, p7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-static {v0, p7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    :cond_0
    const-string v0, "AncsServiceController onDescriptorWriteRequest 4.1"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/c$a;->a:Lcom/yf/gattlib/server/a/b/c;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/yf/gattlib/server/a/b/c;->a(Lcom/yf/gattlib/server/a/b/c;Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;)V

    .line 221
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/c$a;->a:Lcom/yf/gattlib/server/a/b/c;

    invoke-static {v0}, Lcom/yf/gattlib/server/a/b/c;->c(Lcom/yf/gattlib/server/a/b/c;)Landroid/bluetooth/BluetoothGattServer;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v5

    move-object v1, p1

    move v2, p2

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothGattServer;->sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AncsServiceController onDescriptorWriteRequest device = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requestId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " descriptor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 225
    return-void

    .line 216
    :cond_2
    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    invoke-static {v0, p7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    const-string v0, "AncsServiceController onDescriptorWriteRequest 4.2"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/c$a;->a:Lcom/yf/gattlib/server/a/b/c;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/yf/gattlib/server/a/b/c;->a(Lcom/yf/gattlib/server/a/b/c;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    goto :goto_0
.end method

.method public onExecuteWrite(Landroid/bluetooth/BluetoothDevice;IZ)V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method public onServiceAdded(ILandroid/bluetooth/BluetoothGattService;)V
    .locals 0

    .prologue
    .line 158
    return-void
.end method
