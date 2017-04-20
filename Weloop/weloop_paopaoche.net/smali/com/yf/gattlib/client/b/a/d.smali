.class public final Lcom/yf/gattlib/client/b/a/d;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(I)Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(II)Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(II)Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
