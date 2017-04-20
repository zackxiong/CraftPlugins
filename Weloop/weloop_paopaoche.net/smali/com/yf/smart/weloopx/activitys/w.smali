.class Lcom/yf/smart/weloopx/activitys/w;
.super Lcom/yf/smart/weloopx/b/b/h;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/activitys/ResetPassword;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/activitys/ResetPassword;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/yf/smart/weloopx/activitys/w;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    invoke-direct {p0}, Lcom/yf/smart/weloopx/b/b/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/c/b;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/w;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->f()V

    .line 199
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/w;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    invoke-static {v0, p2}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->d(Lcom/yf/smart/weloopx/activitys/ResetPassword;Ljava/lang/String;)V

    .line 200
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
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/w;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    invoke-static {v1}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->a(Lcom/yf/smart/weloopx/activitys/ResetPassword;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u83b7\u5f97\u9a8c\u8bc1\u7801\u7ed3\u679c = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/w;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->f()V

    .line 181
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-class v2, Lcom/yf/smart/weloopx/data/models/VerifyCodeModel;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/VerifyCodeModel;

    .line 183
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/w;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/VerifyCodeModel;->getVerifyCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->a(Lcom/yf/smart/weloopx/activitys/ResetPassword;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/w;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    new-instance v1, Lcom/yf/smart/weloopx/activitys/x;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/activitys/x;-><init>(Lcom/yf/smart/weloopx/activitys/w;)V

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 194
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/w;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->f()V

    .line 192
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/w;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/w;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->c(Lcom/yf/smart/weloopx/activitys/ResetPassword;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->d(Lcom/yf/smart/weloopx/activitys/ResetPassword;Ljava/lang/String;)V

    goto :goto_0
.end method
