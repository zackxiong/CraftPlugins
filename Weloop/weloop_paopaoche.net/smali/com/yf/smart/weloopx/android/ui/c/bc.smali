.class Lcom/yf/smart/weloopx/android/ui/c/bc;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/e$e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/handmark/pulltorefresh/library/e$e",
        "<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/ba;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/ba;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/bc;->a:Lcom/yf/smart/weloopx/android/ui/c/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/handmark/pulltorefresh/library/e;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/e",
            "<",
            "Landroid/widget/ListView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bc;->a:Lcom/yf/smart/weloopx/android/ui/c/ba;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->b(Lcom/yf/smart/weloopx/android/ui/c/ba;)V

    .line 285
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bc;->a:Lcom/yf/smart/weloopx/android/ui/c/ba;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->c(Lcom/yf/smart/weloopx/android/ui/c/ba;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bc;->a:Lcom/yf/smart/weloopx/android/ui/c/ba;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/bc;->a:Lcom/yf/smart/weloopx/android/ui/c/ba;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/c/ba;->c(Lcom/yf/smart/weloopx/android/ui/c/ba;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/ba;->a(Lcom/yf/smart/weloopx/android/ui/c/ba;Ljava/lang/String;)Ljava/lang/String;

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bc;->a:Lcom/yf/smart/weloopx/android/ui/c/ba;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->d(Lcom/yf/smart/weloopx/android/ui/c/ba;)Ljava/lang/String;

    move-result-object v0

    .line 289
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/bc;->a:Lcom/yf/smart/weloopx/android/ui/c/ba;

    invoke-static {v1, v0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->b(Lcom/yf/smart/weloopx/android/ui/c/ba;Ljava/lang/String;)Ljava/lang/String;

    .line 290
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 291
    invoke-virtual {p1}, Lcom/handmark/pulltorefresh/library/e;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/bc;->a:Lcom/yf/smart/weloopx/android/ui/c/ba;

    const v3, 0x7f0701c5

    invoke-virtual {v2, v3}, Lcom/yf/smart/weloopx/android/ui/c/ba;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/bc;->a:Lcom/yf/smart/weloopx/android/ui/c/ba;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/c/ba;->e(Lcom/yf/smart/weloopx/android/ui/c/ba;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/handmark/pulltorefresh/library/a;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bc;->a:Lcom/yf/smart/weloopx/android/ui/c/ba;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->f(Lcom/yf/smart/weloopx/android/ui/c/ba;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/a;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/handmark/pulltorefresh/library/a;->setLastUpdatedLabel(Ljava/lang/CharSequence;)V

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bc;->a:Lcom/yf/smart/weloopx/android/ui/c/ba;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->g(Lcom/yf/smart/weloopx/android/ui/c/ba;)V

    .line 296
    return-void
.end method
