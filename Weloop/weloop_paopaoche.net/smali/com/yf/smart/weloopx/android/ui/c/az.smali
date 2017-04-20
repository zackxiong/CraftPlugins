.class public Lcom/yf/smart/weloopx/android/ui/c/az;
.super Lcom/yf/smart/weloopx/android/ui/c/j;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/j;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/FragmentManager;Ljava/lang/String;)Landroid/app/DialogFragment;
    .locals 2

    .prologue
    .line 16
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 17
    const-string v1, "msg"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/az;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/android/ui/c/az;-><init>()V

    .line 19
    invoke-virtual {v1, v0}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 20
    const-string v0, "no_action"

    invoke-static {v1, p0, v0}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 21
    return-object v1
.end method

.method public static a(Landroid/app/FragmentManager;Ljava/lang/String;Z)Landroid/app/DialogFragment;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 26
    const-string v1, "msg"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v1, "cancelable"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 28
    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/az;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/android/ui/c/az;-><init>()V

    .line 29
    invoke-virtual {v1, v0}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 30
    const-string v0, "no_action"

    invoke-static {v1, p0, v0}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 31
    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/j;->onAttach(Landroid/app/Activity;)V

    .line 37
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/az;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/az;->c(Ljava/lang/String;)V

    .line 38
    return-void
.end method
