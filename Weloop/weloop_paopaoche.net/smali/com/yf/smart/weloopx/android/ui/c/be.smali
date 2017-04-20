.class Lcom/yf/smart/weloopx/android/ui/c/be;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/d/b$a;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/ba;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/ba;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/be;->a:Lcom/yf/smart/weloopx/android/ui/c/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 565
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OneDailyFragment onConnectStateChanged isConnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 554
    if-nez p2, :cond_0

    .line 555
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/be;->a:Lcom/yf/smart/weloopx/android/ui/c/ba;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->h(Lcom/yf/smart/weloopx/android/ui/c/ba;)Landroid/app/DialogFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/be;->a:Lcom/yf/smart/weloopx/android/ui/c/ba;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->h(Lcom/yf/smart/weloopx/android/ui/c/ba;)Landroid/app/DialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 557
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/be;->a:Lcom/yf/smart/weloopx/android/ui/c/ba;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->i(Lcom/yf/smart/weloopx/android/ui/c/ba;)V

    .line 560
    :cond_0
    return-void
.end method
