.class Lcom/yf/gattlib/client/g;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/gattlib/client/f;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/client/f;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/yf/gattlib/client/g;->a:Lcom/yf/gattlib/client/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 277
    const-string v0, "GattClientProxy"

    const-string v1, "discoverTimeout"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v0, "discoverTimeout"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 279
    iget-object v0, p0, Lcom/yf/gattlib/client/g;->a:Lcom/yf/gattlib/client/f;

    invoke-static {v0}, Lcom/yf/gattlib/client/f;->a(Lcom/yf/gattlib/client/f;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/yf/gattlib/client/g;->a:Lcom/yf/gattlib/client/f;

    invoke-static {v0}, Lcom/yf/gattlib/client/f;->a(Lcom/yf/gattlib/client/f;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 282
    :cond_0
    return-void
.end method
