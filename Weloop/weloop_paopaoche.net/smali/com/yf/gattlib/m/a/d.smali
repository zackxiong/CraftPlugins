.class Lcom/yf/gattlib/m/a/d;
.super Landroid/content/BroadcastReceiver;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/gattlib/m/a/c;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/m/a/c;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/yf/gattlib/m/a/d;->a:Lcom/yf/gattlib/m/a/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 99
    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 101
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 102
    const-string v1, "android.bluetooth.device.extra.RSSI"

    const/16 v2, -0x3c

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v1

    .line 103
    iget-object v2, p0, Lcom/yf/gattlib/m/a/d;->a:Lcom/yf/gattlib/m/a/c;

    invoke-static {v2}, Lcom/yf/gattlib/m/a/c;->b(Lcom/yf/gattlib/m/a/c;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/yf/gattlib/m/a/d;->a:Lcom/yf/gattlib/m/a/c;

    invoke-static {v3}, Lcom/yf/gattlib/m/a/c;->a(Lcom/yf/gattlib/m/a/c;)[B

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Landroid/bluetooth/BluetoothAdapter$LeScanCallback;->onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method
