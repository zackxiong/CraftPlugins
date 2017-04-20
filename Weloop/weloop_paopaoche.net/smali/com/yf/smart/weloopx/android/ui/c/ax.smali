.class public Lcom/yf/smart/weloopx/android/ui/c/ax;
.super Lcom/yf/smart/weloopx/android/ui/c/j;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/android/ui/c/ax$a;
    }
.end annotation


# instance fields
.field private b:Lcom/yf/smart/weloopx/data/models/UserData;

.field private c:Lcom/yf/smart/weloopx/android/ui/c/ax$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/j;-><init>()V

    .line 20
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/c/ax;)Lcom/yf/smart/weloopx/android/ui/c/ax$a;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ax;->c:Lcom/yf/smart/weloopx/android/ui/c/ax$a;

    return-object v0
.end method

.method public static a(Landroid/app/FragmentManager;)V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/ax;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/android/ui/c/ax;-><init>()V

    .line 28
    const-string v1, "logouting"

    invoke-static {v0, p0, v1}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 29
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/j;->onAttach(Landroid/app/Activity;)V

    .line 37
    const v0, 0x7f070159

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/ax;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/ax;->c(Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/yf/smart/weloopx/data/models/UserData;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/models/UserData;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ax;->b:Lcom/yf/smart/weloopx/data/models/UserData;

    .line 39
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ax;->b:Lcom/yf/smart/weloopx/data/models/UserData;

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/UserData;->setAccessToken(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ax;->b:Lcom/yf/smart/weloopx/data/models/UserData;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/UserData;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const v0, 0x7f070189

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/ax;->b(I)V

    .line 72
    :goto_0
    return-void

    .line 45
    :cond_0
    new-instance v0, Lcom/yf/smart/weloopx/g/d;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/g/d;-><init>()V

    .line 46
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/ax;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/yf/smart/weloopx/g/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/ax;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/yf/smart/weloopx/g/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/ax;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/android/ui/c/ax$a;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ax;->c:Lcom/yf/smart/weloopx/android/ui/c/ax$a;

    .line 51
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/ax;->b:Lcom/yf/smart/weloopx/data/models/UserData;

    new-instance v2, Lcom/yf/smart/weloopx/android/ui/c/ay;

    invoke-direct {v2, p0}, Lcom/yf/smart/weloopx/android/ui/c/ay;-><init>(Lcom/yf/smart/weloopx/android/ui/c/ax;)V

    invoke-virtual {v0, v1, v2}, Lcom/yf/smart/weloopx/b/c;->a(Lcom/yf/smart/weloopx/data/models/UserData;Lcom/yf/smart/weloopx/b/b/k;)V

    goto :goto_0
.end method
