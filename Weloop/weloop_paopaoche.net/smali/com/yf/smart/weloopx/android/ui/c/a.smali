.class public abstract Lcom/yf/smart/weloopx/android/ui/c/a;
.super Landroid/app/DialogFragment;
.source "ProGuard"


# instance fields
.field a:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/a;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 93
    if-nez v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 98
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "noteStateNotSaved"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 99
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    const-string v1, "BaseDialogFragment"

    invoke-static {v1, v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()Landroid/view/View;
.end method

.method protected a(I)V
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/c;

    invoke-direct {v0, p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/c;-><init>(Lcom/yf/smart/weloopx/android/ui/c/a;I)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/a;->a(Ljava/lang/Runnable;)V

    .line 146
    return-void
.end method

.method protected a(Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method protected a(Landroid/view/Window;)V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    return-void
.end method

.method protected a(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected a_(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 108
    :try_start_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/a;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 110
    if-nez v0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/b;

    invoke-direct {v1, p0, v0, p1}, Lcom/yf/smart/weloopx/android/ui/c/b;-><init>(Lcom/yf/smart/weloopx/android/ui/c/a;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/d;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/c/d;-><init>(Lcom/yf/smart/weloopx/android/ui/c/a;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/a;->a(Ljava/lang/Runnable;)V

    .line 162
    return-void
.end method

.method protected b(I)V
    .locals 1

    .prologue
    .line 184
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/f;

    invoke-direct {v0, p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/f;-><init>(Lcom/yf/smart/weloopx/android/ui/c/a;I)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/a;->a(Ljava/lang/Runnable;)V

    .line 200
    return-void
.end method

.method protected b(Landroid/view/Window;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 53
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 55
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 56
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 58
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/e;

    invoke-direct {v0, p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/e;-><init>(Lcom/yf/smart/weloopx/android/ui/c/a;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/a;->a(Ljava/lang/Runnable;)V

    .line 181
    return-void
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
    .line 211
    const/4 v0, 0x0

    .line 213
    :try_start_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/a;->getParentFragment()Landroid/app/Fragment;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 218
    :goto_0
    if-eqz v0, :cond_0

    .line 228
    :goto_1
    return-object v0

    .line 223
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/a;->getActivity()Landroid/app/Activity;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_1

    .line 214
    :catch_0
    move-exception v1

    goto :goto_0

    .line 224
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method protected final c(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/a;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 235
    :goto_0
    return-object v0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    const-string v0, ""

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 240
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->d()Landroid/app/Application;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 242
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 243
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

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 39
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/a;->a:Landroid/app/Activity;

    .line 40
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/a;->a()Landroid/view/View;

    move-result-object v1

    .line 64
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 66
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 73
    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/android/ui/c/a;->a(Landroid/view/Window;)V

    .line 75
    invoke-virtual {v2, v1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 76
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 77
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/a;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 78
    if-eqz v1, :cond_0

    .line 79
    const-string v2, "cancelable"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/c/a;->setCancelable(Z)V

    .line 81
    :cond_0
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/a;->a(Landroid/app/Dialog;)V

    .line 82
    :goto_0
    return-object v0

    .line 67
    :catch_0
    move-exception v1

    .line 68
    const-string v2, "BaseDialogFragment"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 88
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/a;->e()V

    .line 89
    return-void
.end method
