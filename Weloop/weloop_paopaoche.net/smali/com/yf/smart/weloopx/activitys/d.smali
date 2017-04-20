.class Lcom/yf/smart/weloopx/activitys/d;
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
.field final synthetic a:Lcom/yf/smart/weloopx/activitys/Login;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/activitys/Login;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/yf/smart/weloopx/activitys/d;->a:Lcom/yf/smart/weloopx/activitys/Login;

    invoke-direct {p0}, Lcom/b/a/d/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJZ)V
    .locals 0

    .prologue
    .line 323
    return-void
.end method

.method public a(Lcom/b/a/c/b;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 346
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/d;->a:Lcom/yf/smart/weloopx/activitys/Login;

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/d;->a:Lcom/yf/smart/weloopx/activitys/Login;

    const v2, 0x7f070067

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/activitys/Login;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/activitys/Login;->e(Lcom/yf/smart/weloopx/activitys/Login;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/d;->a:Lcom/yf/smart/weloopx/activitys/Login;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/activitys/Login;->f()V

    .line 348
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
    .line 327
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/d;->a:Lcom/yf/smart/weloopx/activitys/Login;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/activitys/Login;->f()V

    .line 328
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/d;->a:Lcom/yf/smart/weloopx/activitys/Login;

    invoke-static {v2}, Lcom/yf/smart/weloopx/activitys/Login;->a(Lcom/yf/smart/weloopx/activitys/Login;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u5fae\u4fe1\u53f7\u7ed1\u5b9a\u8001\u624b\u673a\u53f7\u7684\u7ed3\u679c = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 330
    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 331
    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 332
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/d;->a:Lcom/yf/smart/weloopx/activitys/Login;

    invoke-static {v1, v0}, Lcom/yf/smart/weloopx/activitys/Login;->b(Lcom/yf/smart/weloopx/activitys/Login;Ljava/lang/String;)V

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/yf/smart/weloopx/data/models/ServerResult;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/ServerResult;

    .line 335
    const-string v1, "1006"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/ServerResult;->getResult()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/d;->a:Lcom/yf/smart/weloopx/activitys/Login;

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/d;->a:Lcom/yf/smart/weloopx/activitys/Login;

    const v2, 0x7f07012c

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/activitys/Login;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/activitys/Login;->c(Lcom/yf/smart/weloopx/activitys/Login;Ljava/lang/String;)V

    goto :goto_0

    .line 340
    :cond_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/d;->a:Lcom/yf/smart/weloopx/activitys/Login;

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/d;->a:Lcom/yf/smart/weloopx/activitys/Login;

    const v2, 0x7f070067

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/activitys/Login;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/activitys/Login;->d(Lcom/yf/smart/weloopx/activitys/Login;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 318
    return-void
.end method
