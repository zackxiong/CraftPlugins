.class public Lcom/yf/gattlib/server/a/b/c;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/gattlib/server/a/b/c$1;,
        Lcom/yf/gattlib/server/a/b/c$a;
    }
.end annotation


# instance fields
.field private a:Landroid/bluetooth/BluetoothGattService;

.field private b:Landroid/bluetooth/BluetoothGattServer;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/util/Set",
            "<",
            "Ljava/util/UUID;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lcom/yf/gattlib/server/a/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothGattServer;Landroid/bluetooth/BluetoothGattService;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/yf/gattlib/server/a/b/c;->a:Landroid/bluetooth/BluetoothGattService;

    .line 38
    iput-object p1, p0, Lcom/yf/gattlib/server/a/b/c;->b:Landroid/bluetooth/BluetoothGattServer;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/server/a/b/c;->c:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/server/a/b/c;->d:Ljava/util/Map;

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/yf/gattlib/server/a/b/c;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/c;->c:Ljava/util/Map;

    return-object v0
.end method

.method private a(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/c;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 125
    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 128
    :cond_0
    return-void
.end method

.method private a(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/c;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 115
    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 117
    iget-object v1, p0, Lcom/yf/gattlib/server/a/b/c;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method private a(Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/c;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 101
    if-nez p2, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    :cond_2
    iget-object v1, p0, Lcom/yf/gattlib/server/a/b/c;->b:Landroid/bluetooth/BluetoothGattServer;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0, p1, p3}, Landroid/bluetooth/BluetoothGattServer;->notifyCharacteristicChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    goto :goto_0

    .line 106
    :cond_3
    return-void
.end method

.method private a(Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/lang/String;Z[BII)V
    .locals 4

    .prologue
    .line 90
    invoke-static {p4, p5, p6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 92
    invoke-static {}, Lcom/yf/gattlib/p/g;->b()Lcom/yf/gattlib/p/g$d;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notification:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/yf/gattlib/p/g$d;->a(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/yf/gattlib/server/a/b/c;->a(Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/lang/String;Z)V

    .line 95
    return-void
.end method

.method static synthetic a(Lcom/yf/gattlib/server/a/b/c;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/yf/gattlib/server/a/b/c;->a(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-void
.end method

.method static synthetic a(Lcom/yf/gattlib/server/a/b/c;Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/yf/gattlib/server/a/b/c;->a(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;)V

    return-void
.end method

.method static synthetic b(Lcom/yf/gattlib/server/a/b/c;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/c;->d:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/yf/gattlib/server/a/b/c;)Landroid/bluetooth/BluetoothGattServer;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/c;->b:Landroid/bluetooth/BluetoothGattServer;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/c;->a:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    return-object v0
.end method

.method public a()Landroid/bluetooth/BluetoothGattServer;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/c;->b:Landroid/bluetooth/BluetoothGattServer;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/util/UUID;[BZ)V
    .locals 10

    .prologue
    .line 57
    invoke-virtual {p0, p2}, Lcom/yf/gattlib/server/a/b/c;->a(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    .line 58
    const/16 v8, 0x12

    .line 61
    array-length v0, p3

    rem-int v9, v0, v8

    .line 63
    if-eqz v9, :cond_0

    .line 64
    array-length v0, p3

    sub-int/2addr v0, v8

    move v7, v0

    .line 69
    :goto_0
    const/4 v5, 0x0

    :goto_1
    add-int v0, v5, v8

    if-gt v0, v7, :cond_1

    .line 70
    add-int v6, v5, v8

    move-object v0, p0

    move-object v2, p1

    move v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/yf/gattlib/server/a/b/c;->a(Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/lang/String;Z[BII)V

    .line 69
    add-int/2addr v5, v8

    goto :goto_1

    .line 66
    :cond_0
    array-length v0, p3

    move v7, v0

    goto :goto_0

    .line 73
    :cond_1
    if-eqz v9, :cond_3

    .line 74
    const/4 v0, 0x1

    if-ne v9, v0, :cond_4

    .line 75
    array-length v0, p3

    sub-int/2addr v0, v5

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    move v7, v0

    .line 78
    :goto_2
    add-int v0, v5, v7

    array-length v2, p3

    if-gt v0, v2, :cond_2

    .line 79
    add-int v6, v5, v7

    move-object v0, p0

    move-object v2, p1

    move v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/yf/gattlib/server/a/b/c;->a(Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/lang/String;Z[BII)V

    .line 78
    add-int/2addr v5, v7

    goto :goto_2

    .line 82
    :cond_2
    array-length v0, p3

    if-eq v5, v0, :cond_3

    .line 83
    array-length v6, p3

    move-object v0, p0

    move-object v2, p1

    move v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/yf/gattlib/server/a/b/c;->a(Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/lang/String;Z[BII)V

    .line 86
    :cond_3
    return-void

    :cond_4
    move v7, v8

    goto :goto_2
.end method

.method public a(Ljava/util/UUID;Lcom/yf/gattlib/server/a/d;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/c;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public a(Ljava/util/UUID;[BZ)V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/yf/gattlib/server/a/b/c;->a(Ljava/lang/String;Ljava/util/UUID;[BZ)V

    .line 53
    return-void
.end method

.method public b()Lcom/yf/gattlib/server/a/c;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Lcom/yf/gattlib/server/a/b/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yf/gattlib/server/a/b/c$a;-><init>(Lcom/yf/gattlib/server/a/b/c;Lcom/yf/gattlib/server/a/b/c$1;)V

    return-object v0
.end method
