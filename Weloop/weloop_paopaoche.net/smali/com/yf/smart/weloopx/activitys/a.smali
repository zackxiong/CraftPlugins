.class Lcom/yf/smart/weloopx/activitys/a;
.super Lcom/yf/smart/weloopx/b/b/j;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/activitys/Login;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/activitys/Login;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/yf/smart/weloopx/activitys/a;->a:Lcom/yf/smart/weloopx/activitys/Login;

    invoke-direct {p0}, Lcom/yf/smart/weloopx/b/b/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/c/b;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/a;->a:Lcom/yf/smart/weloopx/activitys/Login;

    invoke-static {v1}, Lcom/yf/smart/weloopx/activitys/Login;->a(Lcom/yf/smart/weloopx/activitys/Login;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Login result failmsg  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/a;->a:Lcom/yf/smart/weloopx/activitys/Login;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/activitys/Login;->f()V

    .line 230
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/a;->a:Lcom/yf/smart/weloopx/activitys/Login;

    const v1, 0x7f070154

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/activitys/Login;->a(Lcom/yf/smart/weloopx/activitys/Login;I)V

    .line 231
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
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/a;->a:Lcom/yf/smart/weloopx/activitys/Login;

    invoke-static {v1}, Lcom/yf/smart/weloopx/activitys/Login;->a(Lcom/yf/smart/weloopx/activitys/Login;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u624b\u673a\u53f7\u767b\u5f55\u7ed3\u679c  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 209
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/a;->a:Lcom/yf/smart/weloopx/activitys/Login;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/activitys/Login;->f()V

    .line 211
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/a;->a:Lcom/yf/smart/weloopx/activitys/Login;

    const-string v2, "2020"

    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/yf/smart/weloopx/activitys/Login;->a(Lcom/yf/smart/weloopx/activitys/Login;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 217
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-class v2, Lcom/yf/smart/weloopx/data/models/UserData2;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/UserData2;

    .line 218
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v1

    const-string v2, "lastInputAccount"

    iget-object v3, p0, Lcom/yf/smart/weloopx/activitys/a;->a:Lcom/yf/smart/weloopx/activitys/Login;

    invoke-static {v3}, Lcom/yf/smart/weloopx/activitys/Login;->b(Lcom/yf/smart/weloopx/activitys/Login;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/a;->a:Lcom/yf/smart/weloopx/activitys/Login;

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/activitys/Login;->a(Lcom/yf/smart/weloopx/data/models/UserData2;)V

    goto :goto_0

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/a;->a:Lcom/yf/smart/weloopx/activitys/Login;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/activitys/Login;->f()V

    .line 222
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/a;->a:Lcom/yf/smart/weloopx/activitys/Login;

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/a;->a:Lcom/yf/smart/weloopx/activitys/Login;

    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/yf/smart/weloopx/activitys/Login;->a(Lcom/yf/smart/weloopx/activitys/Login;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/activitys/Login;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
