.class Lcom/yf/smart/weloopx/dist/wxapi/c;
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
    .line 316
    iput-object p1, p0, Lcom/yf/smart/weloopx/dist/wxapi/c;->a:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    invoke-direct {p0}, Lcom/b/a/d/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJZ)V
    .locals 0

    .prologue
    .line 326
    return-void
.end method

.method public a(Lcom/b/a/c/b;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/dist/wxapi/c;->a:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->a(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onFailure = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/c;->a:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    invoke-static {v0, p2}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->b(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;Ljava/lang/String;)V

    .line 349
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
    .line 330
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yf/smart/weloopx/dist/wxapi/c;->a:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    invoke-static {v2}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->a(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u83b7\u5f97\u5fae\u4fe1\u7528\u6237\u7684\u989d\u4fe1\u606f = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 332
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 333
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 334
    const-class v2, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;

    .line 335
    if-eqz v0, :cond_0

    .line 336
    iget-object v1, p0, Lcom/yf/smart/weloopx/dist/wxapi/c;->a:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->c(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 337
    iget-object v1, p0, Lcom/yf/smart/weloopx/dist/wxapi/c;->a:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->getSex()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->d(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 338
    iget-object v1, p0, Lcom/yf/smart/weloopx/dist/wxapi/c;->a:Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/WechatUserInfoModel;->getHeadimgurl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->e(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 342
    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 321
    return-void
.end method
