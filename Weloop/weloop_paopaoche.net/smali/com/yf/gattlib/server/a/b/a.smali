.class public Lcom/yf/gattlib/server/a/b/a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/server/a/a;


# instance fields
.field private a:Lcom/yf/gattlib/server/a/b/c;

.field private b:Landroid/bluetooth/BluetoothGattServer;

.field private c:Landroid/bluetooth/BluetoothGattService;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yf/gattlib/server/a/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothGattServer;)V
    .locals 3

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/server/a/b/a;->d:Ljava/util/List;

    .line 24
    iput-object p2, p0, Lcom/yf/gattlib/server/a/b/a;->b:Landroid/bluetooth/BluetoothGattServer;

    .line 25
    new-instance v0, Lcom/yf/gattlib/server/a/b/b;

    invoke-direct {v0}, Lcom/yf/gattlib/server/a/b/b;-><init>()V

    invoke-virtual {v0}, Lcom/yf/gattlib/server/a/b/b;->a()Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/server/a/b/a;->c:Landroid/bluetooth/BluetoothGattService;

    .line 26
    new-instance v0, Lcom/yf/gattlib/server/a/b/c;

    iget-object v1, p0, Lcom/yf/gattlib/server/a/b/a;->c:Landroid/bluetooth/BluetoothGattService;

    invoke-direct {v0, p2, v1}, Lcom/yf/gattlib/server/a/b/c;-><init>(Landroid/bluetooth/BluetoothGattServer;Landroid/bluetooth/BluetoothGattService;)V

    iput-object v0, p0, Lcom/yf/gattlib/server/a/b/a;->a:Lcom/yf/gattlib/server/a/b/c;

    .line 27
    sget-object v0, Lcom/yf/gattlib/server/a/b/d$a;->b:Ljava/util/UUID;

    new-instance v1, Lcom/yf/gattlib/server/a/b/a/a;

    iget-object v2, p0, Lcom/yf/gattlib/server/a/b/a;->a:Lcom/yf/gattlib/server/a/b/c;

    invoke-direct {v1, v2}, Lcom/yf/gattlib/server/a/b/a/a;-><init>(Lcom/yf/gattlib/server/a/b/c;)V

    invoke-virtual {p0, v0, v1}, Lcom/yf/gattlib/server/a/b/a;->a(Ljava/util/UUID;Lcom/yf/gattlib/server/a/d;)V

    .line 29
    return-void
.end method


# virtual methods
.method public a()Landroid/bluetooth/BluetoothGattService;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/a;->c:Landroid/bluetooth/BluetoothGattService;

    return-object v0
.end method

.method public a(Ljava/util/UUID;Lcom/yf/gattlib/server/a/d;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/a;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/a;->a:Lcom/yf/gattlib/server/a/b/c;

    invoke-virtual {v0, p1, p2}, Lcom/yf/gattlib/server/a/b/c;->a(Ljava/util/UUID;Lcom/yf/gattlib/server/a/d;)V

    .line 63
    return-void
.end method

.method public b()Lcom/yf/gattlib/server/a/c;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/a;->a:Lcom/yf/gattlib/server/a/b/c;

    invoke-virtual {v0}, Lcom/yf/gattlib/server/a/b/c;->b()Lcom/yf/gattlib/server/a/c;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/server/a/d;

    .line 68
    invoke-interface {v0}, Lcom/yf/gattlib/server/a/d;->a()V

    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method
