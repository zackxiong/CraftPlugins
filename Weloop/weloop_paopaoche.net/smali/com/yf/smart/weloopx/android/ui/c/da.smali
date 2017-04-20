.class public Lcom/yf/smart/weloopx/android/ui/c/da;
.super Lcom/yf/smart/weloopx/android/ui/c/j;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/android/ui/c/da$a;
    }
.end annotation


# instance fields
.field private b:Lcom/yf/smart/weloopx/android/ui/c/da$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/j;-><init>()V

    .line 23
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/c/da;)Lcom/yf/smart/weloopx/android/ui/c/da$a;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/da;->b:Lcom/yf/smart/weloopx/android/ui/c/da$a;

    return-object v0
.end method

.method public static a(Landroid/app/FragmentManager;Ljava/lang/String;III)V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 45
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v1, "weight"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 47
    const-string v1, "height"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 48
    const-string v1, "goal"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/da;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/android/ui/c/da;-><init>()V

    .line 50
    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/android/ui/c/da;->setArguments(Landroid/os/Bundle;)V

    .line 51
    const-string v0, "synchronize user info"

    invoke-static {v1, p0, v0}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 52
    return-void
.end method

.method public static a(Landroid/app/FragmentManager;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v0

    .line 32
    :cond_1
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/yf/smart/weloopx/b/c;->e(Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/UserData;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/UserData;->getCalorieValue()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/UserData;->getStature()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/UserData;->getWeight()I

    move-result v2

    if-lez v2, :cond_0

    .line 39
    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/UserData;->getWeight()I

    move-result v0

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/UserData;->getStature()I

    move-result v2

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/UserData;->getCalorieValue()I

    move-result v1

    invoke-static {p0, p1, v0, v2, v1}, Lcom/yf/smart/weloopx/android/ui/c/da;->a(Landroid/app/FragmentManager;Ljava/lang/String;III)V

    .line 40
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 6

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/j;->onAttach(Landroid/app/Activity;)V

    .line 59
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/da;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/android/ui/c/da$a;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/da;->b:Lcom/yf/smart/weloopx/android/ui/c/da$a;

    .line 60
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/da;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 61
    const-string v1, "message"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/c/da;->c(Ljava/lang/String;)V

    .line 62
    new-instance v1, Lcom/yf/gattlib/client/b/aq;

    new-instance v2, Lcom/yf/smart/weloopx/android/ui/c/db;

    invoke-direct {v2, p0}, Lcom/yf/smart/weloopx/android/ui/c/db;-><init>(Lcom/yf/smart/weloopx/android/ui/c/da;)V

    const-string v3, "weight"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "height"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "goal"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/yf/gattlib/client/b/aq;-><init>(Lcom/yf/gattlib/client/b/aq$a;III)V

    invoke-virtual {v1}, Lcom/yf/gattlib/client/b/aq;->f()Lcom/yf/gattlib/client/b/e;

    .line 93
    return-void
.end method
