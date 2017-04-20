.class public Lcom/yf/lib/bt/client/GattClientConnectEvent;
.super Lcom/yf/lib/b/a;
.source "ProGuard"


# instance fields
.field public final device:Landroid/bluetooth/BluetoothDevice;

.field public final state:I


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/yf/lib/b/a;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/yf/lib/bt/client/GattClientConnectEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 16
    iput p2, p0, Lcom/yf/lib/bt/client/GattClientConnectEvent;->state:I

    .line 17
    return-void
.end method
