.class Lcom/yf/smart/weloopx/c/ab;
.super Lcom/yf/smart/weloopx/b/b/l;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/c/x;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/c/x;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lcom/yf/smart/weloopx/c/ab;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-direct {p0}, Lcom/yf/smart/weloopx/b/b/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/c/b;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 466
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/ab;->a:Lcom/yf/smart/weloopx/c/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download onFailure:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/ab;->a:Lcom/yf/smart/weloopx/c/x;

    const/4 v1, -0x1

    const v2, 0x7f070245

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;IILjava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/ab;->a:Lcom/yf/smart/weloopx/c/x;

    iget-object v1, p0, Lcom/yf/smart/weloopx/c/ab;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;)I

    move-result v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/c/ab;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v2}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;II)V

    .line 469
    return-void
.end method

.method public a(Lcom/b/a/d/e;)V
    .locals 6
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
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 442
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 444
    iget-object v1, p0, Lcom/yf/smart/weloopx/c/ab;->a:Lcom/yf/smart/weloopx/c/x;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SyncDeviceDataUtil 7. \u4e0b\u8f7d\u670d\u52a1\u7aef\u7684\u6570\u636e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;Ljava/lang/String;)V

    .line 445
    iget-object v1, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/yf/smart/weloopx/f/n;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "server error download:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 447
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/ab;->a:Lcom/yf/smart/weloopx/c/x;

    const v1, 0x7f070246

    const-string v2, ""

    invoke-static {v0, v5, v1, v2}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;IILjava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/ab;->a:Lcom/yf/smart/weloopx/c/x;

    iget-object v1, p0, Lcom/yf/smart/weloopx/c/ab;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;)I

    move-result v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/c/ab;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v2}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;II)V

    .line 462
    :goto_0
    return-void

    .line 450
    :cond_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 451
    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 452
    const-class v2, Lcom/yf/smart/weloopx/data/models/MultipleBongResult;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/MultipleBongResult;

    .line 453
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/c/ab;->a(Lcom/yf/smart/weloopx/data/models/MultipleBongResult;)V

    .line 454
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/ab;->a:Lcom/yf/smart/weloopx/c/x;

    const-string v1, ""

    invoke-static {v0, v4, v4, v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;IILjava/lang/String;)V

    goto :goto_0

    .line 456
    :cond_1
    iget-object v1, p0, Lcom/yf/smart/weloopx/c/ab;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v0}, Lcom/yf/smart/weloopx/data/models/ServerResult;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v5, v4, v0}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;IILjava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/ab;->a:Lcom/yf/smart/weloopx/c/x;

    iget-object v1, p0, Lcom/yf/smart/weloopx/c/ab;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;)I

    move-result v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/c/ab;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v2}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;II)V

    goto :goto_0
.end method
