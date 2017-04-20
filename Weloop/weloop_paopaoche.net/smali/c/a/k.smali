.class public Lc/a/k;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 11
    invoke-static {p0}, Lc/a/c;->a(Landroid/content/Context;)Lc/a/c;

    move-result-object v0

    const-string v1, "umeng_common_download_notification"

    invoke-virtual {v0, v1}, Lc/a/c;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
