.class Lcom/yf/smart/weloopx/android/ui/c/n;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/l;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/l;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/n;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 442
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/n;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/l;->q(Lcom/yf/smart/weloopx/android/ui/c/l;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 443
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/n;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/l;->r(Lcom/yf/smart/weloopx/android/ui/c/l;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 444
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/n;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/l;->n(Lcom/yf/smart/weloopx/android/ui/c/l;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/android/ui/c/l$a;

    .line 445
    iget-object v2, v0, Lcom/yf/smart/weloopx/android/ui/c/l$a;->c:Lcom/yf/smart/weloopx/data/models/Watchface;

    if-eqz v2, :cond_0

    .line 446
    invoke-static {}, Lcom/yf/smart/weloopx/f/a;->b()Lcom/b/a/a;

    move-result-object v2

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/n;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-static {v3}, Lcom/yf/smart/weloopx/android/ui/c/l;->i(Lcom/yf/smart/weloopx/android/ui/c/l;)[Landroid/widget/ImageView;

    move-result-object v3

    iget v4, v0, Lcom/yf/smart/weloopx/android/ui/c/l$a;->b:I

    aget-object v3, v3, v4

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/l$a;->c:Lcom/yf/smart/weloopx/data/models/Watchface;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Watchface;->getWatchfaceImageURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/b/a/a;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 450
    :cond_1
    return-void
.end method
