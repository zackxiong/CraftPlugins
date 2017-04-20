.class Lcom/yf/smart/weloopx/activitys/o;
.super Lcom/yf/smart/weloopx/b/b/a;
.source "ProGuard"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/yf/smart/weloopx/activitys/o;->c:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;

    iput-object p2, p0, Lcom/yf/smart/weloopx/activitys/o;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/yf/smart/weloopx/activitys/o;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/yf/smart/weloopx/b/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/c/b;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 399
    invoke-super {p0, p1, p2}, Lcom/yf/smart/weloopx/b/b/a;->a(Lcom/b/a/c/b;Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/o;->c:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->f()V

    .line 401
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/o;->c:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/o;->c:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;

    const v2, 0x7f0701e8

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->a(Ljava/lang/String;)V

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegisterPhoneActivity1 \u4e0a\u4f20\u5931\u8d25 msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method public a(Lcom/b/a/d/e;)V
    .locals 3
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
    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegisterPhoneActivity1 \u4e0a\u4f20success result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \u4fdd\u5b58\u7684nickname = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accessToken = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 409
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    const-string v0, "RegisterPhoneActivity1 &&&&& accountInfo Save user info"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 411
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 412
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-class v2, Lcom/yf/smart/weloopx/data/models/ReturnHeadPicUrlModel;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/ReturnHeadPicUrlModel;

    .line 413
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/ReturnHeadPicUrlModel;->getHeadPicUrl()Ljava/lang/String;

    move-result-object v0

    .line 414
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/o;->c:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;

    invoke-static {v1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->c(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;)Lcom/yf/smart/weloopx/data/models/UserData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/data/models/UserData;->setHeadPicAddress(Ljava/lang/String;)V

    .line 415
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/o;->c:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;

    invoke-static {v1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->c(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;)Lcom/yf/smart/weloopx/data/models/UserData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/c;->a(Lcom/yf/smart/weloopx/data/models/UserData;)V

    .line 416
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 417
    const-string v1, "set_target"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/o;->c:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;

    invoke-static {v2}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->d(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 418
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/o;->c:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;

    invoke-static {v1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->e(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/o;->c:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;

    invoke-static {v2}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->f(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 419
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/o;->c:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;

    const-class v2, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 420
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/o;->c:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->startActivity(Landroid/content/Intent;)V

    .line 421
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/o;->c:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;

    invoke-static {v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->d(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/o;->c:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->finish()V

    .line 428
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/o;->c:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;

    invoke-static {v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->g(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;)V

    .line 429
    return-void

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/o;->c:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;

    const v1, 0x7f07024c

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->a(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;I)V

    goto :goto_0
.end method
