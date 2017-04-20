.class Lcom/yf/smart/weloopx/android/ui/c/bq;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/c/bl;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/bl;I)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/bq;->b:Lcom/yf/smart/weloopx/android/ui/c/bl;

    iput p2, p0, Lcom/yf/smart/weloopx/android/ui/c/bq;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 279
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/a/h;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/bq;->b:Lcom/yf/smart/weloopx/android/ui/c/bl;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/c/bl;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/bq;->b:Lcom/yf/smart/weloopx/android/ui/c/bl;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/c/bl;->g(Lcom/yf/smart/weloopx/android/ui/c/bl;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/a/h;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 280
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/bq;->b:Lcom/yf/smart/weloopx/android/ui/c/bl;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/c/bl;->h(Lcom/yf/smart/weloopx/android/ui/c/bl;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 281
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bq;->b:Lcom/yf/smart/weloopx/android/ui/c/bl;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/bl;->h(Lcom/yf/smart/weloopx/android/ui/c/bl;)Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/c/bq;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 282
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bq;->b:Lcom/yf/smart/weloopx/android/ui/c/bl;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/bl;->i(Lcom/yf/smart/weloopx/android/ui/c/bl;)V

    .line 284
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bq;->b:Lcom/yf/smart/weloopx/android/ui/c/bl;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/bl;->g(Lcom/yf/smart/weloopx/android/ui/c/bl;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bq;->b:Lcom/yf/smart/weloopx/android/ui/c/bl;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/bl;->g(Lcom/yf/smart/weloopx/android/ui/c/bl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bq;->b:Lcom/yf/smart/weloopx/android/ui/c/bl;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/bl;->j(Lcom/yf/smart/weloopx/android/ui/c/bl;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bq;->b:Lcom/yf/smart/weloopx/android/ui/c/bl;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/bl;->b(Lcom/yf/smart/weloopx/android/ui/c/bl;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 291
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bq;->b:Lcom/yf/smart/weloopx/android/ui/c/bl;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/bl;->j(Lcom/yf/smart/weloopx/android/ui/c/bl;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bq;->b:Lcom/yf/smart/weloopx/android/ui/c/bl;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/bl;->b(Lcom/yf/smart/weloopx/android/ui/c/bl;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    goto :goto_0
.end method
