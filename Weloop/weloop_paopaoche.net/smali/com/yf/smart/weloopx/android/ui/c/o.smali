.class Lcom/yf/smart/weloopx/android/ui/c/o;
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
    .line 462
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/o;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 465
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/o;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/l;->s(Lcom/yf/smart/weloopx/android/ui/c/l;)I

    move-result v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/o;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/c/l;->n(Lcom/yf/smart/weloopx/android/ui/c/l;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 466
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/o;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/l;->t(Lcom/yf/smart/weloopx/android/ui/c/l;)V

    .line 484
    :goto_0
    return-void

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/o;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/l;->n(Lcom/yf/smart/weloopx/android/ui/c/l;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/o;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/c/l;->s(Lcom/yf/smart/weloopx/android/ui/c/l;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/android/ui/c/l$a;

    .line 471
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/o;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/c/l;->u(Lcom/yf/smart/weloopx/android/ui/c/l;)I

    .line 472
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    iget-object v2, v0, Lcom/yf/smart/weloopx/android/ui/c/l$a;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/o;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/android/ui/c/l;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/yf/gattlib/p/a;->b(Landroid/content/Context;)I

    move-result v3

    new-instance v4, Lcom/yf/smart/weloopx/android/ui/c/p;

    invoke-direct {v4, p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/p;-><init>(Lcom/yf/smart/weloopx/android/ui/c/o;Lcom/yf/smart/weloopx/android/ui/c/l$a;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/yf/smart/weloopx/b/c;->a(Ljava/lang/String;ILcom/yf/smart/weloopx/b/b/e;)V

    goto :goto_0
.end method
