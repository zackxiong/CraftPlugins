.class public final Lcom/yf/smart/weloopx/android/ui/e;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(Landroid/app/DialogFragment;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 60
    if-nez p0, :cond_0

    .line 68
    :goto_0
    return v0

    .line 64
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    const-string v1, "UIHelper"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 44
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/app/DialogFragment;

    if-eqz v2, :cond_1

    .line 46
    if-ne v0, p0, :cond_0

    move v0, v1

    .line 55
    :goto_0
    return v0

    .line 49
    :cond_0
    check-cast v0, Landroid/app/DialogFragment;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;)Z

    .line 51
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    const-string v1, "UIHelper"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x0

    goto :goto_0
.end method
