.class final Lcom/umeng/update/UmengUpdateAgent$1;
.super Landroid/os/Handler;
.source "ProGuard"


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 258
    iput-object p2, p0, Lcom/umeng/update/UmengUpdateAgent$1;->a:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 261
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 263
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 264
    invoke-static {}, Lcom/umeng/update/UpdateConfig;->isUpdateAutoPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-static {}, Lcom/umeng/update/UmengUpdateAgent;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/umeng/update/UpdateResponse;

    .line 266
    invoke-static {}, Lcom/umeng/update/UpdateConfig;->getStyle()I

    move-result v2

    .line 265
    invoke-static {v1, v0, v2}, Lcom/umeng/update/UmengUpdateAgent;->a(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;I)V

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/umeng/update/UmengUpdateAgent$1;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/umeng/update/UmengUpdateAgent;->a(Landroid/content/Context;Landroid/os/Message;)V

    .line 270
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/umeng/update/UmengUpdateAgent;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 272
    invoke-static {}, Lcom/umeng/update/UmengUpdateAgent;->b()Lcom/umeng/update/UmengUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 273
    invoke-static {}, Lcom/umeng/update/UmengUpdateAgent;->b()Lcom/umeng/update/UmengUpdateListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/umeng/update/UpdateResponse;

    invoke-interface {v1, v2, v0}, Lcom/umeng/update/UmengUpdateListener;->onUpdateReturned(ILcom/umeng/update/UpdateResponse;)V

    .line 276
    :cond_1
    return-void
.end method
