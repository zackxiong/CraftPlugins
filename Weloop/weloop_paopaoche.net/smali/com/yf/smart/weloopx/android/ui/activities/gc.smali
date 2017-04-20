.class Lcom/yf/smart/weloopx/android/ui/activities/gc;
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
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gc;->a:Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;

    invoke-direct {p0}, Lcom/b/a/d/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJZ)V
    .locals 0

    .prologue
    .line 284
    return-void
.end method

.method public a(Lcom/b/a/c/b;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gc;->a:Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;

    const v1, 0x7f0700aa

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->b(Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;I)V

    .line 307
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gc;->a:Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->f()V

    .line 308
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
    const v3, 0x7f0700aa

    .line 288
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RunningInfoListActivity \u5220\u9664\u8dd1\u6b65\u6570\u636e\u6210\u529f\u8fd4\u56de = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 290
    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gc;->a:Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->d(Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;)Lcom/yf/smart/weloopx/data/k;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gc;->a:Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->i(Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/k;->c(Ljava/lang/String;)Z

    .line 293
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gc;->a:Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gc;->a:Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->d(Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;)Lcom/yf/smart/weloopx/data/k;

    move-result-object v1

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v2

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yf/smart/weloopx/b/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/data/k;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 294
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gc;->a:Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->e(Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;)V

    .line 301
    :goto_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gc;->a:Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->f()V

    .line 302
    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gc;->a:Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;

    invoke-static {v0, v3}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->b(Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;I)V

    goto :goto_0

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gc;->a:Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;

    invoke-static {v0, v3}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->b(Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;I)V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 277
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gc;->a:Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gc;->a:Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;

    const v2, 0x7f0700b1

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/aw;->e(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gc;->a:Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gc;->a:Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "RunningInfoListActivity"

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 279
    return-void
.end method
