.class Landroid/support/v4/view/ax;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method static a(Landroid/view/ViewConfiguration;)Z
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    return v0
.end method
