.class Lcom/yf/smart/weloopx/dist/wxapi/d;
.super Lcom/b/a/d/a/d;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/b/a/d/a/d",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/yf/smart/weloopx/dist/wxapi/d;->a:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    invoke-direct {p0}, Lcom/b/a/d/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJZ)V
    .locals 0

    .prologue
    .line 382
    return-void
.end method

.method public a(Lcom/b/a/c/b;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/d;->a:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->f()V

    .line 410
    iget-object v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/d;->a:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->finish()V

    .line 411
    return-void
.end method

.method public a(Lcom/b/a/d/e;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/e",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v3, 0x7f07005b

    .line 386
    iget-object v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/d;->a:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->f()V

    .line 387
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yf/smart/weloopx/dist/wxapi/d;->a:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    invoke-static {v2}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->a(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u7ed1\u5b9a\u624b\u673a\u53f7\u7801\u7684\u7ed3\u679c = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 389
    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 390
    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    iget-object v1, p0, Lcom/yf/smart/weloopx/dist/wxapi/d;->a:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    invoke-static {v1, v0}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->f(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;Ljava/lang/String;)V

    .line 405
    :goto_0
    return-void

    .line 393
    :cond_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/yf/smart/weloopx/data/models/ServerResult;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/ServerResult;

    .line 394
    const-string v1, "1013"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/ServerResult;->getResult()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/d;->a:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    const-string v1, "\u5fae\u4fe1\u8d26\u53f7\u5df2\u5b58\u5728"

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->g(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;Ljava/lang/String;)V

    .line 399
    :goto_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/d;->a:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->finish()V

    goto :goto_0

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/d;->a:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    iget-object v1, p0, Lcom/yf/smart/weloopx/dist/wxapi/d;->a:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    invoke-virtual {v1, v3}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->h(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 402
    :cond_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/d;->a:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    iget-object v1, p0, Lcom/yf/smart/weloopx/dist/wxapi/d;->a:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    invoke-virtual {v1, v3}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->i(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/d;->a:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->finish()V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 376
    iget-object v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/d;->a:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    iget-object v0, v0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    iget-object v1, p0, Lcom/yf/smart/weloopx/dist/wxapi/d;->a:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/dist/wxapi/d;->a:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    invoke-static {v2}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->a(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 377
    return-void
.end method
