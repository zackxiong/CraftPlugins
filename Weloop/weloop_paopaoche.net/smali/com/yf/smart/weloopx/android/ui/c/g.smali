.class public Lcom/yf/smart/weloopx/android/ui/c/g;
.super Landroid/app/Fragment;
.source "ProGuard"


# static fields
.field private static final a:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    const/4 v0, 0x0

    .line 25
    :try_start_0
    const-class v1, Landroid/app/Fragment;

    const-string v2, "mChildFragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 26
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    sput-object v0, Lcom/yf/smart/weloopx/android/ui/c/g;->a:Ljava/lang/reflect/Field;

    .line 31
    return-void

    .line 27
    :catch_0
    move-exception v1

    .line 28
    const-string v1, "BaseFragment"

    const-string v2, "Error getting mChildFragmentManager field"

    invoke-static {v1, v2}, Lcom/yf/gattlib/p/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 53
    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 58
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "noteStateNotSaved"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 59
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    const-string v1, "BaseFragment"

    invoke-static {v1, v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected final varargs a(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/yf/smart/weloopx/android/ui/c/g;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    const-string v0, ""

    goto :goto_0
.end method

.method protected a(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 69
    :cond_0
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/h;

    invoke-direct {v0, p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/h;-><init>(Lcom/yf/smart/weloopx/android/ui/c/g;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/g;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected c()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 115
    :try_start_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;->getParentFragment()Landroid/app/Fragment;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 120
    :goto_0
    if-eqz v0, :cond_0

    .line 130
    :goto_1
    return-object v0

    .line 125
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;->getActivity()Landroid/app/Activity;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_1

    .line 116
    :catch_0
    move-exception v1

    goto :goto_0

    .line 126
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method protected c(I)V
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 85
    :cond_0
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/i;

    invoke-direct {v0, p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/i;-><init>(Lcom/yf/smart/weloopx/android/ui/c/g;I)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/g;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected final d(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/g;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    const-string v0, ""

    goto :goto_0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 35
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 36
    sget-object v0, Lcom/yf/smart/weloopx/android/ui/c/g;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 38
    :try_start_0
    sget-object v0, Lcom/yf/smart/weloopx/android/ui/c/g;->a:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    const-string v0, "BaseFragment"

    const-string v1, "Error setting mChildFragmentManager field"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 48
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;->a()V

    .line 49
    return-void
.end method
