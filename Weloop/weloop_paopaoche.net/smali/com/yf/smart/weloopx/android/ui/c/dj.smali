.class Lcom/yf/smart/weloopx/android/ui/c/dj;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/c/dc;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/dc;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 821
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/dj;->b:Lcom/yf/smart/weloopx/android/ui/c/dc;

    iput-object p2, p0, Lcom/yf/smart/weloopx/android/ui/c/dj;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/b/a/d/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJZ)V
    .locals 0

    .prologue
    .line 836
    return-void
.end method

.method public a(Lcom/b/a/c/b;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserProfileFragment Query search failed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 868
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dj;->b:Lcom/yf/smart/weloopx/android/ui/c/dc;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->b(Lcom/yf/smart/weloopx/android/ui/c/dc;)Lcom/yf/smart/weloopx/android/ui/c/aw;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;)Z

    .line 869
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
    .line 840
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 841
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserProfileFragment \u5220\u9664\u597d\u53cb\u7ed3\u679c = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 842
    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    const/4 v0, 0x1

    sput-boolean v0, Lcom/yf/smart/weloopx/android/ui/c/bl;->b:Z

    .line 844
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dj;->b:Lcom/yf/smart/weloopx/android/ui/c/dc;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/dj;->b:Lcom/yf/smart/weloopx/android/ui/c/dc;

    const v2, 0x7f0700ae

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/android/ui/c/dc;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/dc;->a_(Ljava/lang/String;)V

    .line 845
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dj;->b:Lcom/yf/smart/weloopx/android/ui/c/dc;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/dj;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/dc;->b(Lcom/yf/smart/weloopx/android/ui/c/dc;Ljava/lang/String;)V

    .line 846
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dj;->b:Lcom/yf/smart/weloopx/android/ui/c/dc;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/dj;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/dc;->c(Lcom/yf/smart/weloopx/android/ui/c/dc;Ljava/lang/String;)V

    .line 847
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dj;->b:Lcom/yf/smart/weloopx/android/ui/c/dc;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/dl;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/c/dl;-><init>(Lcom/yf/smart/weloopx/android/ui/c/dj;)V

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/dc;->a(Ljava/lang/Runnable;)V

    .line 862
    :goto_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dj;->b:Lcom/yf/smart/weloopx/android/ui/c/dc;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->b(Lcom/yf/smart/weloopx/android/ui/c/dc;)Lcom/yf/smart/weloopx/android/ui/c/aw;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;)Z

    .line 863
    return-void

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dj;->b:Lcom/yf/smart/weloopx/android/ui/c/dc;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/dj;->b:Lcom/yf/smart/weloopx/android/ui/c/dc;

    const v2, 0x7f0700ac

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/android/ui/c/dc;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/dc;->a_(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 825
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dj;->b:Lcom/yf/smart/weloopx/android/ui/c/dc;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/dk;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/c/dk;-><init>(Lcom/yf/smart/weloopx/android/ui/c/dj;)V

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/dc;->a(Ljava/lang/Runnable;)V

    .line 831
    return-void
.end method
