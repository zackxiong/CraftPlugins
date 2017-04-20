.class Lcom/yf/smart/weloopx/android/ui/c/dg;
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
    .line 565
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/dg;->a:Lcom/yf/smart/weloopx/android/ui/c/dc;

    invoke-direct {p0}, Lcom/b/a/d/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJZ)V
    .locals 0

    .prologue
    .line 575
    return-void
.end method

.method public a(Lcom/b/a/c/b;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserProfileFragment Accept friend requst failed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dg;->a:Lcom/yf/smart/weloopx/android/ui/c/dc;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dg;->a:Lcom/yf/smart/weloopx/android/ui/c/dc;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/dg;->a:Lcom/yf/smart/weloopx/android/ui/c/dc;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/c/dc;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f07011a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/dc;->a_(Ljava/lang/String;)V

    .line 606
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
    .line 579
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserProfileFragment \u540c\u610f\u597d\u53cb\u7ed3\u679c result  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 581
    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 582
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dg;->a:Lcom/yf/smart/weloopx/android/ui/c/dc;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/dc;->a(Lcom/yf/smart/weloopx/android/ui/c/dc;Z)Z

    .line 583
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dg;->a:Lcom/yf/smart/weloopx/android/ui/c/dc;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dg;->a:Lcom/yf/smart/weloopx/android/ui/c/dc;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/dg;->a:Lcom/yf/smart/weloopx/android/ui/c/dc;

    const v2, 0x7f070035

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/android/ui/c/dc;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/dc;->a_(Ljava/lang/String;)V

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dg;->a:Lcom/yf/smart/weloopx/android/ui/c/dc;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/dh;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/c/dh;-><init>(Lcom/yf/smart/weloopx/android/ui/c/dg;)V

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/dc;->a(Ljava/lang/Runnable;)V

    .line 598
    :cond_1
    :goto_0
    return-void

    .line 594
    :cond_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dg;->a:Lcom/yf/smart/weloopx/android/ui/c/dc;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 595
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dg;->a:Lcom/yf/smart/weloopx/android/ui/c/dc;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/dg;->a:Lcom/yf/smart/weloopx/android/ui/c/dc;

    const v2, 0x7f07011a

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/android/ui/c/dc;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/dc;->a_(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 570
    return-void
.end method
