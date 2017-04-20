.class final Lcom/yf/smart/weloopx/c/o;
.super Lcom/yf/gattlib/client/b/j;
.source "ProGuard"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/j;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 44
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.yf.gattlib.intent.action.SHOW_TIP"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 46
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/gattlib/a/b;->d()Landroid/app/Application;

    move-result-object v2

    const v3, 0x7f0700fe

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_0
    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 49
    const-string v2, "EXTRA_MESSAGE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string v0, "EXTRA_SOUND"

    const v2, 0x7f050003

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/a/a;->e(Landroid/content/Intent;)V

    .line 52
    return-void

    :cond_0
    move-object p1, v0

    .line 47
    goto :goto_0
.end method
