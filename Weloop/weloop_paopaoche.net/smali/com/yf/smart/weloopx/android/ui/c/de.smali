.class Lcom/yf/smart/weloopx/android/ui/c/de;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/dc;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/dc;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/de;->a:Lcom/yf/smart/weloopx/android/ui/c/dc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 378
    invoke-static {}, Lcom/yf/smart/weloopx/d/a;->b()Lcom/yf/smart/weloopx/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/d/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    invoke-static {}, Lcom/yf/smart/weloopx/d/a;->b()Lcom/yf/smart/weloopx/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/d/a;->i()Ljava/lang/Class;

    move-result-object v0

    .line 383
    :goto_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/de;->a:Lcom/yf/smart/weloopx/android/ui/c/dc;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/android/ui/c/dc;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 384
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/de;->a:Lcom/yf/smart/weloopx/android/ui/c/dc;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 385
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/de;->a:Lcom/yf/smart/weloopx/android/ui/c/dc;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 386
    return-void

    .line 381
    :cond_0
    const-class v0, Lcom/yf/smart/weloopx/activitys/RegisterStart;

    goto :goto_0
.end method
