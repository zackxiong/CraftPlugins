.class Lcom/yf/smart/weloopx/activitys/k;
.super Lcom/yf/smart/weloopx/b/b/q;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/yf/smart/weloopx/activitys/k;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;

    invoke-direct {p0}, Lcom/yf/smart/weloopx/b/b/q;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/c/b;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/k;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->f()V

    .line 260
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/k;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;

    invoke-virtual {v0, p2}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->a(Ljava/lang/String;)V

    .line 261
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
    .line 244
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/k;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->f()V

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/k;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;

    invoke-static {v1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->a(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u8bbe\u7f6e\u5bc6\u7801\u6ce8\u518c\u8fd4\u56de\u7684 \u6ca1\u6709\u4fdd\u5b58= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 247
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 249
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-class v2, Lcom/yf/smart/weloopx/data/models/UserData2;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/UserData2;

    .line 250
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/k;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->a(Lcom/yf/smart/weloopx/data/models/UserData2;)V

    .line 255
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/k;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->f()V

    .line 253
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/k;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/k;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;

    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->e(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
