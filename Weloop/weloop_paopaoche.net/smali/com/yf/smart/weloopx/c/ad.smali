.class Lcom/yf/smart/weloopx/c/ad;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/client/b/a/b;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/c/x;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/c/x;)V
    .locals 0

    .prologue
    .line 641
    iput-object p1, p0, Lcom/yf/smart/weloopx/c/ad;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 644
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/ad;->a:Lcom/yf/smart/weloopx/c/x;

    const-string v1, "SyncDeviceDataUtil 11. onGetCaloriesTimeout"

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;Ljava/lang/String;)V

    .line 645
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/ad;->a:Lcom/yf/smart/weloopx/c/x;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;IILjava/lang/String;)V

    .line 646
    return-void
.end method

.method public a(Lcom/yf/gattlib/client/b/b/a;)V
    .locals 3

    .prologue
    .line 655
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/ad;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v0, p1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;Lcom/yf/gattlib/client/b/b/a;)Lcom/yf/gattlib/client/b/b/a;

    .line 656
    if-eqz p1, :cond_0

    .line 657
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/ad;->a:Lcom/yf/smart/weloopx/c/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SyncDeviceDataUtil 9. onGetCalories calorie = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/yf/gattlib/client/b/b/a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", distance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/yf/gattlib/client/b/b/a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", stepCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/yf/gattlib/client/b/b/a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;Ljava/lang/String;)V

    .line 659
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 650
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/ad;->a:Lcom/yf/smart/weloopx/c/x;

    const-string v1, "SyncDeviceDataUtil 8. \u5f00\u59cb\u8bfb\u53d6\u603b\u6b65\u6570onGetCaloriesStart"

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;Ljava/lang/String;)V

    .line 651
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 663
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/ad;->a:Lcom/yf/smart/weloopx/c/x;

    const-string v1, "SyncDeviceDataUtil 10. onGetCaloriesFinish "

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;Ljava/lang/String;)V

    .line 665
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/ad;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v0}, Lcom/yf/smart/weloopx/c/x;->h(Lcom/yf/smart/weloopx/c/x;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yf/smart/weloopx/c/ae;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/c/ae;-><init>(Lcom/yf/smart/weloopx/c/ad;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 672
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    .line 676
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/ad;->a:Lcom/yf/smart/weloopx/c/x;

    const-string v1, "SyncDeviceDataUtil 12. onGetCaloriesFail"

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;Ljava/lang/String;)V

    .line 677
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/ad;->a:Lcom/yf/smart/weloopx/c/x;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;IILjava/lang/String;)V

    .line 678
    return-void
.end method
