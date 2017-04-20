.class Lcom/yf/smart/weloopx/android/ui/c/dl;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/dj;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/dj;)V
    .locals 0

    .prologue
    .line 847
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/dl;->a:Lcom/yf/smart/weloopx/android/ui/c/dj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 850
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dl;->a:Lcom/yf/smart/weloopx/android/ui/c/dj;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/dj;->b:Lcom/yf/smart/weloopx/android/ui/c/dc;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/dc;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/dl;->a:Lcom/yf/smart/weloopx/android/ui/c/dj;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/c/dj;->b:Lcom/yf/smart/weloopx/android/ui/c/dc;

    const v2, 0x7f0700b0

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/android/ui/c/dc;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 851
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dl;->a:Lcom/yf/smart/weloopx/android/ui/c/dj;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/dj;->b:Lcom/yf/smart/weloopx/android/ui/c/dc;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/dc;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 852
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/yf/smart/weloopx/android/ui/c/bl;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 853
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/dl;->a:Lcom/yf/smart/weloopx/android/ui/c/dj;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/c/dj;->b:Lcom/yf/smart/weloopx/android/ui/c/dc;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/c/dc;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 854
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/dl;->a:Lcom/yf/smart/weloopx/android/ui/c/dj;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/c/dj;->b:Lcom/yf/smart/weloopx/android/ui/c/dc;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/c/dc;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 856
    :cond_0
    return-void
.end method
