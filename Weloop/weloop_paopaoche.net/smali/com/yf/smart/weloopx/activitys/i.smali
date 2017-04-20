.class Lcom/yf/smart/weloopx/activitys/i;
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
.field final synthetic a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lcom/yf/smart/weloopx/activitys/i;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    invoke-direct {p0}, Lcom/b/a/d/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJZ)V
    .locals 0

    .prologue
    .line 481
    return-void
.end method

.method public a(Lcom/b/a/c/b;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/i;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    iget-object v1, v1, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " A.3 Third login error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/i;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->finish()V

    .line 502
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
    .line 485
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/i;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    iget-object v2, v2, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u7b2c\u4e09\u65b9\u767b\u5f55\u751f\u6210\u8d26\u53f7\u7684\u7ed3\u679c  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 487
    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 489
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-class v2, Lcom/yf/smart/weloopx/data/models/UserData2;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/UserData2;

    .line 490
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/i;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->d(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/UserData2;->setOpenId(Ljava/lang/String;)V

    .line 491
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/i;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->b(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;)Lcom/yf/smart/weloopx/g/d;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/i;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    iget-object v3, p0, Lcom/yf/smart/weloopx/activitys/i;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    invoke-static {v3}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->d(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/yf/smart/weloopx/g/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 492
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/i;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->b(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;)Lcom/yf/smart/weloopx/g/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/g/d;->a(Lcom/yf/smart/weloopx/data/models/UserData2;)V

    .line 496
    :goto_0
    return-void

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/i;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->finish()V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 476
    return-void
.end method
