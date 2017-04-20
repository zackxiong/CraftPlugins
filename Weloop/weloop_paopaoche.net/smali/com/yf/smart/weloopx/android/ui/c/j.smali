.class public Lcom/yf/smart/weloopx/android/ui/c/j;
.super Lcom/yf/smart/weloopx/android/ui/c/a;
.source "ProGuard"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/c/j;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/j;->c:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected a()Landroid/view/View;
    .locals 3

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/j;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03008c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 37
    const v0, 0x7f0d018f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/j;->c:Landroid/widget/TextView;

    .line 39
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/j;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44
    :goto_0
    return-object v1

    .line 42
    :cond_0
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected a(Landroid/app/Dialog;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/j;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    .line 30
    :goto_0
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 31
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/j;->setCancelable(Z)V

    .line 32
    return-void

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/j;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "cancelable"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method protected c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/j;->b:Ljava/lang/String;

    .line 24
    return-void
.end method

.method protected d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 48
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/j;->b:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/k;

    invoke-direct {v0, p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/k;-><init>(Lcom/yf/smart/weloopx/android/ui/c/j;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/j;->a(Ljava/lang/Runnable;)V

    .line 59
    return-void
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 62
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->d()Landroid/app/Application;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 64
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
