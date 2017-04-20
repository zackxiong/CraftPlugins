.class Lcom/yf/smart/weloopx/android/ui/c/bs;
.super Landroid/content/BroadcastReceiver;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/bl;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/bl;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/bs;->a:Lcom/yf/smart/weloopx/android/ui/c/bl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 333
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 334
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/bs;->a:Lcom/yf/smart/weloopx/android/ui/c/bl;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/c/bl;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    sget-object v1, Lcom/yf/smart/weloopx/android/ui/c/bl;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/yf/smart/weloopx/android/ui/c/bl;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u63a5\u6536\u5230\u5220\u9664\u597d\u53cb\u7684\u5e7f\u64ad\uff0c\u66f4\u65b0\u597d\u53cb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bs;->a:Lcom/yf/smart/weloopx/android/ui/c/bl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/bl;->a(Z)V

    goto :goto_0
.end method
