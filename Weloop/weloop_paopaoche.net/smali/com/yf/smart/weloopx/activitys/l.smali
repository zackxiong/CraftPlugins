.class Lcom/yf/smart/weloopx/activitys/l;
.super Lcom/yf/smart/weloopx/b/b/r;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/yf/smart/weloopx/activitys/l;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;

    invoke-direct {p0}, Lcom/yf/smart/weloopx/b/b/r;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/c/b;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/l;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->f()V

    .line 339
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/l;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;

    invoke-virtual {v0, p2}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->a(Ljava/lang/String;)V

    .line 340
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
    .line 324
    const-string v1, "yongong"

    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/l;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->f()V

    .line 326
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 328
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-class v2, Lcom/yf/smart/weloopx/data/models/UserData2;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/UserData2;

    .line 329
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/l;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->b(Lcom/yf/smart/weloopx/data/models/UserData2;)V

    .line 334
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/l;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->f()V

    .line 332
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/l;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/l;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;

    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->f(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
