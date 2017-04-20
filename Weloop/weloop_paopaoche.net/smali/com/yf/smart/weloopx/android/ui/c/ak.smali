.class public Lcom/yf/smart/weloopx/android/ui/c/ak;
.super Lcom/yf/smart/weloopx/android/ui/c/j;
.source "ProGuard"


# instance fields
.field private b:Landroid/bluetooth/BluetoothDevice;

.field private c:Lcom/yf/gattlib/d/b$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/j;-><init>()V

    .line 33
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/al;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/c/al;-><init>(Lcom/yf/smart/weloopx/android/ui/c/ak;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ak;->c:Lcom/yf/gattlib/d/b$a;

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .prologue
    .line 26
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 27
    const-string v1, "device"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 28
    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/ak;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/android/ui/c/ak;-><init>()V

    .line 29
    invoke-virtual {v1, v0}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "connecting"

    invoke-static {v1, v0, v2}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 31
    return-void
.end method


# virtual methods
.method protected a(Landroid/app/Dialog;)V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/j;->a(Landroid/app/Dialog;)V

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/ak;->setCancelable(Z)V

    .line 51
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/j;->onAttach(Landroid/app/Activity;)V

    .line 56
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/ak;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "device"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ak;->b:Landroid/bluetooth/BluetoothDevice;

    .line 57
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ak;->b:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/ak;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/b;->b(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/ak;->b()V

    .line 60
    :cond_1
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/ak;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ak;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 64
    :cond_2
    invoke-static {v0}, Lcom/yf/smart/weloopx/c/w;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-static {v1}, Lcom/yf/smart/weloopx/c/v;->a(Ljava/lang/String;)Lcom/yf/smart/weloopx/c/v;

    move-result-object v1

    .line 66
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/c/v;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    const v1, 0x7f07009a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/c/ak;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/ak;->c(Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->b()V

    .line 71
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/ak;->c:Lcom/yf/gattlib/d/b$a;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/b;->a(Lcom/yf/gattlib/d/b$a;)V

    .line 72
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/ak;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/b;->a(Landroid/bluetooth/BluetoothDevice;)V

    .line 73
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 77
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/ak;->c:Lcom/yf/gattlib/d/b$a;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/b;->b(Lcom/yf/gattlib/d/b$a;)V

    .line 78
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->b()V

    .line 81
    :cond_0
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/c/j;->onDestroy()V

    .line 82
    return-void
.end method
