.class Lcom/yf/smart/weloopx/c/j;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/client/b/m$a;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/c/i;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/c/i;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/yf/smart/weloopx/c/j;->a:Lcom/yf/smart/weloopx/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 275
    const-string v0, "CustomInitializer onGetDeviceStateTimeOut() "

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 276
    const-string v0, "CustomInitializer test, onGetDeviceStateTimeOut() "

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 277
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/j;->a:Lcom/yf/smart/weloopx/c/i;

    invoke-static {v0}, Lcom/yf/smart/weloopx/c/i;->a(Lcom/yf/smart/weloopx/c/i;)I

    move-result v0

    if-lez v0, :cond_0

    .line 278
    const-string v0, "CustomInitializer retryTimes-- , POST mGetDeviceState"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CustomInitializer test, retryTimes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/c/j;->a:Lcom/yf/smart/weloopx/c/i;

    invoke-static {v1}, Lcom/yf/smart/weloopx/c/i;->a(Lcom/yf/smart/weloopx/c/i;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", POST mGetDeviceState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 280
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/j;->a:Lcom/yf/smart/weloopx/c/i;

    invoke-static {v0}, Lcom/yf/smart/weloopx/c/i;->b(Lcom/yf/smart/weloopx/c/i;)I

    .line 281
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/j;->a:Lcom/yf/smart/weloopx/c/i;

    iget-object v0, v0, Lcom/yf/smart/weloopx/c/i;->a:Lcom/yf/smart/weloopx/c/c;

    invoke-static {v0}, Lcom/yf/smart/weloopx/c/c;->g(Lcom/yf/smart/weloopx/c/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/c/j;->a:Lcom/yf/smart/weloopx/c/i;

    iget-object v1, v1, Lcom/yf/smart/weloopx/c/i;->a:Lcom/yf/smart/weloopx/c/c;

    invoke-static {v1}, Lcom/yf/smart/weloopx/c/c;->f(Lcom/yf/smart/weloopx/c/c;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 288
    :goto_0
    return-void

    .line 283
    :cond_0
    const-string v0, "CustomInitializer device disconnect "

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 284
    const-string v0, "CustomInitializer test, device disconnect "

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 285
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/j;->a:Lcom/yf/smart/weloopx/c/i;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/c/i;->a(Lcom/yf/smart/weloopx/c/i;I)I

    .line 286
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->b()V

    goto :goto_0
.end method

.method public a([B)V
    .locals 4

    .prologue
    .line 261
    const-string v0, "CustomInitializer onGetDeviceStateFinish() "

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 262
    const-string v0, "CustomInitializer test, onGetDeviceStateFinish() "

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 263
    invoke-static {}, Lcom/yf/smart/weloopx/c/w;->d()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/yf/gattlib/client/d;->a([BZ)Lcom/yf/gattlib/client/d;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Lcom/yf/gattlib/client/d;->y()V

    .line 265
    invoke-virtual {v0}, Lcom/yf/gattlib/client/d;->q()[B

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/client/d;->a([B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v1

    const-string v2, "last anti disturb time"

    invoke-virtual {v0}, Lcom/yf/gattlib/client/d;->q()[B

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;[B)V

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/j;->a:Lcom/yf/smart/weloopx/c/i;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/c/i;->a(Lcom/yf/smart/weloopx/c/i;I)I

    .line 270
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/j;->a:Lcom/yf/smart/weloopx/c/i;

    iget-object v0, v0, Lcom/yf/smart/weloopx/c/i;->a:Lcom/yf/smart/weloopx/c/c;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/yf/smart/weloopx/c/c;->a(Lcom/yf/smart/weloopx/c/c;J)V

    .line 271
    return-void
.end method
