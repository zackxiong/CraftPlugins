.class public Lcom/yf/smart/weloopx/android/ui/c/ca;
.super Lcom/yf/smart/weloopx/android/ui/c/j;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/android/ui/c/ca$a;
    }
.end annotation


# instance fields
.field private b:Lcom/yf/smart/weloopx/android/ui/c/ca$a;

.field private c:Z

.field private d:Lcom/yf/gattlib/client/b/a/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/j;-><init>()V

    .line 48
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/cb;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/c/cb;-><init>(Lcom/yf/smart/weloopx/android/ui/c/ca;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ca;->d:Lcom/yf/gattlib/client/b/a/c;

    return-void
.end method

.method public static a(Landroid/app/FragmentManager;Z)V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 24
    const-string v1, "recovery"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 25
    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/ca;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/android/ui/c/ca;-><init>()V

    .line 26
    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/android/ui/c/ca;->setArguments(Landroid/os/Bundle;)V

    .line 27
    const-string v0, "restart"

    invoke-static {v1, p0, v0}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 28
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/c/ca;)Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ca;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/c/ca;)Lcom/yf/smart/weloopx/android/ui/c/ca$a;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ca;->b:Lcom/yf/smart/weloopx/android/ui/c/ca$a;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 71
    const v0, 0x7f0701e9

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/ca;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/ca;->d(Ljava/lang/String;)V

    .line 72
    new-instance v0, Lcom/yf/gattlib/client/b/ag;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yf/gattlib/client/b/ag;-><init>(B)V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/ca;->d:Lcom/yf/gattlib/client/b/a/c;

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/client/b/ag;->b(Lcom/yf/gattlib/client/b/a/c;)Lcom/yf/gattlib/client/b/e;

    .line 73
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 76
    const v0, 0x7f0701d5

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/ca;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/ca;->d(Ljava/lang/String;)V

    .line 77
    new-instance v0, Lcom/yf/gattlib/client/b/ag;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/yf/gattlib/client/b/ag;-><init>(B)V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/ca;->d:Lcom/yf/gattlib/client/b/a/c;

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/client/b/ag;->b(Lcom/yf/gattlib/client/b/a/c;)Lcom/yf/gattlib/client/b/e;

    .line 78
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/j;->onAttach(Landroid/app/Activity;)V

    .line 39
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/ca;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/android/ui/c/ca$a;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ca;->b:Lcom/yf/smart/weloopx/android/ui/c/ca$a;

    .line 40
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/ca;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "recovery"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ca;->c:Z

    .line 41
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ca;->c:Z

    if-eqz v0, :cond_0

    .line 42
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/ca;->f()V

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/ca;->e()V

    goto :goto_0
.end method
