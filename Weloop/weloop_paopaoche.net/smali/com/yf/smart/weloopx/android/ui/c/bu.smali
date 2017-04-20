.class Lcom/yf/smart/weloopx/android/ui/c/bu;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/yf/smart/weloopx/data/models/RankingUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/bt;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/bt;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/bu;->a:Lcom/yf/smart/weloopx/android/ui/c/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Loader;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/RankingUser;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/RankingUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bu;->a:Lcom/yf/smart/weloopx/android/ui/c/bt;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/bt;->a(Lcom/yf/smart/weloopx/android/ui/c/bt;)V

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/yf/smart/weloopx/android/ui/c/bt;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u4e0b\u8f7d\u540e\u7684\u6392\u884c\u6570\u636e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bu;->a:Lcom/yf/smart/weloopx/android/ui/c/bt;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/bt;->b(Lcom/yf/smart/weloopx/android/ui/c/bt;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bu;->a:Lcom/yf/smart/weloopx/android/ui/c/bt;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/bt;->a(Lcom/yf/smart/weloopx/android/ui/c/bt;Z)Z

    .line 142
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bu;->a:Lcom/yf/smart/weloopx/android/ui/c/bt;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/bt;->c(Lcom/yf/smart/weloopx/android/ui/c/bt;)V

    .line 146
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bu;->a:Lcom/yf/smart/weloopx/android/ui/c/bt;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/bt;->d(Lcom/yf/smart/weloopx/android/ui/c/bt;)Lcom/yf/smart/weloopx/android/ui/c/bt$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yf/smart/weloopx/android/ui/c/bt$a;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/RankingUser;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/bv;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/bu;->a:Lcom/yf/smart/weloopx/android/ui/c/bt;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/c/bt;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yf/smart/weloopx/android/ui/c/bv;-><init>(Lcom/yf/smart/weloopx/android/ui/c/bu;Landroid/content/Context;)V

    return-object v0
.end method

.method public synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 120
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/yf/smart/weloopx/android/ui/c/bu;->a(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/RankingUser;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bu;->a:Lcom/yf/smart/weloopx/android/ui/c/bt;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/bt;->d(Lcom/yf/smart/weloopx/android/ui/c/bt;)Lcom/yf/smart/weloopx/android/ui/c/bt$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/bt$a;->a(Ljava/util/List;)V

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/yf/smart/weloopx/android/ui/c/bt;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u4e0b\u8f7d\u6392\u884c onLoaderReset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 152
    return-void
.end method
