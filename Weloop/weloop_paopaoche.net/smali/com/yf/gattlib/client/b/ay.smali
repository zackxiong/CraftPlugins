.class public Lcom/yf/gattlib/client/b/ay;
.super Lcom/yf/gattlib/client/b/aw;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/aw;-><init>()V

    return-void
.end method


# virtual methods
.method protected c()[B
    .locals 4

    .prologue
    .line 14
    const-string v0, "H2DR"

    const/16 v1, 0x9b

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/yf/gattlib/client/j;->a(Ljava/lang/String;III)[B

    move-result-object v0

    return-object v0
.end method

.method protected q()[B
    .locals 5

    .prologue
    const/4 v0, 0x6

    const/4 v4, 0x0

    .line 20
    const/4 v1, 0x7

    new-array v2, v1, [B

    .line 21
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/gattlib/a/b;->p()Lcom/yf/gattlib/client/a/a/b;

    move-result-object v1

    .line 22
    invoke-interface {v1}, Lcom/yf/gattlib/client/a/a/b;->a()[B

    move-result-object v3

    .line 23
    array-length v1, v3

    .line 24
    if-le v1, v0, :cond_0

    .line 27
    :goto_0
    invoke-static {v3, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    invoke-static {v2}, Lcom/yf/gattlib/p/n;->a([B)V

    .line 29
    return-object v2

    :cond_0
    move v0, v1

    goto :goto_0
.end method
