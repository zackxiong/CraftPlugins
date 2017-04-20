.class public Lcom/yf/gattlib/server/a/b/e;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(BBBB[B)[B
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 10
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 11
    aput-byte p0, v0, v2

    .line 12
    const/4 v1, 0x1

    aput-byte p1, v0, v1

    .line 13
    const/4 v1, 0x2

    aput-byte p2, v0, v1

    .line 14
    const/4 v1, 0x3

    aput-byte p3, v0, v1

    .line 15
    invoke-static {p4, v2, v0, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    return-object v0
.end method
