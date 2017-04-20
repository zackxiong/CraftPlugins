.class Lcom/yf/smart/weloopx/android/ui/c/df;
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
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/dc;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/dc;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/df;->a:Lcom/yf/smart/weloopx/android/ui/c/dc;

    invoke-direct {p0}, Lcom/b/a/d/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJZ)V
    .locals 0

    .prologue
    .line 524
    return-void
.end method

.method public a(Lcom/b/a/c/b;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserProfileFragment Add friend failed msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/df;->a:Lcom/yf/smart/weloopx/android/ui/c/dc;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/df;->a:Lcom/yf/smart/weloopx/android/ui/c/dc;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/df;->a:Lcom/yf/smart/weloopx/android/ui/c/dc;

    const v2, 0x7f0702b1

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/android/ui/c/dc;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/dc;->a_(Ljava/lang/String;)V

    .line 551
    :cond_0
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
    .line 528
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserProfileFragment \u6dfb\u52a0\u597d\u53cb\u7ed3\u679c\u8fd4\u56de = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 530
    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 531
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/df;->a:Lcom/yf/smart/weloopx/android/ui/c/dc;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/df;->a:Lcom/yf/smart/weloopx/android/ui/c/dc;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/c/dc;->c(Lcom/yf/smart/weloopx/android/ui/c/dc;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/dc;->a(Lcom/yf/smart/weloopx/android/ui/c/dc;Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/df;->a:Lcom/yf/smart/weloopx/android/ui/c/dc;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->d(Lcom/yf/smart/weloopx/android/ui/c/dc;)V

    .line 533
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/df;->a:Lcom/yf/smart/weloopx/android/ui/c/dc;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/df;->a:Lcom/yf/smart/weloopx/android/ui/c/dc;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/df;->a:Lcom/yf/smart/weloopx/android/ui/c/dc;

    const v2, 0x7f070205

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/android/ui/c/dc;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/dc;->a_(Ljava/lang/String;)V

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/df;->a:Lcom/yf/smart/weloopx/android/ui/c/dc;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/df;->a:Lcom/yf/smart/weloopx/android/ui/c/dc;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/df;->a:Lcom/yf/smart/weloopx/android/ui/c/dc;

    const v2, 0x7f0702b1

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/android/ui/c/dc;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/dc;->a_(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 519
    return-void
.end method
