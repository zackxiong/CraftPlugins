.class Lcom/yf/smart/weloopx/android/ui/c/br;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/bl;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/bl;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/br;->a:Lcom/yf/smart/weloopx/android/ui/c/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 306
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/br;->a:Lcom/yf/smart/weloopx/android/ui/c/bl;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/bl;->k(Lcom/yf/smart/weloopx/android/ui/c/bl;)Lcom/yf/smart/weloopx/android/ui/c/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/aw;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/br;->a:Lcom/yf/smart/weloopx/android/ui/c/bl;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/bl;->k(Lcom/yf/smart/weloopx/android/ui/c/bl;)Lcom/yf/smart/weloopx/android/ui/c/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/aw;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/br;->a:Lcom/yf/smart/weloopx/android/ui/c/bl;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/bl;->k(Lcom/yf/smart/weloopx/android/ui/c/bl;)Lcom/yf/smart/weloopx/android/ui/c/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/aw;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_1

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/br;->a:Lcom/yf/smart/weloopx/android/ui/c/bl;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/bl;->k(Lcom/yf/smart/weloopx/android/ui/c/bl;)Lcom/yf/smart/weloopx/android/ui/c/aw;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/br;->a:Lcom/yf/smart/weloopx/android/ui/c/bl;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/c/bl;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {}, Lcom/yf/smart/weloopx/android/ui/c/bl;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 310
    :cond_1
    return-void
.end method
