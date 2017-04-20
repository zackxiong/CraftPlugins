.class Lcom/yf/gattlib/b/e;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# instance fields
.field final synthetic a:Lcom/yf/gattlib/b/d;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/b/d;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/yf/gattlib/b/e;->a:Lcom/yf/gattlib/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 0

    .prologue
    .line 30
    return-void
.end method
