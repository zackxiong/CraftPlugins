.class Lcom/yf/smart/weloopx/android/ui/activities/bo;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/z;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V
    .locals 0

    .prologue
    .line 1878
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/bo;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 7

    .prologue
    .line 1885
    invoke-static {p3}, Lcom/yf/gattlib/b/b;->a([B)Lcom/yf/gattlib/b/a;

    move-result-object v6

    .line 1887
    new-instance v1, Lcom/yf/gattlib/m/a/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/yf/gattlib/m/a/b;-><init>(Landroid/bluetooth/BluetoothDevice;IJLcom/yf/gattlib/b/a;)V

    .line 1888
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bo;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Lcom/yf/smart/weloopx/android/ui/activities/z;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLeScan "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/bo;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v3, v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->b(Lcom/yf/smart/weloopx/android/ui/activities/z;Lcom/yf/gattlib/m/a/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1889
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bo;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(Lcom/yf/smart/weloopx/android/ui/activities/z;Lcom/yf/gattlib/m/a/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1890
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bo;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->e(Lcom/yf/smart/weloopx/android/ui/activities/z;Lcom/yf/gattlib/m/a/b;)V

    .line 1891
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bo;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->t(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1892
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bo;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/bp;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/bp;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/bo;)V

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->m(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/Runnable;)V

    .line 1899
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bo;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->X(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/bo;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->W(Lcom/yf/smart/weloopx/android/ui/activities/z;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1901
    :cond_1
    return-void
.end method
