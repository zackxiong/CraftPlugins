.class public Lcom/yf/smart/weloopx/c/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/smart/weloopx/c/aj;


# instance fields
.field private a:Lcom/yf/gattlib/client/c;

.field private b:Lcom/yf/gattlib/a/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/c/b;->b:Lcom/yf/gattlib/a/b;

    .line 22
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/b;->b:Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->k()Lcom/yf/gattlib/client/c;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/c/b;->a:Lcom/yf/gattlib/client/c;

    .line 23
    return-void
.end method


# virtual methods
.method public c(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/yf/gattlib/client/f;->a()Lcom/yf/gattlib/client/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/client/f;->a(Landroid/bluetooth/BluetoothDevice;)V

    .line 27
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/b;->b:Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/c/b;->n()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 37
    const-string v0, ""

    .line 38
    if-eqz v1, :cond_0

    .line 40
    :try_start_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 46
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/b;->b:Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->k()Lcom/yf/gattlib/client/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/client/c;->g()Ljava/lang/String;

    move-result-object v0

    .line 49
    :cond_1
    return-object v0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    const-string v0, ""

    goto :goto_0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/b;->a:Lcom/yf/gattlib/client/c;

    invoke-virtual {v0}, Lcom/yf/gattlib/client/c;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/b;->a:Lcom/yf/gattlib/client/c;

    invoke-virtual {v0}, Lcom/yf/gattlib/client/c;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 120
    invoke-static {}, Lcom/yf/gattlib/client/f;->a()Lcom/yf/gattlib/client/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/client/f;->b()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/b;->b:Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->q()Z

    move-result v0

    return v0
.end method
